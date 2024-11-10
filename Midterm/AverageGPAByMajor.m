
% plot the average GPA by major
function AverageGPAByMajor(students)
    majors = {students.Major};
    gpas = [students.GPA];
    tbl = table(majors', gpas', 'VariableNames', {'Major', 'GPA'});
    avgGPA = varfun(@mean, tbl, 'InputVariables', 'GPA', 'GroupingVariables', 'Major');
    
    figure;
    bar(avgGPA.mean_GPA);
    set(gca, 'XTickLabel', avgGPA.Major, 'XTickLabelRotation', 45);
    title('Average GPA by Major');
    ylabel('Average GPA');
end