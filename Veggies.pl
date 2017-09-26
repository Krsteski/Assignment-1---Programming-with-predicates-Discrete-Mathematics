likes(emil,tomatoes).
likes(emil,cucumber).
likes(line,carrot).
likes(line,onions).

hungry(emil).
hungry(line).

male(emil).
male(daniel).

female(line).
female(lone).

eats(emil,tomatoes) :-
    likes(emil,tomatoes).

ripe(tomatoes).
ripe(cucumber).
ripe(carrot).
ripe(onions).


eats(emil) :-
    hungry(emil).

eats(line) :-
    hungry(line),
    ripe(carrot).


cooks(line):-
    ripe(carrot),
    ripe(onions).

cooks(emil) :-
    ripe(tomatoes),
    ripe(cucumber).


does_emil_eat :-
    hungry(emil),
    eats(emil),
    write('When Emil is hungry, he eats').

does_line_cook :-
    hungry(line),
    cooks(line),
    write('When the veggies are ripe, Line cooks').
