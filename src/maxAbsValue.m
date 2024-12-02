function maxVal = maxAbsValue(arr)

cols = numCols(arr);
rows = numRows(arr);

maxVal = 0;
t = 0;
tsign = "positive";
sign = "positive";

length = max([cols, rows]);

% If the vector is a row vector, convert it to a col vector
if cols > rows
    arr = arr';
end

for i = 1:length
    
    t = abs(arr(i, 1));
    
    if arr(i,1) < 0
        tsign = "negative";
    
    else
        tsign = "positive";

    end


    % if the current value in the array is larger than the current
    % maxValue, replace the current max value with the current value
    if t > maxVal
    
    maxVal = t;
    sign = tsign;

    end
end

if sign == "negative"
   
    % maxAbsValue() returns only positive numbers, so we need to make sure
    % to represent the number with the appropriate sign in the event that
    % the maximum absolute value represented a negative number
    maxVal = maxVal * (-1);
end

end