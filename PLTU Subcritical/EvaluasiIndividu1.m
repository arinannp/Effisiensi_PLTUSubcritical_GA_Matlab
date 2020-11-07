function Fitness = EvaluasiIndividu1(x,AntiKonvergensi,PowerGenerator)
    %Menghitung Fraksi Massa Ekstraksi
    %Fraksi Massa Feedwater Pada High Pressure Heater 7
    %Entalpi Steam (kJ/kg)
    h2 = 3109.7;    
    h27 = 1113.5;
    %Entalpi Water (kJ/kg)
    h25 = 1077.9;
    h26 = x(2);
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
    h1 = x(1);
    h2 = 3190.7;
    h3 = 3037.2;
    h4 = 3033.1;
    Whpt = (h1-h2)+(h2-h4)+(h3-h4);
    %Intermediate Pressure Turbin (kJ/kg)
    h6 = x(3);
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
       

    Fitness = (PowerGenerator/((Whpt+Wipt+Wlpt)-(Wcep+Wbfp)))+AntiKonvergensi;
  
end

