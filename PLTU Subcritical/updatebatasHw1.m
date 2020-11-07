function batasHw = updatebatasHw1(PressSteam)
    if (PressSteam <= 166.92),
        batasHw = 3582.8;
        return;
    elseif (PressSteam <= 180),
        batasHw = 3602.8;
        return;
    elseif (PressSteam <= 200),
        batasHw = 3622.8;
        return;
    elseif (PressSteam <= 240),
        batasHw = 3642.8;
        return;
    elseif (PressSteam <= 280),
        batasHw = 3662.8;
        return;
    elseif (PressSteam <= 300),
        batasHw = 3682.8;
        return;
    elseif (PressSteam > 300),
        batasHw = 3702.8;
        return;
    end
end