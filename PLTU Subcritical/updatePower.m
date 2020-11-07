function PowerGenerator = updatePower(Loop,power1,power2,power3,power4,power5)
    if Loop == 1,
        PowerGenerator = power1;
        return;
    elseif Loop == 2,
        PowerGenerator = power2;
        return;
    elseif Loop == 3,
        PowerGenerator = power3;
        return;
    elseif Loop == 4,
        PowerGenerator = power4;
        return;
    elseif Loop == 5,
        PowerGenerator = power5;
        return;
    end
end