% Example of handling records: load, add, remove, save
:-dynamic(course/4).

% load the course records from a file
load_students :- consult('fall16sched.pl'), tell('fall16sched.pl.bak'),
	listing(course), told.

% list students
list_course :- listing(course).

% add a course
add_course(Name,Location,Time,Instructor) :- assert(course(Location,Time,Instructor)),
	write(student(SId, Name, [])), write(' added.').

% remove course from data
delete_course(Name,Location,Time,Instructor) :- retract(student(SId, Name, List)),
	write(student(SId, Name, List)), write(' deleted.').

% save modified records in place of old ones.
save_course:- tell('fall16sched.pl'), listing(course), told.

is_teaching(LastName,Period):-
	course().
