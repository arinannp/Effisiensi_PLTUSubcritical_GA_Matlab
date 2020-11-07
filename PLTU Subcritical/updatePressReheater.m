function PressReheater = updatePressReheater(Loop,reheater1,reheater2,reheater3,reheater4,reheater5)
    if Loop == 1,
        PressReheater = reheater1;
        return;
    elseif Loop == 2,
        PressReheater = reheater2;
        return;
    elseif Loop == 3,
        PressReheater = reheater3;
        return;
    elseif Loop == 4,
        PressReheater = reheater4;
        return;
    elseif Loop == 5,
        PressReheater = reheater5;
        return;
    end
end