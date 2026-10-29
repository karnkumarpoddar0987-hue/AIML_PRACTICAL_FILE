/*
Q4. Develop a timetable database and answer queries
regarding faculty, subjects, and classrooms.
*/

timetable(monday, python, sharma, room101).
timetable(tuesday, ai, verma, room102).
timetable(wednesday, java, kumar, room103).

main :-
    timetable(Day, Subject, Faculty, Room),
    write('Day: '), write(Day), nl,
    write('Subject: '), write(Subject), nl,
    write('Faculty: '), write(Faculty), nl,
    write('Classroom: '), write(Room), nl,
    nl,
    fail.
main.