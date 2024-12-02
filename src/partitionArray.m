%% Partition Array
% Partitions an nx1 array and returns a (n/2)x2 array
% The secondHalf vector will always be larger in cases of odd-sized vectors

function [firstHalf, secondHalf] = partitionArray(myArray)

cols = numCols(myArray);
rows = numRows(myArray);

% If the vector is a row vector, convert it to a col vector
if cols > rows
    myArray = myArray';
end

lim_1 = ceil(numRows(myArray)/2);
i2 = lim_1 + 1;
lim_2 = numRows(myArray);

firstHalf = myArray(1:lim_1,1);
secondHalf = myArray(i2:lim_2,1);
end