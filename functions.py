# Please install the random and pymysql modules before the execution of program.
# Also import the ustra_assignment.sql in your localhost database server before the execution of program.


import random
# import random module to generate random data-sets.

import pymysql
# PyMySQL is an interface for connecting to a MySQL database server from Python.

# WE use mysql to store our data in 'teams' database installed on localhost 127.0.0.1 having username as "root" and has no password.
#set mysql connection before execution accordingly.
conn=pymysql.connect("localhost","usernname",'password',"database_name")

# these nested lists are generated using split function from simple lists.
# clubs nested list contains teams along with their respected states.
clubs=[['Rhino Hurricanes','Uttar Pradesh'],
       ['Midnight Stars','J&K'],
       ['Rocky Assassins' ,'Delhi'],
       ['Skull Fireballs' ,'Goa'],
       ['Spirit Blockers' ,'Andra Pradesh'],
       ['Wind Kamikaze Pilots' ,'Kerala'],
       ['Retro Chuckers' ,'Uttarakhand'],
       ['Venomous Cyborgs ','West Bengal'],
       ['Quicksilver Ninjas ','Sikkim'],
       ['Retro Heroes' ,'Haryana'],
       ['Lions ','Punjab'],
       ['Raging Spanners ','Himachal Pradesh'],
       ['Poison Spiders ','Odisha'],
       ['Black Bullets ','Uttar Pradesh'],
       ['Thunder Commandos ','Uttar Pradesh'],
       ['Venomous Sharks ','Haryana'],
       ['Killer Stars' ,'Nagaland'],
       ['Knockout Busters' ,'Madhya Pradesh'],
       ['Real Madrid ','Delhi'],
       ['Demolition Piledrivers' ,'Rajasthan'],
       ['Flying Xpress ','Delhi'],
       ['Silver Wasps ','Uttarakhand'],
       ['The Showstoppers' ,'Delhi'],
       ['Wolfsburg' ,'Haryana']]

#last_winner nested list conatians the last year winner teams
last_winner=[['Striking Sharpshooters ','Delhi'],
             ['Black & White Gangstaz','Andra Pradesh'],
             ['Blue Bombers ','Haryana'],
             ['Blue Geckos', 'Madhya Pradesh'],
             ['Alpha Blockers' ,'Rajasthan'],
             ['Muffin Racers ','Maharashtra'],
             ['Tornado Geckos ','Punjab'],
             ['Midnight Miners ','Uttar Pradesh']]

cr = conn.cursor()

#it will generate 8 groups having 4 teams in them named as Group A, Group B and so on.
for k in range(0, 8):
        group = []

        # select first team of the group randomly from nested list of last year winners.
        team1 = random.choice(last_winner)

        # add the first selected team to the "group" list
        group.append(team1)

        # remove the selected team from 'last_winner' nested list to ensure that it will never come in another group.
        last_winner.remove(team1)

        # add the rest of 3 teams to the 'group' list
        #this loop will continue untill we get 4 teams in a group.
        while len(group) < 4:
            #selecting teams from 'clubs' nested list.
            team2 = random.choice(clubs)

            # each group contains only one team from a state.
            while team2[1] not in (item for sublist in group for item in sublist):
                group.append(team2)

                # remove the selected team from 'clubs' nested list to ensure that it will never come in another group.
                clubs.remove(team2)

        #print group of 4 teams along with their states.
        #chr method is used to alphabets like A, B, C .... with thier ascii code.
        print("Group" + chr(k + 65) + ":")
        for i in range(4):
            print(group[i][0], "(" + group[i][1] + ")")

            # add data about the group into 'matches' table of the database 'teams' with team name, its state, its group name.
            query = "insert into matches(Team,State,Group_Name) values('"+group[i][0]+"','"+group[i][1]+"','"+"Group "+chr(k + 65)+"')"
            # execute the query
            cr.execute(query)

            # add description to the first team of each group.
            description="last year qualifier"
            query1="update matches set Description='"+description+"' where Team='"+ group[0][0] +"'"
            cr.execute(query1)


        conn.commit()
conn.close()


