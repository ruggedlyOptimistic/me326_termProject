%% Format Subplots
% Keep the main script code clean!

function [fig, nextFigNum] = formatSubplot(x1,y1,x1units,y1units,x2,y2,x2units,y2units,configLabel,t1,t2, xLab, yLab, figNum)

fig = figure(figNum);
nextFigNum = figNum+1;

hold on; grid on;

subplot(1, 2, 1);
plot(x1, y1);
xlabel(xLab);
ylabel(yLab);
title(t1);

[~, y1_out] = partitionArray(y1);
[~, x1_out] = partitionArray(x1);

% locating the max values in the second half of each array
y1_max = max(y1_out);
i1_max = indexOf(y1_max,y1_out);
x1_max = x1_out(i1_max);

% mark the max value on the plot
values = strcat(string(round(y1_max,2)), y1units," @ ",string(round(x1_max, 2))," ", x1units);
marker = '\leftarrow   ';
text(x1_max, y1_max, strcat(marker, values));

hold on;
grid on;
subplot(1, 2, 2);
plot(x2, y2);
xlabel(xLab);
ylabel(yLab);
title(t2);

[~, y2_out] = partitionArray(y2);
[~, x2_out] = partitionArray(x2);

% locating the max values in the second half of each array
y2_max = max(y2_out);
i2_max = indexOf(y2_max,y2_out);
x2_max = x2_out(i2_max);

% mark the max value on the plot
values = strcat(string(round(y2_max,2)),y2units," @ ",string(round(x2_max, 2))," ",x2units);
marker = '\leftarrow   ';
text(x2_max, y2_max, strcat(marker, values));

hold off; grid on;
fontname(fig, "default")
sgtitle(configLabel,'FontWeight','bold');

end