-- Created by Vertabelo (http://vertabelo.com)
-- Last modification date: 2024-06-18 07:20:59.649

-- tables
-- Table: Abstract_Person
CREATE TABLE Abstract_Person (
    pesel varchar2(120)  NOT NULL,
    Name varchar2(60)  NOT NULL,
    Surname varchar2(60)  NOT NULL,
    Salary integer  NOT NULL,
    bday date  NOT NULL,
    CONSTRAINT Abstract_Person_pk PRIMARY KEY (pesel)
) ;

-- Table: Cub_Information
CREATE TABLE Cub_Information (
    id integer  NOT NULL,
    Title varchar2(40)  NOT NULL,
    Starting date  NOT NULL,
    CONSTRAINT Cub_Information_pk PRIMARY KEY (id)
) ;

-- Table: Cup
CREATE TABLE Cup (
    Team_id integer  NOT NULL,
    Cub_id integer  NOT NULL,
    Amount integer  NOT NULL,
    Win date  NOT NULL,
    CONSTRAINT Cup_pk PRIMARY KEY (Team_id,Cub_id)
) ;

-- Table: Employee
CREATE TABLE Employee (
    Person_Inform varchar2(120)  NOT NULL,
    Football_Club_id integer  NOT NULL,
    CONSTRAINT Employee_pk PRIMARY KEY (Person_Inform,Football_Club_id)
) ;

-- Table: Event
CREATE TABLE Event (
    id integer  NOT NULL,
    time timestamp  NOT NULL,
    Event_type integer  NOT NULL,
    Player_Match_Player varchar2(120)  NOT NULL,
    Player_Match_Match_id integer  NOT NULL,
    CONSTRAINT Event_pk PRIMARY KEY (id)
) ;

-- Table: Event_Information
CREATE TABLE Event_Information (
    id integer  NOT NULL,
    Title varchar2(120)  NOT NULL,
    CONSTRAINT Event_Information_pk PRIMARY KEY (id)
) ;

-- Table: Fan_Shop
CREATE TABLE Fan_Shop (
    id integer  NOT NULL,
    Title varchar2(40)  NOT NULL,
    Location varchar2(50)  NOT NULL,
    Annual_Turnover integer  NOT NULL,
    Football_Club_id integer  NOT NULL,
    CONSTRAINT Fan_Shop_pk PRIMARY KEY (id)
) ;

-- Table: Football_Club
CREATE TABLE Football_Club (
    id integer  NOT NULL,
    Title varchar2(30)  NOT NULL,
    Team_id integer  NOT NULL,
    Stadium_id integer  NOT NULL,
    CONSTRAINT Football_Club_pk PRIMARY KEY (id)
) ;

-- Table: Match_Game
CREATE TABLE Match_Game (
    id integer  NOT NULL,
    Title varchar2(70)  NOT NULL,
    Type varchar2(100)  NOT NULL,
    Location varchar2(120)  NOT NULL,
    "Date" date  NOT NULL,
    Stadium_id integer  NOT NULL,
    Guest_Team integer  NOT NULL,
    Owner_Team integer  NOT NULL,
    Referee_Group_id integer  NOT NULL,
    CONSTRAINT Match_Game_pk PRIMARY KEY (id)
) ;

-- Table: Player
CREATE TABLE Player (
    Person_Inform varchar2(120)  NOT NULL,
    Position varchar2(50)  NOT NULL,
    Price integer  NOT NULL,
    Current_Team integer  NOT NULL,
    Ex_Team integer  NOT NULL,
    CONSTRAINT Player_pk PRIMARY KEY (Person_Inform)
) ;

-- Table: Player_Match
CREATE TABLE Player_Match (
    Player varchar2(120)  NOT NULL,
    Match_id integer  NOT NULL,
    CONSTRAINT Player_Match_pk PRIMARY KEY (Player,Match_id)
) ;

-- Table: Referee
CREATE TABLE Referee (
    Person_Inform varchar2(120)  NOT NULL,
    Position varchar2(50)  NOT NULL,
    Price integer  NOT NULL,
    CONSTRAINT Referee_pk PRIMARY KEY (Person_Inform)
) ;

-- Table: Referee_Group
CREATE TABLE Referee_Group (
    id integer  NOT NULL,
    Referee_Main varchar2(120)  NOT NULL,
    Referee_Right varchar2(120)  NOT NULL,
    Referee_Left varchar2(120)  NOT NULL,
    CONSTRAINT Referee_Group_pk PRIMARY KEY (id)
) ;

-- Table: Stadium
CREATE TABLE Stadium (
    id integer  NOT NULL,
    Title varchar2(50)  NOT NULL,
    Openning date  NOT NULL,
    Last_event date  NOT NULL,
    Upcoming_event date  NOT NULL,
    Accomodation integer  NOT NULL,
    Event_name varchar2(70)  NOT NULL,
    CONSTRAINT Stadium_pk PRIMARY KEY (id)
) ;

-- Table: Team
CREATE TABLE Team (
    id integer  NOT NULL,
    Title varchar2(60)  NOT NULL,
    Start_season date  NOT NULL,
    End_season date  NOT NULL,
    Trainer_Abstract_Person_pesel varchar2(120)  NOT NULL,
    CONSTRAINT Team_pk PRIMARY KEY (id)
) ;

-- Table: Trainer
CREATE TABLE Trainer (
    Abstract_Person_pesel varchar2(120)  NOT NULL,
    contract date  NOT NULL,
    CONSTRAINT Trainer_pk PRIMARY KEY (Abstract_Person_pesel)
) ;

-- foreign keys
-- Reference: Current_Match_Stadium (table: Match_Game)
ALTER TABLE Match_Game ADD CONSTRAINT Current_Match_Stadium
    FOREIGN KEY (Stadium_id)
    REFERENCES Stadium (id);

-- Reference: Current_Match_Team (table: Match_Game)
ALTER TABLE Match_Game ADD CONSTRAINT Current_Match_Team
    FOREIGN KEY (Owner_Team)
    REFERENCES Team (id);

-- Reference: Current_Team (table: Player)
ALTER TABLE Player ADD CONSTRAINT Current_Team
    FOREIGN KEY (Current_Team)
    REFERENCES Team (id);

-- Reference: Employee_Abstract_Person (table: Employee)
ALTER TABLE Employee ADD CONSTRAINT Employee_Abstract_Person
    FOREIGN KEY (Person_Inform)
    REFERENCES Abstract_Person (pesel);

-- Reference: Employee_Football_Club (table: Employee)
ALTER TABLE Employee ADD CONSTRAINT Employee_Football_Club
    FOREIGN KEY (Football_Club_id)
    REFERENCES Football_Club (id);

-- Reference: Event_Event_Information (table: Event)
ALTER TABLE Event ADD CONSTRAINT Event_Event_Information
    FOREIGN KEY (Event_type)
    REFERENCES Event_Information (id);

-- Reference: Event_Player_Match (table: Event)
ALTER TABLE Event ADD CONSTRAINT Event_Player_Match
    FOREIGN KEY (Player_Match_Player,Player_Match_Match_id)
    REFERENCES Player_Match (Player,Match_id);

-- Reference: Ex_Team (table: Player)
ALTER TABLE Player ADD CONSTRAINT Ex_Team
    FOREIGN KEY (Ex_Team)
    REFERENCES Team (id);

-- Reference: Fan_Shop_Football_Club (table: Fan_Shop)
ALTER TABLE Fan_Shop ADD CONSTRAINT Fan_Shop_Football_Club
    FOREIGN KEY (Football_Club_id)
    REFERENCES Football_Club (id);

-- Reference: Football_Club_Stadium (table: Football_Club)
ALTER TABLE Football_Club ADD CONSTRAINT Football_Club_Stadium
    FOREIGN KEY (Stadium_id)
    REFERENCES Stadium (id);

-- Reference: Football_Club_Team (table: Football_Club)
ALTER TABLE Football_Club ADD CONSTRAINT Football_Club_Team
    FOREIGN KEY (Team_id)
    REFERENCES Team (id);

-- Reference: Guest_Team (table: Match_Game)
ALTER TABLE Match_Game ADD CONSTRAINT Guest_Team
    FOREIGN KEY (Guest_Team)
    REFERENCES Team (id);

-- Reference: Match_Referee_Group (table: Match_Game)
ALTER TABLE Match_Game ADD CONSTRAINT Match_Referee_Group
    FOREIGN KEY (Referee_Group_id)
    REFERENCES Referee_Group (id);

-- Reference: Player_Abstract_Person (table: Player)
ALTER TABLE Player ADD CONSTRAINT Player_Abstract_Person
    FOREIGN KEY (Person_Inform)
    REFERENCES Abstract_Person (pesel);

-- Reference: Player_Match_Match (table: Player_Match)
ALTER TABLE Player_Match ADD CONSTRAINT Player_Match_Match
    FOREIGN KEY (Match_id)
    REFERENCES Match_Game (id);

-- Reference: Player_Match_Player (table: Player_Match)
ALTER TABLE Player_Match ADD CONSTRAINT Player_Match_Player
    FOREIGN KEY (Player)
    REFERENCES Player (Person_Inform);

-- Reference: RefereeLeft (table: Referee_Group)
ALTER TABLE Referee_Group ADD CONSTRAINT RefereeLeft
    FOREIGN KEY (Referee_Right)
    REFERENCES Referee (Person_Inform);

-- Reference: Referee_Abstract_Person (table: Referee)
ALTER TABLE Referee ADD CONSTRAINT Referee_Abstract_Person
    FOREIGN KEY (Person_Inform)
    REFERENCES Abstract_Person (pesel);

-- Reference: Referee_Main (table: Referee_Group)
ALTER TABLE Referee_Group ADD CONSTRAINT Referee_Main
    FOREIGN KEY (Referee_Main)
    REFERENCES Referee (Person_Inform);

-- Reference: Referee_Right (table: Referee_Group)
ALTER TABLE Referee_Group ADD CONSTRAINT Referee_Right
    FOREIGN KEY (Referee_Left)
    REFERENCES Referee (Person_Inform);

-- Reference: Team_Cup_Cub (table: Cup)
ALTER TABLE Cup ADD CONSTRAINT Team_Cup_Cub
    FOREIGN KEY (Cub_id)
    REFERENCES Cub_Information (id);

-- Reference: Team_Cup_Team (table: Cup)
ALTER TABLE Cup ADD CONSTRAINT Team_Cup_Team
    FOREIGN KEY (Team_id)
    REFERENCES Team (id);

-- Reference: Team_Trainer (table: Team)
ALTER TABLE Team ADD CONSTRAINT Team_Trainer
    FOREIGN KEY (Trainer_Abstract_Person_pesel)
    REFERENCES Trainer (Abstract_Person_pesel);

-- Reference: Trainer_Abstract_Person (table: Trainer)
ALTER TABLE Trainer ADD CONSTRAINT Trainer_Abstract_Person
    FOREIGN KEY (Abstract_Person_pesel)
    REFERENCES Abstract_Person (pesel);

-- End of file.

