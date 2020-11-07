clc
%clear all

global Target
global Population
global Generation
global Mutation
global Crossover
global GCVfuel
global Power1
global Power2
global Power3
global Power4
global Power5
global PressWater1
global PressWater2
global PressWater3
global PressWater4
global PressWater5
global PressSteam1
global PressSteam2
global PressSteam3
global PressSteam4
global PressSteam5
global PressReheater1
global PressReheater2
global PressReheater3
global PressReheater4
global PressReheater5

setting = str2num(Target);
populasi = str2num(Population);
generation = str2num(Generation);
mutasi = str2num(Mutation);
crossover = str2num(Crossover);
gcv = str2num(GCVfuel);
power1 = str2num(Power1);
power2 = str2num(Power2);
power3 = str2num(Power3);
power4 = str2num(Power4);
power5 = str2num(Power5);
water1 = str2num(PressWater1);
water2 = str2num(PressWater2);
water3 = str2num(PressWater3);
water4 = str2num(PressWater4);
water5 = str2num(PressWater5);
steam1 = str2num(PressSteam1);
steam2 = str2num(PressSteam2);
steam3 = str2num(PressSteam3);
steam4 = str2num(PressSteam4);
steam5 = str2num(PressSteam5);
reheater1 = str2num(PressReheater1);
reheater2 = str2num(PressReheater2);
reheater3 = str2num(PressReheater3);
reheater4 = str2num(PressReheater4);
reheater5 = str2num(PressReheater5);

Mass2 = 57.2;          %aliran massa ekstraksi high pressure turbin1 (kg/s)
Mass3 = 550.06;        %aliran massa outlet high pressure turbin (kg/s)
Mass4 = 41.48;         %aliran massa ekstraksi high pressure turbin2 (kg/s)
Mass5 = 508.8;         %aliran massa inlet reheater steam (kg/s)
Mass6 = 508.8;         %aliran massa outlet reheater steam (kg/s)
Mass7 = 33.16;         %aliran massa ekstraksi intermediate pressure turbin1 (kg/s)
Mass8 = 22.23;         %aliran massa ekstraksi intermediate pressure turbin2 (kg/s)
Mass9 = 58.53;         %aliran massa ekstraksi intermediate pressure turbin3 (kg/s)
Mass10 = 22.23;        %aliran massa inlet condenser1 (kg/s)
Mass11 = 394.66;       %aliran massa outlet intermediate pressure turbin (kg/s)
Mass12 = 16.67;        %aliran massa ekstraksi low pressure turbin1 (kg/s)
Mass13 = 23.89;        %aliran massa ekstraksi low pressure turbin2 (kg/s)
Mass14 = 10.15;        %aliran massa ekstraksi low pressure turbin3 (kg/s)
Mass15 = 343.95;       %aliran massa inlet condenser2 (kg/s)
Mass16 = 416.89;       %aliran massa outlet condenser (kg/s)
Mass17 = 416.89;       %aliran massa inlet low pressure heater1 (kg/s)
Mass18 = 416.89;       %aliran massa outlet low pressure heater1 (kg/s)
Mass19 = 416.89;       %aliran massa outlet low pressure heater2 (kg/s)
Mass20 = 416.89;       %aliran massa outlet low pressure heater3 (kg/s)
Mass21 = 607.26;       %aliran massa outlet daerator (kg/s)
Mass22 = 5.7;          %aliran massa inlet daerator (kg/s)
Mass23 = 601.56;       %aliran massa inlet high pressure heater5 (kg/s)
Mass24 = 601.56;       %aliran massa outlet high pressure heater5 (kg/s)
Mass25 = 601.56;       %aliran massa outlet high pressure heater6 (kg/s)
Mass26 = 601.56;       %aliran massa outlet feedwater (kg/s)
Mass27 = 57.2;         %aliran massa drain inlet high pressure heater6 (kg/s)
Mass28 = 98.67;        %aliran massa drain inlet high pressure heater5 (kg/s)
Mass29 = 131.84;       %aliran massa drain inlet daerator (kg/s)
Mass30 = 16.67;        %aliran massa drain inlet low pressure heater2 (kg/s)
Mass31 = 40.56;        %aliran massa drain inlet low pressure heater1 (kg/s)
Mass32 = 50.71;        %aliran massa ekstraksi outlet low pressure heater1 (kg/s)

