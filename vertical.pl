% Knowledge base:
vertical(line(point(X, Y), point(X, Z))).
horizontal(line(point(X, Y), point(Z, Y))).

% queries:

% 1) which Y results in a horizontal line given a point(1,1) and another one with X=2
horizontal(line(point(1, 1), point(2, Y))).

% what second point gives a horizontal line from point(2, 3)
horizontal(line(point(2, 3), P)).