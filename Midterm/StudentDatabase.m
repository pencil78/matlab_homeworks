
classdef StudentDatabase
    properties
        Students = []; 
    end
    
    methods
        % add new students
        function obj = addStudent(obj, student)
            obj.Students = [obj.Students, student];
        end
        
        % find students by ID
        function student = findStudentByID(obj, ID)
            student = [];
            for i = 1:length(obj.Students)
                if obj.Students(i).ID == ID
                    student = obj.Students(i);
                    break;
                end
            end
        end
        
        % make list of students by major
        function studentsList = getStudentsByMajor(obj, major)
            studentsList = [];
            for i = 1:length(obj.Students)
                if strcmp(obj.Students(i).Major, major)
                    studentsList = [studentsList, obj.Students(i)];
                end
            end
        end
        
        % save to a .mat file
        function saveDatabase(obj, filename)
                save(filename, 'obj');
        end
        
        % load from a file
        function obj = loadDatabase(obj, filename)
                loadedData = load(filename);
                obj = loadedData.obj;
        end
    end
end