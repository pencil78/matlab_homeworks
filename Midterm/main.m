
% create student database
db = StudentDatabase();

% add students to database
db = db.addStudent(Student(1, 'John Smith', 18, 3.4, 'History'));
db = db.addStudent(Student(2, 'Emma Brown', 22, 3.8, 'Mathematics'));
db = db.addStudent(Student(3, 'Mike Johnson', 20, 2.8, 'Engineering'));
db = db.addStudent(Student(4, 'Henry Mara', 19, 2.8, 'English'));
db = db.addStudent(Student(5, 'Diana Ross', 20, 3.7, 'Business'));
db = db.addStudent(Student(6, 'Eliza Ash', 21, 2.3, 'Mathematics'));
db = db.addStudent(Student(7, 'Astrid Jess', 18, 3.3, 'Business'));
db = db.addStudent(Student(8, 'Liam Everett', 20, 3.9, 'Engineering'));
db = db.addStudent(Student(9, 'Makenzie Shulze', 22, 3.5, 'Psychology'));
db = db.addStudent(Student(10, 'Gwen Stacey', 21, 3.8, 'Psychology'));

% display student of ID 10
student10 = db.findStudentByID(10);
if ~isempty(student10)
    fprintf('\n*******Student 10 Found******* \n \n')
    student10.displayInfo();
else
    fprintf('*******Student not found*******\n');
end

% find all students in engineering
engineeringStudents = db.getStudentsByMajor('Engineering');
fprintf(['***Students in Engineering*** \n \n']);
for i = 1:length(engineeringStudents)
    engineeringStudents(i).displayInfo();
end

% save database to a file
db.saveDatabase('student_database.mat');

% load database from the file
db2 = StudentDatabase();
db2 = db2.loadDatabase('student_database.mat');

% Visualizations
VisualizeGPA(db2.Students);
AverageGPAByMajor(db2.Students);
VisualizeAge(db2.Students);
