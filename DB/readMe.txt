load the courses from a file
load_course

% list students
list_course

% add a course
add_course(Name,Location,Time,Instructor) 

% remove course from data
delete_course(Name,Location,Time,Instructor) 

% save modified records in place of old ones.
save_course

%identifys teacher and classes taught
is_teaching(LastName,Period)

%identifes instructor
is_instructor(LastName,Course)

%identifes if instructor is buzzy
is_busy(LastName, Days, Hour, Location)

%identifes if instructos can meet
cannot_meet(Time, Instructor1, Instructor2)

schedule_conflict(Course1, Course2)