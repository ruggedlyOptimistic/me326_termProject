%% IndexOf
% Find the index of x in the array
% Literally every other language has some version of the method, which is
% precisely why MATLAB is Beelzebub's programming environment...

function i = indexOf(x, arr)

    for i = 1:numRows(arr)
    
        if x == arr(i)
            break;
        end
    end


end