
% plot the age distribution
function VisualizeAge(students)
    ages = [students.Age];
    figure;
    histogram(ages, 'Normalization', 'pdf');
    title('Age Distribution of Students');
    xlabel('Age');
    ylabel('Probability');
end