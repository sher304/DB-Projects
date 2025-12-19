-- Created by Vertabelo (http://vertabelo.com)
-- Last modification date: 2024-06-18 07:20:59.649

-- foreign keys
ALTER TABLE Match_Game
    DROP CONSTRAINT Current_Match_Stadium;

ALTER TABLE Match_Game
    DROP CONSTRAINT Current_Match_Team;

ALTER TABLE Player
    DROP CONSTRAINT Current_Team;

ALTER TABLE Employee
    DROP CONSTRAINT Employee_Abstract_Person;

ALTER TABLE Employee
    DROP CONSTRAINT Employee_Football_Club;

ALTER TABLE Event
    DROP CONSTRAINT Event_Event_Information;

ALTER TABLE Event
    DROP CONSTRAINT Event_Player_Match;

ALTER TABLE Player
    DROP CONSTRAINT Ex_Team;

ALTER TABLE Fan_Shop
    DROP CONSTRAINT Fan_Shop_Football_Club;

ALTER TABLE Football_Club
    DROP CONSTRAINT Football_Club_Stadium;

ALTER TABLE Football_Club
    DROP CONSTRAINT Football_Club_Team;

ALTER TABLE Match_Game
    DROP CONSTRAINT Guest_Team;

ALTER TABLE Match_Game
    DROP CONSTRAINT Match_Referee_Group;

ALTER TABLE Player
    DROP CONSTRAINT Player_Abstract_Person;

ALTER TABLE Player_Match
    DROP CONSTRAINT Player_Match_Match;

ALTER TABLE Player_Match
    DROP CONSTRAINT Player_Match_Player;

ALTER TABLE Referee_Group
    DROP CONSTRAINT RefereeLeft;

ALTER TABLE Referee
    DROP CONSTRAINT Referee_Abstract_Person;

ALTER TABLE Referee_Group
    DROP CONSTRAINT Referee_Main;

ALTER TABLE Referee_Group
    DROP CONSTRAINT Referee_Right;

ALTER TABLE Cup
    DROP CONSTRAINT Team_Cup_Cub;

ALTER TABLE Cup
    DROP CONSTRAINT Team_Cup_Team;

ALTER TABLE Team
    DROP CONSTRAINT Team_Trainer;

ALTER TABLE Trainer
    DROP CONSTRAINT Trainer_Abstract_Person;

-- tables
DROP TABLE Abstract_Person;

DROP TABLE Cub_Information;

DROP TABLE Cup;

DROP TABLE Employee;

DROP TABLE Event;

DROP TABLE Event_Information;

DROP TABLE Fan_Shop;

DROP TABLE Football_Club;

DROP TABLE Match_Game;

DROP TABLE Player;

DROP TABLE Player_Match;

DROP TABLE Referee;

DROP TABLE Referee_Group;

DROP TABLE Stadium;

DROP TABLE Team;

DROP TABLE Trainer;

-- End of file.