Press1 = 166.92;                             %tekanan main steam (bar)
Press2 = (Press1-((56.65/100)*Press1));      %tekanan ekstraksi high pressure turbin1 (bar)
Press3 = (Press1-((75.85/100)*Press1));      %tekanan outlet high pressure turbin (bar)
Press4 = (Press3-((1.16/100)*Press3));       %tekanan ekstraksi high pressure turbin2 (bar)
Press5 = Press3;                             %tekanan inlet reheater steam (bar)
Press6 = 36.63;                              %tekanan outlet reheater steam (bar)
Press7 = (Press6-((45.45/100)*Press6));      %tekanan ekstraksi intermediate pressure turbin1 (bar)
Press8 = (Press6-((78.76/100)*Press6));      %tekanan ekstraksi intermediate pressure turbin2 (bar)
Press9 = Press8;                             %tekanan ekstraksi intermediate pressure turbin3 (bar)
Press11 = Press9;                            %tekanan outlet intermediate pressure turbin (bar)
Press10 = (Press11-((98.97/100)*Press11));   %tekanan inlet condenser1 (bar)
Press12 = (Press11-((85.73/100)*Press11));   %tekanan ekstraksi low pressure turbin1 (bar)
Press13 = (Press11-((85.98/100)*Press11));   %tekanan ekstraksi low pressure turbin2 (bar)
Press14 = (Press11-((97.04/100)*Press11));   %tekanan ekstraksi low pressure turbin3 (bar)
Press15 = (Press11-((97.78/100)*Press11));   %tekanan inlet condenser2 (bar)
Press16 = (Press10-((12.5/100)*Press10));    %tekanan outlet condenser (bar)
Press17 = (Press16+((29080/100)*Press16));   %tekanan inlet low pressure heater1 (bar)
Press18 = (Press17-((99.02/100)*Press17));   %tekanan outlet low pressure heater1 (bar)
Press19 = (Press18+((340/100)*Press18));     %tekanan outlet low pressure heater2 (bar)
Press20 = (Press19+((742.04/100)*Press19));  %tekanan outlet low pressure heater3 (bar)
Press21 = (Press9-((1.92/100)*Press9));      %tekanan outlet daerator (bar)
Press22 = (Press21+((2585.05/100)*Press21)); %tekanan inlet daerator (bar)
Press23 = Press22;                           %tekanan inlet high pressure heater5 (bar)
Press24 = (Press23-((89.81/100)*Press23));   %tekanan outlet high pressure heater5 (bar)
Press25 = (Press24+((85.52/100)*Press24));   %tekanan outlet high pressure heater6 (bar)
Press26 = 188.06;                            %tekanan outlet feedwater (bar)
Press27 = (Press2-((39.57/100)*Press2));     %tekanan drain inlet high pressure heater6 (bar)
Press28 = (Press4-((42.59/100)*Press4));     %tekanan drain inlet high pressure heater5 (bar)
Press29 = (Press7-((51.7/100)*Press7));      %tekanan drain inlet daerator (bar)
Press30 = (Press12-((1.8/100)*Press12));     %tekanan drain inlet low pressure heater2 (bar)
Press31 = (Press13-((77.06/100)*Press13));   %tekanan drain inlet low pressure heater1 (bar)
Press32 = (Press14-((52.17/100)*Press14));   %tekanan ekstraksi outlet low pressure heater1 (bar)

dataY1 = 100;
dataY2 = 1000;
DataVariasi = 5;
dataX1 = power1/1000;
dataX2 = power5/1000;
dataX3 = steam1-10;
dataX4 = steam5+10;
Setting = setting/100;

%Inisialisasi Grafik Hasil Optimasi Effisiensi Boiler & Thermal Thd Daya
hfig1 = figure;
hold on
title('Hasil Optimasi GA Effisiensi Boiler & Thermal')
set(hfig1, 'position', [1000,250,550,400]);
set(hfig1, 'DoubleBuffer', 'on');
axis([(dataX1-5) (dataX2+5) 0 dataY1]);
Effplot1 = plot(zeros(1,DataVariasi),zeros(1,DataVariasi));
Effplot2 = plot(zeros(1,DataVariasi),zeros(1,DataVariasi));
htext1 = text(10+dataX1,0.3*dataY1,sprintf('Biru ~ Effisiensi Boiler %3.2f', 0.00));
htext2 = text(10+dataX1,0.2*dataY1,sprintf('Hijau ~ Effisiensi Thermal %3.2f', 0.00));
xlabel('Power (MW)');
ylabel('Efficiency (%)');
hold off
drawnow;

%Inisialisasi Grafik Perbandingan Hasil Data & Optimasi GA Terhadap Effisiensi Thermal Thd Tekanan
hfig2 = figure;
hold on
title('Perbandingan Hasil Data & Optimasi GA Terhadap Effisiensi Thermal')
set(hfig2, 'position', [1000,250,550,400]);
set(hfig2, 'DoubleBuffer', 'on');
axis([dataX3 dataX4 0 dataY1]);
Effplot3 = plot(zeros(1,DataVariasi),zeros(1,DataVariasi));
Effplot4 = plot(zeros(1,DataVariasi),zeros(1,DataVariasi));
htext3 = text(25+dataX3,0.3*dataY1,sprintf('Hijau ~ Effisiensi Thermal GA %3.2f', 0.00));
htext4 = text(25+dataX3,0.2*dataY1,sprintf('Merah ~ Effisiensi Thermal Data %3.2f', 0.00));
xlabel('Pressure Steam (Bar)');
ylabel('Efficiency (%)');
hold off
drawnow;

%Inisialisasi Grafik Perbandingan Hasil Data & Optimasi GA Terhadap Effisiensi Boiler Thd Tekanan
hfig3 = figure;
hold on
title('Perbandingan Hasil Data & Optimasi GA Terhadap Effisiensi Boiler')
set(hfig3, 'position', [1000,250,550,400]);
set(hfig3, 'DoubleBuffer', 'on');
axis([dataX3 dataX4 0 dataY1]);
Effplot5 = plot(zeros(1,DataVariasi),zeros(1,DataVariasi));
Effplot6 = plot(zeros(1,DataVariasi),zeros(1,DataVariasi));
htext5 = text(25+dataX3,0.3*dataY1,sprintf('Hijau ~ Effisiensi Boiler GA %3.2f', 0.00));
htext6 = text(25+dataX3,0.2*dataY1,sprintf('Merah ~ Effisiensi Boiler Data %3.2f', 0.00));
xlabel('Pressure Steam (Bar)');
ylabel('Efficiency (%)');
hold off
drawnow;

%Inisialisasi Grafik Suhu Steam Terhadap Daya
hfig4 = figure;
hold on
title('Hasil Optimasi GA Suhu Steam Terhadap Daya')
set(hfig4, 'position', [1000,250,550,400]);
set(hfig4, 'DoubleBuffer', 'on');
axis([(dataX1-5) (dataX2+5) 300 800]);
Tempplot = plot(zeros(1,DataVariasi),zeros(1,DataVariasi));
xlabel('Power (MW)');
ylabel('Suhu Steam (Celcius)');
hold off
drawnow;

