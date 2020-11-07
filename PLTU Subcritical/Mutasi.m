function MutKromosom = Mutasi(Kromosom,JumGen,Pmutasi)
    
    MutKromosom = Kromosom;
    for ii=1:JumGen,
        if (rand<Pmutasi),
            if Kromosom(ii)==0,
                MutKromosom(ii) = 1;
            else
                MutKromosom(ii) = 0;
            end
        end
    end
end