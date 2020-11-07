function batasHs = updatebatasHw2(Power)
    if (Power <= 100000),
        batasHs = 3562.8;
        return;
    elseif (Power <= 200000),
        batasHs = 3582.8;
        return;
    elseif (Power <= 300000),
        batasHs = 3602.8;
        return;
    elseif (Power <= 400000),
        batasHs = 3622.8;
        return;
    elseif (Power <= 500000),
        batasHs = 3642.8;
        return;
    elseif (Power <= 600000),
        batasHs = 3662.8;
        return;
    elseif (Power <= 700000),
        batasHs = 3682.8;
        return;
    elseif (Power <= 800000),
        batasHs = 3702.8;
        return;
    elseif (Power <= 900000),
        batasHs = 3732.8;
        return;
    elseif (Power <= 1000000),
        batasHs = 3752.8;
        return;
    end
end