%Inisialisasi Grafik Aliran Massa Steam Terhadap Daya
hfig5 = figure;
hold on
title('Hasil Optimasi GA Aliran Massa Terhadap Daya')
set(hfig5, 'position', [1000,250,550,400]);
set(hfig5, 'DoubleBuffer', 'on');
axis([(dataX1-5) (dataX2+5) 0 1000]);
Flowplot = plot(zeros(1,DataVariasi),zeros(1,DataVariasi));
xlabel('Power (MW)');
ylabel('Mass Flow (Kg/s)');
hold off
drawnow;

%Inisialisasi Grafik Daya Output Pembangkitan
hfig6 = figure;
hold on
title('Daya Output Pembangkitan')
set(hfig6, 'position', [1000,350,400,300]);
set(hfig6, 'DoubleBuffer', 'on');
axis([0.5 DataVariasi 0 dataY2]);
Powerplot = plot(1:DataVariasi,zeros(1,DataVariasi));
xlabel('Banyak Daya Di Bangkitkan');
ylabel('Power (MW)');
hold off
drawnow;

%Mulai Perhitungan Optimasi Data Dengan GA
for Loop=1:DataVariasi,
    
    PowerGenerator = updatePower(Loop,power1,power2,power3,power4,power5);
    PressWater = updatePressWater(Loop,water1,water2,water3,water4,water5);
    PressSteam = updatePressSteam(Loop,steam1,steam2,steam3,steam4,steam5);
    PressReheater = updatePressReheater(Loop,reheater1,reheater2,reheater3,reheater4,reheater5);
    
    GCV = gcv*4.2;
    Daya = PowerGenerator/1000;

    Nvar = 3;                      %jml kromosom/variabel yang dibangkitkan di GA
    Nbit = 20;                     %maks nilai bit variabel yg diubah ke biner
    JumGen = Nbit*Nvar;            %jml gen dlm satu populasi
    AntiKonvergensi = 10^-1;       %agar tdk terjadi konvergensi dini/nilai fitness tetap

    if ((steam1 ~= steam2) && (steam1 ~= steam5)),
        batasAtasHs = updatebatasHs1(PressSteam);       %batas tertinggi pembangkitan Hs di GA
        batasAtasHr = updatebatasHw1(PressSteam);       %batas tertinggi pembangkitan Hr di GA
    else
        batasAtasHs = updatebatasHs2(PowerGenerator);   %batas tertinggi pembangkitan Hs di GA
        batasAtasHr = updatebatasHw2(PowerGenerator);   %batas tertinggi pembangkitan Hw di GA
    end
    batasAtasHw = 1304.4;          %batas tertinggi pembangkitan Hw di GA
    batasBawahHs = 3165.9;         %batas terendah pembangkitan Hs di GA
    batasBawahHw = 1133.8;         %batas terendah pembangkitan Hw di GA
    batasBawahHr = 3317.0;         %batas terendah pembangkitan Hr di GA

    Psilang = crossover/100;       %prob terjadinya pindah-silang pada skala 1
    Pmutasi = mutasi/100;          %prob terjadinya mutasi pada skala 1
    MaxG = generation;             %jml iterasi generasi yang dilakukan
    UkPop = populasi;              %jml populasi dalam 1 generasi saat iterasi

    %Inisialisasi Grafik Fitness Terhadap Generasi
    hfig7 = figure;
    hold on
    title('Nilai Fitness Per Generasi')
    set(hfig7, 'position', [1000,250,550,400]);
    set(hfig7, 'DoubleBuffer', 'on');
    axis([1 MaxG 0 10]);
    hbestplot = plot(1:MaxG,zeros(1,MaxG));
    htextA = text(0.6*MaxG,9.0,sprintf('Fitness Terbaik: %1.4f', 0.0));
    htextB = text(0.6*MaxG,8.5,sprintf('Variabel Hw: %7.2f', 0.0));
    htextC = text(0.6*MaxG,8.0,sprintf('Variabel Hs: %7.2f', 0.0));
    htextD = text(0.6*MaxG,7.5,sprintf('Variabel Hr: %7.2f', 0.0));
    xlabel('Generasi');
    ylabel('Nilai Fitness');
    hold off
    drawnow;
    
    Populasi = InisialisasiPopulasi(UkPop,JumGen);
    %Membuat populasi dalam bil.biner yang terdiri dari 3 kromosom
    %sebanyak UkPop

    for generasi=1:MaxG, 
    %Melakukan iterasi generasi sebanyak MaxG yang satu generasi
    %memiliki suatu populasi sebanyak UkPop         
        
        x = DekodekanKromosom(Populasi(1,:),Nvar,Nbit,batasAtasHs,batasBawahHs,batasAtasHw,batasBawahHw,batasAtasHr,batasBawahHr); 
        %Mengubah nilai setiap kromosom pada populasi ke-1 menjadi nilai 
        %Hs, Hw, dan Hr
        Fitness(1) = EvaluasiIndividu2(x,AntiKonvergensi,PowerGenerator);
        %Memberi nilai suatu populasi ke-1 berdasarkan hasil nilai dari
        %fitnessnya
        MaxF = Fitness(1);
        %Menjadikan populasi ke-1 memiliki fitness tertinggi (sementara)
        MinF = Fitness(1);
        %Menjadikan populasi ke-1 memiliki fitness terendah (sementara)        
        IndeksIndividuTerbaik = 1;
        %Menjadikan populasi ke-1 terdiri dari kromosom terbaik dgn fitness
        %tertinggi (sementara)
        
        for ii=2:UkPop,
            Kromosom = Populasi(ii,:);
            x = DekodekanKromosom(Kromosom,Nvar,Nbit,batasAtasHs,batasBawahHs,batasAtasHw,batasBawahHw,batasAtasHr,batasBawahHr);
            Fitness(ii) = EvaluasiIndividu2(x,AntiKonvergensi,PowerGenerator);
            %Melakukan kondisi yang sama dengan populasi ke-1 untuk
            %populasi ke-2 dst sesuai banyaknya jumlah populasi pada UkPop
            
            if (Fitness(ii)>MaxF),
                MaxF = Fitness(ii);
                IndeksIndividuTerbaik = ii;
                BestX = x;
                %Membandingkan nilai fitness tertinggi antar semua populasi
                %agar diketahui nilai kromosom terbaiknya dan mengambil 
                %nilai setiap kromosom terbaik
            end
            if (Fitness(ii)<MinF),
                MinF = Fitness(ii);
                %Membandingkan nilai fitness terendah antar semua populasi 
                %agar diketahui nilai kromosom terjeleknya
            end
        end

        %Grafik Fitness Terhadap Generasi
        fitness = MaxF*10^3;
        plotvector = get(hbestplot,'YData');
        plotvector(generasi) = fitness;
        set(hbestplot, 'YData', plotvector);
        set(htextA, 'String', sprintf('Fitness Terbaik: %1.4f', fitness));
        set(htextB, 'String', sprintf('Variabel Hw: %7.2f', BestX(2)));
        set(htextC, 'String', sprintf('Variabel Hs: %7.2f', BestX(1)));
        set(htextD, 'String', sprintf('Variabel Hr: %7.2f', BestX(3)));
        set(hbestplot, 'Color', 'red');
        drawnow
        
        %Menghitung Fraksi Massa Ekstraksi
        %Fraksi Massa Feedwater Pada High Pressure Heater 7
        %Entalpi Steam (kJ/kg)
        h2 = 3109.7;    
        h27 = 1113.5;
        %Entalpi Water (kJ/kg)
        h25 = 1077.9;
        h26 = BestX(2);
        y1 = (h26-h25)/(h2-h27);
        %Fraksi Massa Feedwater Pada High Pressure Heater 6
        %Entalpi Steam (kJ/kg)
        h4 = 3033.1;    
        h27 = 1113.5;
        h28 = 940.3;
        %Entalpi Water (kJ/kg)
        h24 = 918.4;
        h25 = 1077.9;
        y2 = ((h25-h24)-(y1*(h27-h28)))/(h4-h28);
        %Fraksi Massa Feedwater Pada High Pressure Heater 5
        %Entalpi Steam (kJ/kg)
        h7 = 3396.3;    
        h28 = 940.3;
        h29 = 755.8;
        %Entalpi Water (kJ/kg)
        h23 = 744.2;
        h24 = 918.4;
        y3 = ((h24-h23)-((y1+y2)*(h28-h29)))/(h7-h29);
        %Fraksi Massa Feedwater Pada Daerator
        %Entalpi Steam (kJ/kg)
        h9 = 3127.4;    
        h21 = 712.5;
        h29 = 755.8;
        %Entalpi Water (kJ/kg)
        h20 = 502.5;
        y4 = ((h21-h20)-((y1+y2+y3)*(h29-h20)))/(h9-h20);
        %Fraksi Massa Feedwater Pada Low Pressure Heater 3
        %Entalpi Steam (kJ/kg)
        h12 = 2873;    
        h30 = 428;
        %Entalpi Water (kJ/kg)
        h19 = 402.2;
        h20 = 502.5;
        y5 = ((1-y1-y2-y3-y4)*(h20-h19))/(h12-h30);
        %Fraksi Massa Feedwater Pada Low Pressure Heater 2
        %Entalpi Steam (kJ/kg)
        h13 = 2678.7;    
        h30 = 428;
        h31 = 271.2;
        %Entalpi Water (kJ/kg)
        h18 = 249.9;
        h19 = 402.2;
        y6 = ((1-y1-y2-y3-y4)*(h19-h18)-(y5*(h30-h31)))/(h13-h31);
        %Fraksi Massa Feedwater Pada Low Pressure Heater 1
        %Entalpi Steam (kJ/kg)
        h14 = 2614.2;    
        h31 = 271.2;
        h32 = 197.6;
        %Entalpi Water (kJ/kg)
        h17 = 180.2;
        h18 = 249.9;
        y7 = ((1-y1-y2-y3-y4-y5)*(h18-h17)-((y5+y6)*(h31-h32)))/((h14-h32)-(h18-h17));

        %Menentukan Daya Yang Dibutuhkan Pompa
        %Daya Pompa CEP (kJ/kg)
        h16 = 174.3;
        h17 = 180.2;
        Wcep = h17-h16;
        %Daya Pompa BFP (kJ/kg)
        h21 = 715.2;
        h22 = 744.2;
        Wbfp = h22-h21;

        %Menentukan Daya Masing Masing Turbin
        %High Pressure Turbin (kJ/kg)
        h1 = BestX(1);
        h2 = 3190.7;
        h3 = 3037.2;
        h4 = 3033.1;
        Whpt = (h1-h2)+(h2-h4)+(h3-h4);
        %Intermediate Pressure Turbin (kJ/kg)
        h5 = 3037.2;
        h6 = BestX(3);
        h7 = 3396.3;
        h8 = 3127.4;
        h9 = 3127.4;
        h11 = 3127.4;
        Wipt = (1-y2)*(h6-h7)+(1-y2-y3)*(h7-h8)+(1-y2-y3-y4)*(h9-h11);
        %Low Pressure Turbin (kJ/kg)
        h10 = 2578.5;
        h11 = 3127.4;
        h12 = 2873;
        h13 = 2678.7;
        h14 = 2614.2;
        h15 = 2603.3;
        Wlpt = (1-y3-y4)*(h11-h12)+(1-y3-y4-y5)*(h12-h13)+(1-y3-y4-y5-y6)*(h13-h14)+(1-y3-y4-y5-y6-y7)*(h14-h15);

        if MaxF>=(1/AntiKonvergensi),
            %Menghentikan iterasi program jika nilai fitness bernilai 0
            break;
        end

        TemPopulasi = Populasi;
        %Mengcopy nilai populasi ke dlm nilai TemPopulasi

        if mod(UkPop,2)==0,
            IterasiMulai = 3;
            TemPopulasi(1,:) = Populasi(IndeksIndividuTerbaik,:);
            TemPopulasi(2,:) = Populasi(IndeksIndividuTerbaik,:);
            %Jika jml populasi pada UkPop genap maka membuat 2 copy
            %kromosom terbaik agar tidak hilang selama proses iterasi
        else
            IterasiMulai = 2;
            TemPopulasi(1,:) = Populasi(IndeksIndividuTerbaik,:);
            %Jika jml populasi pada UkPop ganjil maka membuat 1 copy
            %kromosom terbaik agar tidak hilang selama proses iterasi
        end

        LinearFitness = LinearFitnessRanking(UkPop,Fitness,MaxF,MinF);
        %Mengurutkan populasi berdasarkan nilai fitness tertinggi

        for jj=IterasiMulai:2:UkPop,
            IP1 = RouletteWheel(UkPop,LinearFitness);
            IP2 = RouletteWheel(UkPop,LinearFitness);
            %Menjadikan populasi yang memiliki fitness terbaik sebagai
            %orang tua melalui roulette-wheel
            if (rand<Psilang),
                Anak = PindahSilang(Populasi(IP1,:),Populasi(IP2,:),JumGen);
                TemPopulasi(jj,:) = Anak(1,:);
                TemPopulasi(jj+1,:) = Anak(2,:);
                %Jika nilai random kurang dari probabilitas Psilang maka
                %memindah-silangkan bagian kromosom orang tua yang dipotong
                %secara random, sehingga dihasilkan 2 kromosom anak
            else
                TemPopulasi(jj,:) = Populasi(IP1,:);
                TemPopulasi(jj+1,:) = Populasi(IP2,:);
                %Jika nilai random lebih dari probabilitas Psilang maka
                %mengcopy nilai populasi orangtua hasil roulette-wheel
            end
        end

        for kk=IterasiMulai:UkPop,
            TemPopulasi(kk,:) = Mutasi(TemPopulasi(kk,:),JumGen,Pmutasi);
            %Jika nilai random kurang dari probabilitas Pmutasi maka
            %melakukan mutasi pada kromosom terpilih yaitu perubahan nilai 
            %gen dari 0 menjadi 1 atau dari 1 menjadi 0
        end

        Populasi = TemPopulasi;
        %Mengcopy hasil perubahan nilai pada TemPopulasi ke dlm populasi

    end

    Ms = PowerGenerator/((Whpt+Wipt+Wlpt)-(Wcep+Wbfp));
    Qboiler = h1-h26;
    Qreheater = (1-0.091)*(h6-h5);
    THR = ((Ms*(h1-h26)+Mass6*(h6-h5))/PowerGenerator);
    THRdlmKcalperKwh = THR*1000; 
    Mbb = (THR*PowerGenerator)/(GCV*Setting);
    EffTurbin = (((Whpt+Wipt+Wlpt)-(Wcep+Wbfp))/(Qboiler+Qreheater))*100;
    EffBoiler = ((Ms*(h1-h26)+Mass6*(h6-h5))/(Mbb*GCV))*100;

    Temp1 = XSteam('T_ph',PressSteam,h1);   %suhu main steam (celcius)
    Temp2 = XSteam('T_ph',Press2,h2);       %suhu ekstraksi high pressure turbin1 (celcius)
    Temp3 = XSteam('T_ph',Press3,h3);       %suhu outlet high pressure turbin (celcius)
    Temp4 = XSteam('T_ph',Press4,h4);       %suhu ekstraksi high pressure turbin2 (celcius)
    Temp5 = XSteam('T_ph',Press5,h5);       %suhu inlet reheater steam (celcius)
    Temp6 = XSteam('T_ph',PressReheater,h6);%suhu outlet reheater steam (celcius)
    Temp7 = XSteam('T_ph',Press7,h7);       %suhu ekstraksi intermediate pressure turbin1 (celcius)
    Temp8 = XSteam('T_ph',Press8,h8);       %suhu ekstraksi intermediate pressure turbin2 (celcius)
    Temp9 = XSteam('T_ph',Press9,h9);       %suhu ekstraksi intermediate pressure turbin3 (celcius)
    Temp10 = XSteam('T_ph',Press10,h10);    %suhu outlet intermediate pressure turbin (celcius)
    Temp11 = XSteam('T_ph',Press11,h11);    %suhu inlet condenser1 (celcius)
    Temp12 = XSteam('T_ph',Press12,h12);    %suhu ekstraksi low pressure turbin1 (celcius)
    Temp13 = XSteam('T_ph',Press13,h13);    %suhu ekstraksi low pressure turbin2 (celcius)
    Temp14 = XSteam('T_ph',Press14,h14);    %suhu ekstraksi low pressure turbin3 (celcius)
    Temp15 = XSteam('T_ph',Press15,h15);    %suhu inlet condenser2 (celcius)
    Temp16 = XSteam('T_ph',Press16,h16);    %suhu outlet condenser (celcius)
    Temp17 = XSteam('T_ph',Press17,h17);    %suhu inlet low pressure heater1 (celcius)
    Temp18 = XSteam('T_ph',Press18,h18);    %suhu outlet low pressure heater1 (celcius)
    Temp19 = XSteam('T_ph',Press19,h19);    %suhu outlet low pressure heater2 (celcius)
    Temp20 = XSteam('T_ph',Press20,h20);    %suhu outlet low pressure heater3 (celcius)
    Temp21 = XSteam('T_ph',Press21,h21);    %suhu outlet daerator (celcius)
    Temp22 = XSteam('T_ph',Press22,h22);    %suhu inlet daerator (celcius)
    Temp23 = XSteam('T_ph',Press23,h23);    %suhu inlet high pressure heater5 (celcius)
    Temp24 = XSteam('T_ph',Press24,h24);    %suhu outlet high pressure heater5 (celcius)
    Temp25 = XSteam('T_ph',Press25,h25);    %suhu outlet high pressure heater6 (celcius)
    Temp26 = XSteam('T_ph',PressWater,h26); %suhu outlet feedwater (celcius)
    Temp27 = XSteam('T_ph',Press27,h27);    %suhu drain inlet high pressure heater6 (celcius)
    Temp28 = XSteam('T_ph',Press28,h28);    %suhu drain inlet high pressure heater5 (celcius)
    Temp29 = XSteam('T_ph',Press29,h29);    %suhu drain inlet daerator (celcius)
    Temp30 = XSteam('T_ph',Press30,h30);    %suhu drain inlet low pressure heater2 (celcius)
    Temp31 = XSteam('T_ph',Press31,h31);    %suhu drain inlet low pressure heater1 (celcius)
    Temp32 = XSteam('T_ph',Press32,h32);    %suhu ekstraksi outlet low pressure heater1 (celcius)

    RunGA = '------------------------------------------------------'
    Data0 = ['Daya',' EffisiensiBoiler',' EffisiensiThermal']
    Data0 = [Daya, EffBoiler, EffTurbin]
    Data1 = ['EnergiKalorBoiler',' EnergiKalorReheater',' AliranMassa',' TurbinHeatRate',' MassaBahanBakar']
    Data1 = [Qboiler, Qreheater, Ms, THRdlmKcalperKwh, Mbb]
    Data2 = ['T.Feedwater',' E.Feedwater',' T.Steam',' E.Steam',' T.Reheater',' E.Reheater']
    Data2 = [Temp26, h26, Temp1, h1, Temp6, h6]

    %Grafik Daya Output Pembangkitan
    plotvectorpower = get(Powerplot,'YData');
    plotvectorpower(Loop) = Daya;
    set(Powerplot, 'YData', plotvectorpower);
    set(Powerplot, 'Color', 'cyan');
    set(Powerplot, 'Marker', 'o');
    drawnow
    
    %Grafik Suhu Steam Terhadap Daya
    plotvectortemp = get(Tempplot,'XData');
    plotvectortemp(Loop) = Daya;
    set(Tempplot,'XData',plotvectortemp);
    plotvectortemp = get(Tempplot,'YData');
    plotvectortemp(Loop) = Temp1;
    set(Tempplot,'YData',plotvectortemp);
    set(Tempplot, 'Color', 'cyan');
    set(Tempplot, 'Marker', 'o');
    drawnow
    
    %Grafik Aliran Massa Steam Terhadap Daya
    plotvectorsteam = get(Flowplot,'XData');
    plotvectorsteam(Loop) = Daya;
    set(Flowplot,'XData',plotvectorsteam);
    plotvectorsteam = get(Flowplot,'YData');
    plotvectorsteam(Loop) = Ms;
    set(Flowplot,'YData',plotvectorsteam);
    set(Flowplot, 'Color', 'cyan');
    set(Flowplot, 'Marker', 'o');
    drawnow
    
    %Grafik Hasil Optimasi Effisiensi Boiler & Thermal Thd Daya
    plotvectoreff1 = get(Effplot1,'XData');
    plotvectoreff1(Loop) = Daya;
    set(Effplot1,'XData',plotvectoreff1);
    plotvectoreff1 = get(Effplot1,'YData');
    plotvectoreff1(Loop) = EffBoiler;
    set(Effplot1,'YData',plotvectoreff1);
    %------------------------------------------------%
    plotvectoreff2 = get(Effplot2,'XData');
    plotvectoreff2(Loop) = Daya;
    set(Effplot2,'XData',plotvectoreff2);
    plotvectoreff2 = get(Effplot2,'YData');
    plotvectoreff2(Loop) = EffTurbin;
    set(Effplot2,'YData',plotvectoreff2);
    %------------------------------------------------%
    set(Effplot1, 'Color', 'blue');
    set(Effplot1, 'Marker', 'o');
    set(Effplot2, 'Color', 'green');
    set(Effplot2, 'Marker', 'o');
    set(htext1, 'String', sprintf('Biru ~ Effisiensi Boiler %3.2f', EffBoiler));
    set(htext2, 'String', sprintf('Hijau ~ Effisiensi Thermal %3.2f', EffTurbin));
    drawnow
    
    %Grafik Perbandingan Hasil Data & Optimasi GA Terhadap Effisiensi Thermal Thd Tekanan
    plotvectoreff3 = get(Effplot3,'XData');
    plotvectoreff3(Loop) = PressSteam;
    set(Effplot3,'XData',plotvectoreff3);
    plotvectoreff3 = get(Effplot3,'YData');
    plotvectoreff3(Loop) = EffTurbin;
    set(Effplot3,'YData',plotvectoreff3);
    %------------------------------------------------%
    set(Effplot3, 'Color', 'green');
    set(Effplot3, 'Marker', 'o');
    set(htext3, 'String', sprintf('Hijau ~ Effisiensi Thermal GA %3.2f', EffTurbin));
    drawnow
    
    %Grafik Perbandingan Hasil Data & Optimasi GA Terhadap Effisiensi Boiler Thd Tekanan
    plotvectoreff5 = get(Effplot5,'XData');
    plotvectoreff5(Loop) = PressSteam;
    set(Effplot5,'XData',plotvectoreff5);
    plotvectoreff5 = get(Effplot5,'YData');
    plotvectoreff5(Loop) = EffBoiler;
    set(Effplot5,'YData',plotvectoreff5);
    %------------------------------------------------%
    set(Effplot5, 'Color', 'green');
    set(Effplot5, 'Marker', 'o');
    set(htext5, 'String', sprintf('Hijau ~ Effisiensi Boiler GA %3.2f', EffBoiler));
    drawnow
