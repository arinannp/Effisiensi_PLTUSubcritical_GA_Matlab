clc
%clear all

Mass1 = 607.26;        %aliran massa main steam (kg/s)
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

Press1 = 166.92;       %tekanan main steam (bar)
Press2 = 72.35;        %tekanan ekstraksi high pressure turbin1 (bar)
Press3 = 40.31;        %tekanan outlet high pressure turbin (bar)
Press4 = 39.84;        %tekanan ekstraksi high pressure turbin2 (bar)
Press5 = 40.31;        %tekanan inlet reheater steam (bar)
Press6 = 36.63;        %tekanan outlet reheater steam (bar)
Press7 = 19.98;        %tekanan ekstraksi intermediate pressure turbin1 (bar)
Press8 = 7.78;         %tekanan ekstraksi intermediate pressure turbin2 (bar)
Press9 = 7.78;         %tekanan ekstraksi intermediate pressure turbin3 (bar)
Press11 = 7.78;        %tekanan outlet intermediate pressure turbin (bar)
Press10 = 0.08;        %tekanan inlet condenser1 (bar)
Press12 = 1.11;        %tekanan ekstraksi low pressure turbin1 (bar)
Press13 = 1.09;        %tekanan ekstraksi low pressure turbin2 (bar)
Press14 = 0.23;        %tekanan ekstraksi low pressure turbin3 (bar)
Press15 = 0.17;        %tekanan inlet condenser2 (bar)
Press16 = 0.07;        %tekanan outlet condenser (bar)
Press17 = 20.46;       %tekanan inlet low pressure heater1 (bar)
Press18 = 0.2;         %tekanan outlet low pressure heater1 (bar)
Press19 = 0.88;        %tekanan outlet low pressure heater2 (bar)
Press20 = 7.42;        %tekanan outlet low pressure heater3 (bar)
Press21 = 7.63;        %tekanan outlet daerator (bar)
Press22 = 204.89;      %tekanan inlet daerator (bar)
Press23 = 204.89;      %tekanan inlet high pressure heater5 (bar)
Press24 = 20.87;       %tekanan outlet high pressure heater5 (bar)
Press25 = 38.73;       %tekanan outlet high pressure heater6 (bar)
Press26 = 188.06;      %tekanan outlet feedwater (bar)
Press27 = 43.72;       %tekanan drain inlet high pressure heater6 (bar)
Press28 = 22.87;       %tekanan drain inlet high pressure heater5 (bar)
Press29 = 9.65;        %tekanan drain inlet daerator (bar)
Press30 = 1.09;        %tekanan drain inlet low pressure heater2 (bar)
Press31 = 0.25;        %tekanan drain inlet low pressure heater1 (bar)
Press32 = 0.11;        %tekanan ekstraksi outlet low pressure heater1 (bar)

Temp1 = 529.8;         %suhu main steam (celcius)
Temp2 = 413.55;        %suhu ekstraksi high pressure turbin1 (celcius)
Temp3 = 328.27;        %suhu outlet high pressure turbin (celcius)
Temp4 = 326.22;        %suhu ekstraksi high pressure turbin2 (celcius)
Temp5 = 328.27;        %suhu inlet reheater steam (celcius)
Temp6 = 547.42;        %suhu outlet reheater steam (celcius)
Temp7 = 467.41;        %suhu ekstraksi intermediate pressure turbin1 (celcius)
Temp8 = 332.24;        %suhu ekstraksi intermediate pressure turbin2 (celcius)
Temp9 = 332.24;        %suhu ekstraksi intermediate pressure turbin3 (celcius)
Temp10 = 42.7;         %suhu outlet intermediate pressure turbin (celcius)
Temp11 = 332.24;       %suhu inlet condenser1 (celcius)
Temp12 = 199;          %suhu ekstraksi low pressure turbin1 (celcius)
Temp13 = 102;          %suhu ekstraksi low pressure turbin2 (celcius)
Temp14 = 63.1;         %suhu ekstraksi low pressure turbin3 (celcius)
Temp15 = 56.8;         %suhu inlet condenser2 (celcius)
Temp16 = 41.62;        %suhu outlet condenser (celcius)
Temp17 = 42.6;         %suhu inlet low pressure heater1 (celcius)
Temp18 = 59.7;         %suhu outlet low pressure heater1 (celcius)
Temp19 = 96;           %suhu outlet low pressure heater2 (celcius)
Temp20 = 119.6;        %suhu outlet low pressure heater3 (celcius)
Temp21 = 169.09;       %suhu outlet daerator (celcius)
Temp22 = 173.24;       %suhu inlet daerator (celcius)
Temp23 = 173.24;       %suhu inlet high pressure heater5 (celcius)
Temp24 = 214.52;       %suhu outlet high pressure heater5 (celcius)
Temp25 = 248.4;        %suhu outlet high pressure heater6 (celcius)
Temp26 = 286.99;       %suhu outlet feedwater (celcius)
Temp27 = 255.68;       %suhu drain inlet high pressure heater6 (celcius)
Temp28 = 219.27;       %suhu drain inlet high pressure heater5 (celcius)
Temp29 = 178.33;       %suhu drain inlet daerator (celcius)
Temp30 = 102.1;        %suhu drain inlet low pressure heater2 (celcius)
Temp31 = 64.8;         %suhu drain inlet low pressure heater1 (celcius)
Temp32 = 47.2;         %suhu ekstraksi outlet low pressure heater1 (celcius)

