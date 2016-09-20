/*These are just simple math things to keep in mind when work on the time code.
Every room has a step speed of 60 so 
60 steps = 1 rl(real life) seconds
3,600 steps = 1 rl minute
216,000 steps = 1 rl hour

tl_time is to keep trake of the steps.
var_clock is a visual for the in game clock that the player sees.
the reason why these two var's are sperate is because I don't know the equasion to make these into one. 

var_dn_cycle is to keep track if it's day or night. 0 is am and 1 is pm.
var_day is to keep track of what day it is. 0 is day one, 1 day 2, and 2 day 3.
24 rl minutes will be one day cycal in game and 1 rl minute will be 1 hour in game.
So every day will be 86,400 steps for a total of 259,200 steps for all days put together. 
      step chart
# of steps|time of day
---------------------
--------day 1--------
---------------------
0         |12am         |
3600      |1am          |
7200      |2am          |
10800     |3am          |
14400     |4am          |
18000     |5am          |
21600     |6am          |
25200     |7am          |
28800     |8am          |
32400     |9am          |
36000     |10am         |
39600     |11am         |
43200     |12pm         |
46800     |1pm          |
50400     |2pm          |
54000     |3pm          |
57600     |4pm          |
61200     |5pm          |
64800     |6pm          |
68400     |7pm          |
72000     |8pm          |
75600     |9pm          |
79200     |10pm         |
82800     |11pm         |
---------------------
--------day 2--------
---------------------
86400     |12am         |
90000     |1am          |
93600     |2am          |
97200     |3am          |
100800    |4am          |
104400    |5am          |
108000    |6am          |
111600    |7am          |
115200    |8am          |
118800    |9am          |
122400    |10am         |
126000    |11am         |
129600    |12pm         |
133200    |1pm          |
136800    |2pm          |
140400    |3pm          |
144000    |4pm          |
147600    |5pm          |
151200    |6pm          |
154800    |7pm          |
158400    |8pm          |
162000    |9pm          |
165600    |10pm         |
169200    |11pm         |
---------------------
--------day 3--------
---------------------
172800    |12am         |
176400    |1am          |
180000    |2am          |
183600    |3am          |
187200    |4am          |
190800    |5am          |
194400    |6am          |
198000    |7am          |
201600    |8am          |
205200    |9am          |
208800    |10am         |
212400    |11am         |
216000    |12pm         |
219600    |1pm          |
223200    |2pm          |
226800    |3pm          |
230400    |4pm          |
234000    |5pm          |
237600    |6pm          |
241200    |7pm          |
244800    |8pm          |
248400    |9pm          |
252000    |10pm         |
255600    |11pm         |
259200    |12pm         |right before midnight of the final day. This will be the time where the wizard will come back the see how many of the CCC's you got. 
