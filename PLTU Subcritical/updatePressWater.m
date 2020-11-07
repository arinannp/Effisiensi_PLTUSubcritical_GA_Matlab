function PressWater = updatePressWater(Loop,water1,water2,water3,water4,water5)
    if Loop == 1,
        PressWater = water1;
        return;
    elseif Loop == 2,
        PressWater = water2;
        return;
    elseif Loop == 3,
        PressWater = water3;
        return;
    elseif Loop == 4,
        PressWater = water4;
        return;
    elseif Loop == 5,
        PressWater = water5;
        return;
    end
end