close all

%NLOP = 1;
NFFT = 256;      % Number of FFT points
NC   = 192;      % Number of subcarriers
NP   = 8;        % Number of pilots in symbol -88 -63 -38 -13 13 38 63 88
CP   = 32;       % cyclic prefix length
PRE  = 2;        % preamble symbol = 2
% Read data in ============================================================

datin_fid = fopen('OFDM_TX_bit_symbols.txt', 'r');
bit_symbols = fscanf(datin_fid, '%d ');
fclose(datin_fid);

datin_fid = fopen('OFDM_TX_bit_symbols_Len.txt', 'r');
para = fscanf(datin_fid, '%d ');
Len  = para(1);
NLOP = para(2);
fclose(datin_fid);
% Read data out of RTL ====================================================
datout_fid = fopen('RTL_OFDM_TX_datout_Re.txt', 'r');
Datout_Re_rtl = fscanf(datout_fid, '%d ');
fclose(datout_fid);
datout_fid = fopen('RTL_OFDM_TX_datout_Im.txt', 'r');
Datout_Im_rtl = fscanf(datout_fid, '%d ');
fclose(datout_fid);
Datout_rtl = (Datout_Re_rtl./2^15) + 1i*(Datout_Im_rtl./2^15);

datout_fid = fopen('RTL_OFDM_TX_Pilots_Insert_Re.txt', 'r');
Pilots_Insert_Re_rtl = fscanf(datout_fid, '%d ');
fclose(datout_fid);
datout_fid = fopen('RTL_OFDM_TX_Pilots_Insert_Im.txt', 'r');
Pilots_Insert_Im_rtl = fscanf(datout_fid, '%d ');
fclose(datout_fid);
Pilots_Insert_rtl = (Pilots_Insert_Re_rtl./2^15) + 1i*(Pilots_Insert_Im_rtl./2^15);

datout_fid = fopen('RTL_OFDM_TX_IFFT_Mod_Re.txt', 'r');
IFFT_Mod_Re_rtl = fscanf(datout_fid, '%d ');
fclose(datout_fid);
datout_fid = fopen('RTL_OFDM_TX_IFFT_Mod_Im.txt', 'r');
IFFT_Mod_Im_rtl = fscanf(datout_fid, '%d ');
fclose(datout_fid);
IFFT_Mod_rtl = (IFFT_Mod_Re_rtl./2^15) + 1i*(IFFT_Mod_Im_rtl./2^15);

% Simulate with data in ===================================================
%Len = length(bit_symbols);
NDS = Len / NC;
NS   = NDS*NLOP;
bit_symbols = reshape(bit_symbols,NC,NS);
%QPSK =====================================================================
QPSK = 1- 2.*mod(bit_symbols,2) + 1i *(1- 2.*floor(bit_symbols/2));

%insert subcarriers & pilots ==============================================
% pilot ===================================================================
Pil = Pilots(NDS);
Pil = repmat(Pil,1,NLOP);
symbol = [ zeros(1,NS); QPSK(1  :12, :);  ...
              Pil(1,:); QPSK(13 :36, :); ...
              Pil(2,:); QPSK(37 :60, :); ...
              Pil(3,:); QPSK(61 :84, :); ...
              Pil(4,:); QPSK(85 :96, :); ...
           zeros(NFFT-NC-NP-1,NS); ...
                        QPSK(97 :108,:); ...    
              Pil(5,:); QPSK(109:132,:); ...
              Pil(6,:); QPSK(133:156,:); ...
              Pil(7,:); QPSK(157:180,:); ...
              Pil(8,:); QPSK(181:192,:); ];
Pilots_Insert_sim = reshape(symbol, 1, NFFT*NS);
%IFFT =================================================================
tx_d =  ifft(symbol, NFFT);

%Add CP ===============================================================
tx_d = [tx_d(NFFT-CP+1: NFFT,:); tx_d];

IFFT_Mod_sim = reshape(tx_d, 1, (NFFT+CP)*NS);
%Add Preamble =========================================================
tx_out = zeros((NFFT+CP), (PRE + NDS)*NLOP);

[DL_preamble, UL_preamble, pre64, pre128, peven] = preamble_802_16();   
DL_preamble_nor = DL_preamble; 
preamb = reshape(DL_preamble_nor, NFFT+CP, PRE);
for ii = 0:NLOP -1,
    tx_out(:,(PRE + NDS)*ii+1) = preamb(:,1);
    tx_out(:,(PRE + NDS)*ii+2) = preamb(:,2);
    if (NDS ~=0 )
        for jj = 1:NDS,
            tx_out(:,(PRE + NDS)*ii+2+jj) = tx_d(:,ii*NDS+jj);            
        end
    end
end
Datout_sim = reshape(tx_out, 1, (NFFT+CP)*(PRE + NDS)*NLOP);

% Plotting ================================================================
figure(1);
plot(1:length(Pilots_Insert_sim), real(Pilots_Insert_sim),'o-b');
hold on
plot(1:length(Pilots_Insert_rtl), real(Pilots_Insert_rtl),'x-r');
ylim([-3 3]);
title('comparison of Pilots_Insert output');
legend('Pilots\_Insertz\sim','Pilots\_Insert\_rtl');

figure(2);
plot(1:length(IFFT_Mod_sim), imag(IFFT_Mod_sim),'o-b');
hold on
plot(1:length(IFFT_Mod_rtl), imag(IFFT_Mod_rtl),'x-r');
title('comparison of IFFT_Mod output');
legend('IFFT\_Mod\_sim','IFFT\_Mod\_rtl');

figure(3);
plot(1:length(Datout_sim), real(Datout_sim),'o-b');
hold on
plot(1:length(Datout_rtl), real(Datout_rtl),'x-r');
title('comparison of Data output of transmitter');
legend('Datout\_sim','Datout\_rtl');

