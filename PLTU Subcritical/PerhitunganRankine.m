clc
%clear all

V1 = 0.00101;       %volume jenis air pompa cep (m3/kg)
P1 = 8.34;          %tekanan steam keluar condenser (kPA)
P2 = 2000;          %tekanan steam keluar pompa cep (kPA)

V3 = 0.00113;       %volume jenis air pompa bfp (m3/kg)
P3 = 833;           %tekanan steam keluar daerator (kPA)
P4 = 20820;         %tekanan steam keluar pompa bfp (kPA)

M1 = 463;           %aliran massa steam ke Pipa CEP (kg/s)
M2 = 463;           %aliran massa steam Pipa CEP ke Daerator (kg/s)
M3 = 587;           %aliran massa steam ke Pipa BFP (kg/s)
M5 = 587;           %aliran massa steam Pipa BFP ke Boiler (kg/s)
M6 = 603;           %aliran massa steam ke HP Turbin (kg/s)
M7 = 497;           %aliran massa steam ke Reheater (kg/s)
M8 = 497;           %aliran massa steam ke IP Turbin (kg/s)
M9 = 463;           %aliran massa steam ke LP Turbin (kg/s)
M10 = 380;          %aliran massa perubahan fase air kondensat ke Condenser (kg/s)
M11 = 47.50;        %aliran massa extraction steam dari IP Turbin ke Daerator (kg/s)

H1 = 177.15;        %enthalpy steam ke Pipa CEP (kJ/kg)
H3 = 727.97;        %enthalpy steam ke Pipa BFP (kJ/kg)
H5 = 1270.63;       %enthalpy steam Pipa BFP ke Boiler (kJ/kg)
H6 = 3398.62;       %enthalpy steam ke HP Turbin (kJ/kg)
H7 = 3038.70;       %enthalpy steam ke Reheater (kJ/kg)
H8 = 3537.17;       %enthalpy steam ke IP Turbin (kJ/kg)
H9 = 3117.02;       %enthalpy steam ke LP Turbin (kJ/kg)
H11 = 3107.63;      %enthalpy extraction steam dari IP Turbin ke Daerator (kJ/kg)
Hg10 = 2600.72;     %enthalpy fase uap air kondensat ke Condenser (kJ/kg)
Hf10 = 231.70;      %enthalpy fase cair air kondensat ke Condenser (kJ/kg)
Hfg10 = 2369.02;    %enthalpy perubahan fase air kondensat ke Condenser (kJ/kg)

S6 = 6.42;          %enthropy steam ke HP Turbin (kJ/kg.K)
S7 = S6;            %enthropy steam ke Reheater (kJ/kg.K)
S8 = 7.26;          %enthropy steam ke IP Turbin (kJ/kg.K)
S9 = S8;            %enthropy steam ke LP Turbin (kJ/kg.K)
S10 = S8;           %enthropy air kondensat ke Condenser (kJ/kg.K)
Sg10 = 7.98;        %enthropy fase uap air kondensat ke Condenser (kJ/kg.K)
Sf10 = 0.77;        %enthropy fase cair air kondensat ke Condenser (kJ/kg.K)
Sfg10 = 7.21;       %enthropy perubahan fase air kondensat ke Condenser (kJ/kg.K)

%Fraksi Air kondensat ke Condenser
X10 = (S10-Sf10)/Sfg10;     
H10 = (X10*Hfg10)+Hf10;    

%Kerja Power Turbin
Wturbin = (H6-H7)+(H8-H10)-(H8-H11)

%Daya Turbin
Pturbin = ((M6*(H6-H7))+(M8*(H8-H9))-(M11*H11)+(M9*(H9-H10)))/1000

%Kerja Pompa CEP
Wcep = V1*(P2-P1)

%Kerja Pompa BFP
Wbfp = V3*(P4-P3)

%Kerja Pompa Total
Wpompatotal = Wcep+Wbfp

%Daya Pompa CEP
Pcep = Wcep*M2/1000
H2 = H1+Wcep;

%Daya Pompa BFP
Pbfp = Wbfp*M3/1000
H4 = H3+Wbfp;

%Daya Pompa Total
Ppompatotal = Pcep+2*Pbfp

%Daya Turbin Nett
Pturbinnett = Pturbin-Ppompatotal

%Kalor yang dibuang condenser
Qout = H10-H1

%Daya condenser untuk membuang kalor
Pcondenser = ((M10*H10)-(M1*H1))/1000

%Kalor yang masuk ke sistem
Qin = (H6-H5)+(H8-H7)-(H8-H11)

%Daya yang dihasilkan Boiler
Pboiler = (((M6*H6)-(M5*H5))+((M8*H8)-(M7*H7)))/1000

%Effisiensi Thermal siklus rankine
EffThermal = (Wturbin-Wpompatotal)/Qin*100
