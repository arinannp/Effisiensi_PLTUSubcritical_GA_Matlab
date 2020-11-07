function batasHs = updatebatasHs2(Power)
    if (Power <= 100000),
        batasHs = 3399.2;
        return;
    elseif (Power <= 200000),
        batasHs = 3419.2;
        return;
    elseif (Power <= 300000),
        batasHs = 3439.2;
        return;
    elseif (Power <= 400000),
        batasHs = 3459.2;
        return;
    elseif (Power <= 500000),
        batasHs = 3479.2;
        return;
    elseif (Power <= 600000),
        batasHs = 3499.2;
        return;
    elseif (Power <= 700000),
        batasHs = 3519.2;
        return;
    elseif (Power <= 800000),
        batasHs = 3539.2;
        return;
    elseif (Power <= 900000),
        batasHs = 3579.2;
        return;
    elseif (Power <= 1000000),
        batasHs = 3599.2;
        return;
    end
end