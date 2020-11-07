function PressSteam = updatePressSteam(Loop,steam1,steam2,steam3,steam4,steam5)
    if Loop == 1,
        PressSteam = steam1;
        return;
    elseif Loop == 2,
        PressSteam = steam2;
        return;
    elseif Loop == 3,
        PressSteam = steam3;
        return;
    elseif Loop == 4,
        PressSteam = steam4;
        return;
    elseif Loop == 5,
        PressSteam = steam5;
        return;
    end
end