function Hs = updateEntalpiSteam(PressSteam)
    if (PressSteam <= 166.92),
        Hs = 3375.4;
        return;
    elseif (PressSteam <= 200),
        Hs = 3395.7;
        return;
    elseif (PressSteam <= 240),
        Hs = 3412.6;
        return;
    elseif (PressSteam <= 280),
        Hs = 3434.0;
        return;
    elseif (PressSteam > 280),
        Hs = 3477.7;
        return;
    end
end