end


%Mulai Perhitungan Data Sesuai Data Lapangan
for Loops=1:DataVariasi,
    
    GCVdata = 24360;
    PowerGeneratordata = 698700;
    Daya = PowerGeneratordata/1000;
    PressWater = updatePressWater(Loops,water1,water2,water3,water4,water5);
    PressSteam = updatePressSteam(Loops,steam1,steam2,steam3,steam4,steam5);
    PressReheater = updatePressReheater(Loops,reheater1,reheater2,reheater3,reheater4,reheater5);
    EntalpiSteam = updateEntalpiSteam(PressSteam);
    EntalpiReheater = updateEntalpiReheater(PressSteam);
    
    
    %Mass1data = 607.26;       %aliran massa main steam (kg/s)
    %Temp1data = 529.8;        %suhu main steam (celcius)
    %Temp6data = 547.42;       %suhu outlet reheater steam (celcius)
    %Temp26data = 286.99;      %suhu outlet feedwater (celcius)
    Mass6data = 508.8;         %aliran massa outlet reheater steam (kg/s)
    Temp2data = 413.55;        %suhu ekstraksi high pressure turbin1 (celcius)
    Temp3data = 328.27;        %suhu outlet high pressure turbin (celcius)
    Temp4data = 326.22;        %suhu ekstraksi high pressure turbin2 (celcius)
    Temp5data = 328.27;        %suhu inlet reheater steam (celcius)
    Temp7data = 467.41;        %suhu ekstraksi intermediate pressure turbin1 (celcius)
    Temp8data = 332.24;        %suhu ekstraksi intermediate pressure turbin2 (celcius)
    Temp9data = 332.24;        %suhu ekstraksi intermediate pressure turbin3 (celcius)
    Temp10data = 42.7;         %suhu outlet intermediate pressure turbin (celcius)
    Temp11data = 332.24;       %suhu inlet condenser1 (celcius)
    Temp12data = 199;          %suhu ekstraksi low pressure turbin1 (celcius)
    Temp13data = 102;          %suhu ekstraksi low pressure turbin2 (celcius)
    Temp14data = 63.1;         %suhu ekstraksi low pressure turbin3 (celcius)
    Temp15data = 56.8;         %suhu inlet condenser2 (celcius)
    Temp16data = 41.62;        %suhu outlet condenser (celcius)
    Temp17data = 42.6;         %suhu inlet low pressure heater1 (celcius)
    Temp18data = 59.7;         %suhu outlet low pressure heater1 (celcius)
    Temp19data = 96;           %suhu outlet low pressure heater2 (celcius)
    Temp20data = 119.6;        %suhu outlet low pressure heater3 (celcius)
    Temp21data = 169.09;       %suhu outlet daerator (celcius)
    Temp22data = 173.24;       %suhu inlet daerator (celcius)
    Temp23data = 173.24;       %suhu inlet high pressure heater5 (celcius)
    Temp24data = 214.52;       %suhu outlet high pressure heater5 (celcius)
    Temp25data = 248.4;        %suhu outlet high pressure heater6 (celcius)
    Temp27data = 255.68;       %suhu drain inlet high pressure heater6 (celcius)
    Temp28data = 219.27;       %suhu drain inlet high pressure heater5 (celcius)
    Temp29data = 178.33;       %suhu drain inlet daerator (celcius)
    Temp30data = 102.1;        %suhu drain inlet low pressure heater2 (celcius)
    Temp31data = 64.8;         %suhu drain inlet low pressure heater1 (celcius)
    Temp32data = 47.2;         %suhu ekstraksi outlet low pressure heater1 (celcius)

    %Menghitung Fraksi Massa Ekstraksi
    %Fraksi Massa Feedwater Pada High Pressure Heater 7
    %Entalpi Steam (kJ/kg)
    h2 = 3109.7;    
    h27 = 1113.5;
    %Entalpi Water (kJ/kg)
    h25 = 1077.9;
    h26 = 1266.9;
    y1 = (h26-h25)/(h2-h27);
    
    %Fraksi Massa Feedwater Pada High Pressure Heater 6
    %Entalpi Steam (kJ/kg)
    h4 = 3033.1;    
    h27 = 1113.5;
    h28 = 940.3;
    %Entalpi Water (kJ/kg)
    h24 = 918.4;
    h25 = 1077.9;
    y2 = ((h25-h24)-(y1*(h27-h28)))/(h4-h28);
    
    %Fraksi Massa Feedwater Pada High Pressure Heater 5
    %Entalpi Steam (kJ/kg)
    h7 = 3396.3;    
    h28 = 940.3;
    h29 = 755.8;
    %Entalpi Water (kJ/kg)
    h23 = 744.2;
    h24 = 918.4;
    y3 = ((h24-h23)-((y1+y2)*(h28-h29)))/(h7-h29);
    
    %Fraksi Massa Feedwater Pada Daerator
    %Entalpi Steam (kJ/kg)
    h9 = 3127.4;    
    h21 = 712.5;
    h29 = 755.8;
    %Entalpi Water (kJ/kg)
    h20 = 502.5;
    y4 = ((h21-h20)-((y1+y2+y3)*(h29-h20)))/(h9-h20);
    
    %Fraksi Massa Feedwater Pada Low Pressure Heater 3
    %Entalpi Steam (kJ/kg)
    h12 = 2873;    
    h30 = 428;
    %Entalpi Water (kJ/kg)
    h19 = 402.2;
    h20 = 502.5;
    y5 = ((1-y1-y2-y3-y4)*(h20-h19))/(h12-h30);
    
    %Fraksi Massa Feedwater Pada Low Pressure Heater 2
    %Entalpi Steam (kJ/kg)
    h13 = 2678.7;    
    h30 = 428;
    h31 = 271.2;
    %Entalpi Water (kJ/kg)
    h18 = 249.9;
    h19 = 402.2;
    y6 = ((1-y1-y2-y3-y4)*(h19-h18)-(y5*(h30-h31)))/(h13-h31);
    
    %Fraksi Massa Feedwater Pada Low Pressure Heater 1
    %Entalpi Steam (kJ/kg)
    h14 = 2614.2;    
    h31 = 271.2;
    h32 = 197.6;
    %Entalpi Water (kJ/kg)
    h17 = 180.2;
    h18 = 249.9;
    y7 = ((1-y1-y2-y3-y4-y5)*(h18-h17)-((y5+y6)*(h31-h32)))/((h14-h32)-(h18-h17));

    %Menentukan Daya Yang Dibutuhkan Pompa
    %Daya Pompa CEP (kJ/kg)
    h16 = 174.3;
    h17 = 180.2;
    Wcep = h17-h16;
    %Daya Pompa BFP (kJ/kg)
    h21 = 715.2;
    h22 = 744.2;
    Wbfp = h22-h21;
    
    %Menentukan Daya Masing Masing Turbin
    %High Pressure Turbin (kJ/kg)
    h1 = EntalpiSteam;
    h2 = 3190.7;
    h3 = 3037.2;
    h4 = 3033.1;
    Whpt = (h1-h2)+(h2-h4)+(h3-h4);
    %Intermediate Pressure Turbin (kJ/kg)
    h5 = 3037.2;
    h6 = EntalpiReheater;
    h7 = 3396.3;
    h8 = 3127.4;
    h9 = 3127.4;
    h11 = 3127.4;
    Wipt = (1-y2)*(h6-h7)+(1-y2-y3)*(h7-h8)+(1-y2-y3-y4)*(h9-h11);
    %Low Pressure Turbin (kJ/kg)
    h11 = 3127.4;
    h12 = 2873;
    h13 = 2678.7;
    h14 = 2614.2;
    h15 = 2603.3;
    Wlpt = (1-y3-y4)*(h11-h12)+(1-y3-y4-y5)*(h12-h13)+(1-y3-y4-y5-y6)*(h13-h14)+(1-y3-y4-y5-y6-y7)*(h14-h15);

    Wt = PowerGeneratordata;
    Mass1data = Wt/((Whpt+Wipt+Wlpt)-(Wcep+Wbfp));
    WtperMassadata = ((Whpt+Wipt+Wlpt)-(Wcep+Wbfp));
    
    Temp1data = XSteam('T_ph',PressSteam,h1);
    Temp6data = XSteam('T_ph',PressReheater,h6);
    Temp26data = XSteam('T_ph',PressWater,h26);
    
    Qboiler = h1-h26;
    Qreheater = (1-0.091)*(h6-h5);
    
    THR = ((Mass1data*(h1-h26)+Mass6data*(h6-h5))/PowerGeneratordata);
    THRdlmKcalperKwh = THR*1000; 
    Mbb = (THR*PowerGeneratordata)/(GCVdata*Setting);
    
    EffBoilerman = ((Mass1data*(h1-h26)+Mass6data*(h6-h5))/(Mbb*GCVdata))*100;
    EffTurbinman = ((WtperMassadata)/(Qboiler+Qreheater))*100;
    
    RunManual = '------------------------------------------------------'
    Data0 = ['Daya',' EffisiensiBoiler',' EffisiensiThermal']
    Data0 = [Daya, EffBoilerman, EffTurbinman]
    Data1 = ['EnergiKalorBoiler',' EnergiKalorReheater',' AliranMassa',' TurbinHeatRate',' MassaBahanBakar']
    Data1 = [Qboiler, Qreheater, Mass1data, THRdlmKcalperKwh, Mbb]
    Data2 = ['T.Feedwater',' E.Feedwater',' T.Steam',' E.Steam',' T.Reheater',' E.Reheater']
    Data2 = [Temp26data, h26, Temp1data, h1, Temp6data, h6]
    
    %Grafik Perbandingan Hasil Data & Optimasi GA Terhadap Effisiensi Thermal Thd Tekanan
    plotvectoreff4 = get(Effplot4,'XData');
    plotvectoreff4(Loops) = PressSteam;
    set(Effplot4,'XData',plotvectoreff4);
    plotvectoreff4 = get(Effplot4,'YData');
    plotvectoreff4(Loops) = EffTurbinman;
    set(Effplot4,'YData',plotvectoreff4);
    %------------------------------------------------%
    set(Effplot4, 'Color', 'red');
    set(Effplot4, 'Marker', 'o');
    set(htext4, 'String', sprintf('Merah ~ Effisiensi Thermal Data %3.2f', EffTurbinman));
    drawnow
    
    %Grafik Perbandingan Hasil Data & Optimasi GA Terhadap Effisiensi Boiler Thd Tekanan
    plotvectoreff6 = get(Effplot6,'XData');
    plotvectoreff6(Loops) = PressSteam;
    set(Effplot6,'XData',plotvectoreff6);
    plotvectoreff6 = get(Effplot6,'YData');
    plotvectoreff6(Loops) = EffBoilerman;
    set(Effplot6,'YData',plotvectoreff6);
    %------------------------------------------------%
    set(Effplot6, 'Color', 'red');
    set(Effplot6, 'Marker', 'o');
    set(htext6, 'String', sprintf('Merah ~ Effisiensi Boiler Data %3.2f', EffBoilerman));
    drawnow
end
    