GCV = 24306.98;
VariasiPress = 11;
PowerGenerator = 712740;

hfig1 = figure;
hold on
title('Hasil Data Manual Effisiensi Boiler & Turbin')
set(hfig1, 'position', [1000,250,550,400]);
set(hfig1, 'DoubleBuffer', 'on');
axis([160 300 44 50]);
Effplot1 = plot(zeros(1,VariasiPress),zeros(1,VariasiPress));
Effplot2 = plot(zeros(1,VariasiPress),zeros(1,VariasiPress));
htext1 = text(0.8*300,0.23*100,sprintf('Biru ~ Effisiensi Boiler %3.2f', 0.00));
htext2 = text(0.8*300,0.15*100,sprintf('Hijau ~ Effisiensi Turbin %3.2f', 0.00));
xlabel('Pressure (Bar)');
ylabel('Efficiency (%)');
hold off
drawnow;

for Loop=1:VariasiPress,
    if Loop == 1,
        Press1 = 166.92;
        Press26 = 188.06;
    elseif Loop == 2,
        Press1 = 180;
        Press26 = 190;
    elseif Loop == 3,
        Press1 = 190;
        Press26 = 200;
    elseif Loop == 4,
        Press1 = 200;
        Press26 = 210;
    elseif Loop == 5,
        Press1 = 240;
        Press26 = 250;
    elseif Loop == 6,
        Press1 = 250;
        Press26 = 260;
    elseif Loop == 7,
        Press1 = 260;
        Press26 = 270;
    elseif Loop == 8,
        Press1 = 270;
        Press26 = 280;
    elseif Loop == 9,
        Press1 = 280;
        Press26 = 290;
    elseif Loop == 10,
        Press1 = 290;
        Press26 = 300;
    elseif Loop == 11,
        Press1 = 300;
        Press26 = 310;
    end
    
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
    h1 = 3375.4;
    h2 = 3190.7;
    h3 = 3037.2;
    h4 = 3033.1;
    Whpt = (h1-h2)+(h2-h4)+(h3-h4);
    %Intermediate Pressure Turbin (kJ/kg)
    h5 = 3037.2;
    h6 = 3557.5;
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

    Wt = ((Whpt+Wipt+Wlpt)-(Wcep+Wbfp))*Mass1;
    WtperMassadata = 1173.7;
    Wtdata = WtperMassadata*Mass1;
    hs = XSteam('h_pT',Press1,Temp1);
    hw = XSteam('h_pT',Press26,Temp26);
    
    Qboiler = hs-hw;
    Qreheater = (1-0.091)*(h6-h5);
    
    THR = ((Mass1*(hs-hw)+Mass6*(h6-h5))/PowerGenerator);
    THRdlmKcalperKwh = THR*1000; 
    Mbb = (THR*PowerGenerator)/(GCV*0.8717);
    
    EffBoiler = ((Mass1*(hs-hw)+Mass6*(h6-h5))/(Mbb*GCV))*100;
    EffTurbin = ((WtperMassadata)/(Qboiler+Qreheater))*100;
    
    %Grafik Hasil Effisiensi Boiler & Turbin
    plotvectoreff1 = get(Effplot1,'XData');
    plotvectoreff1(Loop) = Press1;
    set(Effplot1,'XData',plotvectoreff1);
    plotvectoreff1 = get(Effplot1,'YData');
    plotvectoreff1(Loop) = EffBoiler;
    set(Effplot1,'YData',plotvectoreff1);
    %------------------------------------------------%
    plotvectoreff2 = get(Effplot2,'XData');
    plotvectoreff2(Loop) = Press1;
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
    set(htext2, 'String', sprintf('Hijau ~ Effisiensi Turbin %3.2f', EffTurbin));
    drawnow
    
end

