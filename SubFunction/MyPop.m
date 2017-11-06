function [Arr,k] = MyPop(Arr)
    if length(Arr) > 0
        k = Arr(length(Arr));
    end
    if length(Arr) > 1
        Arr = [Arr(1): Arr(length(Arr)-1)];
    else
        Arr = [];
    end
end