function x = DekodekanKromosom(Kromosom,Nvar,Nbit,batasAtasHs,batasBawahHs,batasAtasHw,batasBawahHw,batasAtasHr,batasBawahHr)
    for ii=1:Nvar,
        x(ii) = 0;
        for jj=1:Nbit,
            x(ii) = x(ii) + Kromosom((ii-1)*Nbit+jj)*2^(-jj);
        end
        if ii == 1,
            x(ii) = batasBawahHs+(batasAtasHs-batasBawahHs)*x(ii);
        end
        if ii == 2,
            x(ii) = batasBawahHw+(batasAtasHw-batasBawahHw)*x(ii);
        end
        if ii == 3,
            x(ii) = batasBawahHr+(batasAtasHr-batasBawahHr)*x(ii);
        end   
    end
end