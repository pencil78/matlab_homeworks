
classdef Student
    properties
        ID
        Name
        Age
        GPA
        Major
    end
    
    methods
        function obj = Student(ID, Name, Age, GPA, Major)
            if nargin > 0
                obj.ID = ID;
                obj.Name = Name;
                obj.Age = Age;
                obj.GPA = GPA;
                obj.Major = Major;
            end
        end
        
        % display student information
        function displayInfo(obj)
            fprintf('Student ID: %d\n', obj.ID);
            fprintf('Student name: %s\n', obj.Name);
            fprintf('Student age: %d\n', obj.Age);
            fprintf('Student GPA: %.2f\n', obj.GPA);
            fprintf('Student major: %s\n \n', obj.Major);
        end
    end
end
