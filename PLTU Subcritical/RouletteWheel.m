function PIndex = RouletteWheel(UkPop,LinearFitness)
    
    JumFitness = sum(LinearFitness);
    KomulatifFitness = 0;
    RN = rand;
    ii = 1;
    
    while ii<=UkPop,
        KomulatifFitness = KomulatifFitness + LinearFitness(ii);
        if (KomulatifFitness/JumFitness)>RN,
            PIndex = ii;
            break;
        end
        ii = ii + 1;
    end
end