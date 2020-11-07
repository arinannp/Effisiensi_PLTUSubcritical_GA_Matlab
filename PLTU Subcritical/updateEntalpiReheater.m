function Hw = updateEntalpiReheater(PressSteam)
    if (PressSteam <= 166.92),
        Hw = 3557.5;
        return;
    elseif (PressSteam <= 200),
        Hw = 3603.1;
        return;
    elseif (PressSteam <= 240),
        Hw = 3648.8;
        return;
    elseif (PressSteam <= 280),
        Hw = 3694.5;
        return;
    elseif (PressSteam > 280),
        Hw = 3740.4;
        return;
    end
end