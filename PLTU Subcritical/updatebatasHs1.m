function batasHs = updatebatasHs1(PressSteam)
    if (PressSteam <= 166.92),
        batasHs = 3439.2;
        return;
    elseif (PressSteam <= 180),
        batasHs = 3459.2;
        return;
    elseif (PressSteam <= 200),
        batasHs = 3479.2;
        return;
    elseif (PressSteam <= 240),
        batasHs = 3499.2;
        return;
    elseif (PressSteam <= 280),
        batasHs = 3519.2;
        return;
    elseif (PressSteam <= 300),
        batasHs = 3539.2;
        return;
    elseif (PressSteam > 300),
        batasHs = 3559.2;
        return;
    end
end