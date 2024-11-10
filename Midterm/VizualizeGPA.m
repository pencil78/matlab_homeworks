
% plot the GPA distribution as a histogram
function VisualizeGPA(students)
    gpas = [students.GPA];
    figure;
    histogram(gpas, 'Normalization', 'pdf');
    title('GPA Distribution');
    xlabel('GPA');
    ylabel('Probability');
    hold on;
    x = linspace(0, 4, 100);
    y = normpdf(x, mean(gpas), std(gpas));
    plot(x, y, 'r', 'LineWidth', 2);
    hold off;
end