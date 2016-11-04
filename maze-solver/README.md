# Maze Solver #

This program uses a breadth first search to map distances from the starting point. To find the shortest solution it traces backwards from the end point, starting with the lowest number and counting down.

To try it run maze-solver.rb with a text file maze as an argument.

Ex:
```
ruby maze-solver.rb maze1.txt
```

Produces:
```
****************
*           xxE*
* ********* x***
*    *    * x  *
**** *    * x  *
*    ****** x  *
*Sxxxxxxxxxxx  *
****************
```
