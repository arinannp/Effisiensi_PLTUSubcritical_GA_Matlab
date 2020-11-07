function LFR = LinearFitnessRanking(UkPop,Fitness,MaxF,MinF)
    
    [SF,IndF] = sort(Fitness);
    for rr=1:UkPop,
        LFR(IndF(UkPop-rr+1)) = MaxF-(MaxF-MinF)*((rr-1)/(UkPop-1));
    end
end