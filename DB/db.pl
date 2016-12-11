% Example of handling records: load, add, remove, save
:-dynamic(course/4).

% load the course records from a file
load_course:- consult('fall16sched.pl'), tell('fall16sched.pl.bak'), listing(course), told.

% list students
list_course :- listing(course).

% add a course
add_course(Name,Location,Time,Instructor) :- assert(course(Name,Location,Time,Instructor)),write(' added.').

% remove course from data
delete_course(Name,Location,Time,Instructor) :- retract(course(Name,Location,Time,Instructor)), write(' deleted.').

% save modified records in place of old ones.
save_course:- tell('fall16sched.pl'), listing(course), told.

%identifys teacher and classes taught
is_teaching(LastName,Period):-	course(_,_,Period,instructor(LastName)).

%identifes instructor
is_instructor(LastName,Course):- course(Course,_,_,instructor(LastName)).

%identifes if instructor is buzzy
is_busy(LastName, Days, Hour, Location):- course(_,Location,time(Days,Hour),instructor(LastName)).

%identifes if instructos can meet
cannot_meet(Time, Instructor1, Instructor2):-course(_,_,Time,instructor(Instructor1)),course(_,_,Time,instructor(Instructor2)).

schedule_conflict(Course1, Course2) :- course(Course1,_,Time,_),course(Course2,_,Time,_).
