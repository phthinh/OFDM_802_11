close all

%NLOP = 1;
NFFT = 64;      % Number of FFT points
NC   = 48;      % Number of subcarriers
NP   = 4;       % Number of pilots in symbol –21, –7, 7, and 21
CP   = 16;      % cyclic prefix length
PRE  = 4;       % preamble symbol = 4
% Read data in ============================================================

datin_fid = fopen('OFDM_TX_bit_symbols.txt', 'r');
bit_symbols = fscanf(datin_fid, '%d ');
fclose(datin_fid);

datin_fid = fopen('OFDM_TX_bit_symbols_Len.txt', 'r');
para = fscanf(datin_fid, '%d ');
Len  = para(1);
NLOP = para(2);
fclose(datin_fid);
%Read data out of RTL ====================================================
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
pilots_802_11;
Pil = repmat(pils(:,1:NDS),1,NLOP);
symbol = zeros(NFFT,NS);
symbol(1,:)     = zeros(1,NS);
symbol(2:7,:)   = QPSK(1:6, :);
symbol(8,:)     = Pil(1,NS);
symbol(9:21,:)  = QPSK(7:19, :);
symbol(22,:)    = Pil(2,NS);
symbol(23:27,:) = QPSK(20:24, :);
symbol(39:43,:) = QPSK(25:29, :);
symbol(44,:)    = Pil(3,NS);
symbol(45:57,:) = QPSK(30:42, :);
symbol(58,:)    = Pil(4,NS);
symbol(59:64,:) = QPSK(43:48, :);
Pilots_Insert_sim = reshape(symbol, 1, NFFT*NS);
%IFFT =================================================================
tx_d =  ifft(symbol, NFFT);

%Add CP ===============================================================
tx_d = [tx_d(NFFT-CP+1: NFFT,:); tx_d];

IFFT_Mod_sim = reshape(tx_d, 1, (NFFT+CP)*NS);
%Add Preamble =========================================================
tx_out = zeros((NFFT+CP), (PRE + NDS)*NLOP);

preamble_802_11;   
preamble_nor = [short_pre long_pre]; 
preamb = reshape(preamble_nor, NFFT+CP, PRE);
for ii = 0:NLOP -1,
    for jj = 1:PRE,
        tx_out(:,(PRE + NDS)*ii+jj) = preamb(:,jj);                  
    end
    if (NDS ~=0 )
        for jj = 1:NDS,
            tx_out(:,(PRE + NDS)*ii+PRE+jj) = tx_d(:,ii*NDS+jj);            
        end
    end
end
Datout_sim = reshape(tx_out, 1, (NFFT+CP)*(PRE + NDS)*NLOP);

% Plotting ================================================================
figure(1);
plot(1:length(Pilots_Insert_sim), imag(Pilots_Insert_sim),'o-b');
hold on
plot(1:length(Pilots_Insert_rtl), imag(Pilots_Insert_rtl),'x-r');
ylim([-3 3]);
title('comparison of Pilots\_Insert output');
legend('Pilots\_Insert\_sim','Pilots\_Insert\_rtl');

figure(2);
plot(1:length(IFFT_Mod_sim), imag(IFFT_Mod_sim),'o-b');
hold on
plot(1:length(IFFT_Mod_rtl), imag(IFFT_Mod_rtl),'x-r');
title('comparison of IFFT\_Mod output');
legend('IFFT\_Mod\_sim','IFFT\_Mod\_rtl');

figure(3);
plot(1:length(Datout_sim), real(Datout_sim),'o-b');
hold on
plot(1:length(Datout_rtl), real(Datout_rtl),'x-r');
title('comparison of Data output of transmitter');
legend('Datout\_sim','Datout\_rtl');

