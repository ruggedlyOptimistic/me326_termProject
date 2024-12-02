%% Format Kinetics Plot

function [fig, nextFigNum, y_max, x_max] = formatKineticsPlot(x1,y1,loadType,configLabel,t1,xLab,yLab,figNum)

fig = figure(figNum);
nextFigNum = figNum+1;

combTitle = strcat(t1,": ",configLabel);

loadUnits = "";

if loadType == "force"
    loadUnits = " N";
elseif loadType == "moment"
    loadUnits = " Nm";
end

hold on; grid on;

% subplot(1, 2, 1);
plot(x1, y1);
xlabel(xLab);
ylabel(yLab);
title(combTitle);

% Partition each array
[~, y_out] = partitionArray(y1);
[~, x_out] = partitionArray(x1);

% locating the max values in the second half of each array
y_max = maxAbsValue(y_out);
i_max = indexOf(y_max,y_out);
x_max = x_out(i_max);

% mark the max value on the plot
values = strcat(string(round(y_max, 2)),loadUnits," @ ",string(round(x_max, 2)),char(176));
marker = '\leftarrow   ';
text(x_max, y_max, strcat(marker, values));

hold off; grid on;

end