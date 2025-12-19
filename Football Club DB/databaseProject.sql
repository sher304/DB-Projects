-- INSERT DATA TO FOOTBALL_CLUB TABLE
insert INTO Football_Club (id, title, team_id, stadium_id) VALUES (1, 'Paris Saint Germain', 1, 1);
INSERT into Football_Club (id, title, team_id, stadium_id) values (2, 'Real Madrir', 2, 2);
insert into Football_Club (id, title, team_id, stadium_id) values (3, 'Lech Poznań', 3, 3);
INSERT into Football_Club (id, title, team_id, stadium_id) values (4, 'Tottenham Hotspur', 4, 4);
select * from Football_Club;

-- INSERT DATA TO STADIUM TABLE
INSERT into Stadium (id, title, openning, last_event, upcoming_event, accomodation, event_name)
VALUES (1, 'Parc des Princes', DATE '2017-08-07', DATE '2024-08-05', DATE '2024-12-05', 48583, 'Ligue 1');
INSERT into Stadium (id, title, openning, last_event, upcoming_event, accomodation, event_name)
VALUES (2, 'Santiago Bernabeu', DATE '1947-11-12', DATE '2024-08-05', DATE '2024-11-05', 81044, 'La Liga');
INSERT into Stadium (id, title, openning, last_event, upcoming_event, accomodation, event_name)
VALUES (3, 'Stadion Poznań', DATE '1980-02-08', DATE '2024-05-05', DATE '2024-12-05', 42837, 'Ekstraklasa');
INSERT into Stadium (id, title, openning, last_event, upcoming_event, accomodation, event_name)
VALUES (4, 'Tottenham Hotspur Stadium', DATE '2019-03-04', DATE '2024-05-05', DATE '2024-11-05', 62850, 'English Premier League');
select * from Stadium;

-- INSERT DATA TO TEAM TABLE
insert INTO Team (id, title, start_season, end_season, TRAINER_ABSTRACT_PERSON_PESEL) VALUES (1, 'Paris Saint Germain', DATE '2023-01-09', DATE '2024-01-07', '3260');
insert INTO Team (id, title, start_season, end_season, TRAINER_ABSTRACT_PERSON_PESEL) VALUES (2, 'Real Madrid', DATE '2023-01-09', DATE '2024-01-07', '3220');
insert INTO Team (id, title, start_season, end_season, TRAINER_ABSTRACT_PERSON_PESEL) VALUES (3, 'Lech Poznań',DATE '2023-01-09', DATE '2024-01-07', '3200');
insert INTO Team (id, title, start_season, end_season, TRAINER_ABSTRACT_PERSON_PESEL) VALUES (4, 'Tottenham', DATE'2023-01-09', DATE '2024-01-07', '3240');
select * from Team;

-- INSERT DATA TO CUP TABLE
insert into Cup(team_id, cub_id, amount, win)
values (2, 1, 14, DATE '2022-06-01');
insert into Cup(team_id, cub_id, amount, win)
values (2, 2, 36, DATE '2024-05-01');
insert into Cup(team_id, cub_id, amount, win)
values (1, 3, 14, DATE  '2024-06-01');
insert into Cup(team_id, cub_id, amount, win)
values (3, 4, 6, DATE '2022-06-01');
insert into Cup(team_id, cub_id, amount, win)
values (4, 5, 2, DATE '1961-06-01');
selecT * from Cup;

-- INSERT DATA TO CUP_INFORMATION TABLE
insert into Cub_Information (id, title, starting) VALUES (1, 'UEFA Champions League', DATE '2024-06-01');
insert into Cub_Information (id, title, starting) VALUES (2, 'LaLiga EA Sports', DATE '2024-09-01');
insert into Cub_Information (id, title, starting) VALUES (3, 'Ligue 1 Uber Eats', DATE '2024-09-01');
insert into Cub_Information (id, title, starting) VALUES (4, 'Ekstraklasa w piłce nożnej', DATE '2024-09-01');
insert into Cub_Information (id, title, starting) VALUES (5, 'Premier League', DATE  '2024-09-01');
select * from Cub_Information;

-- INSERT DATA TO FAN_SHOP TABLE
insert into Fan_Shop (id, title, location, annual_turnover, football_club_id)
VALUES (1, 'Paris Saint-Germain', '92 Av. des Champs-Élysées', 8753500, 1);
insert into Fan_Shop (id, title, location, annual_turnover, football_club_id)
VALUES (2, 'Real Madrid Office Store', 'Av. de Concha Espina, 1', 9753500, 2);
insert into Fan_Shop (id, title, location, annual_turnover, football_club_id)
VALUES (3, 'Fan Shop - Lech Poznan', 'Półwiejska 12, 61-888 Poznań', 353500, 3);
insert into Fan_Shop (id, title, location, annual_turnover, football_club_id)
VALUES (4, 'Tottenham Experience - Spurs Shop', 'High Rd, London N17 0AP', 6353500, 4);
select * from Fan_Shop;

-- INSERT DATA TO Abstract_Person TABLE
INSERT INTO Abstract_Person (pesel, name, surname, salary, bday)
VALUES (2087, 'Hakimi', 'Achraf', 14550000, Date '1998-11-04');
INSERT INTO Abstract_Person (pesel, name, surname, salary, bday)
VALUES (2090, 'Brahim', 'Diaz', 1920000, Date  '1999-03-08');
INSERT INTO Abstract_Person (pesel, name, surname, salary, bday)
VALUES (1020, 'Mikael', 'Ishak', 780000, Date '1993-03-03');
INSERT INTO Abstract_Person (pesel, name, surname, salary, bday)
VALUES (3020, 'Son', 'Heung Min', 9880000, Date  '1992-08-07');
INSERT INTO Abstract_Person (pesel, name, surname, salary, bday)
VALUES (1820, 'Krystoff', 'Guardioll', 10000, Date '1990-08-07');
INSERT INTO Abstract_Person (pesel, name, surname, salary, bday)
VALUES (1120, 'Moran', 'Leo', 10000, Date '1990-08-07');
INSERT INTO Abstract_Person (pesel, name, surname, salary, bday)
VALUES (3120, 'Ger', 'Rounal', 10000, Date  '1990-08-07');
INSERT INTO Abstract_Person (pesel, name, surname, salary, bday)
VALUES (3150, 'Ger', 'Chif', 5300, Date '1990-02-07');
INSERT INTO Abstract_Person (pesel, name, surname, salary, bday)
VALUES (3160, 'Albert', 'Huan', 3300, Date '1995-02-05');
INSERT INTO Abstract_Person (pesel, name, surname, salary, bday)
VALUES (3260, 'Toni', 'Kroos', 3300, Date '1995-02-05');
INSERT INTO Abstract_Person (pesel, name, surname, salary, bday)
VALUES (3220, 'Pepe', 'Guardiol', 3300, Date '1991-02-05');
INSERT INTO Abstract_Person (pesel, name, surname, salary, bday)
VALUES (3200, 'Jose', 'Maurinho', 1300, Date '1991-02-05');
INSERT INTO Abstract_Person (pesel, name, surname, salary, bday)
VALUES (3240, 'Habi', 'Alonso', 1300, Date '1991-02-05');
SELECT * from Abstract_Person;

-- INSERT DATA TO PLAYER TABLE
INSERT into Player (person_inform, position, price, current_team, ex_team)
VALUES (2087, 'Right-Back', 51000000, 1, 2);
INSERT into Player (person_inform, position, price, current_team, ex_team)
VALUES (2090, 'Attacking Midfield', 31000000, 2, 1);
INSERT into Player (person_inform, position, price, current_team, ex_team)
VALUES (1020, 'Striker', 12000000, 3, 2);
INSERT into Player (person_inform, position, price, current_team, ex_team)
VALUES (3020, 'Striker', 50000000, 4, 3);
SELECT * from Player;

--INSERT DATA TO TRAINER TABLE
insert into TRAINER values ('3260', Date '2024-12-31');
insert into TRAINER values ('3220', Date '2025-01-31');
insert into TRAINER values ('3200', Date '2025-05-31');
insert into TRAINER values ('3240', Date '2026-03-31');
select * from TRAINER;

-- INSERT DATA TO REFEREE TABLE
INSERT INTO Referee(person_inform, position, price) VALUES (1820, 'Main', 23000);
INSERT INTO Referee(person_inform, position, price) values (1120, 'Right Flang', 20000);
INSERT INTO Referee(person_inform, position, price) values (3120, 'Left Flang', 20000);
SELECT * from Referee;

-- INSERT DATA TO REFEREE_GROUP TABLE
INSERT into Referee_Group (id, referee_right, referee_left, referee_main) VALUES (1, 3120, 1120, 1820);
select * from Referee_Group;

-- INSERT INTO MATCH TABLE
INSERT into Match_Game (id, title, type, location, "Date", stadium_id, guest_team, owner_team, referee_group_id)
VALUES (1, 'PSG VS Real Madrid', 'League of Champions Final', 'London', DATE '2024-06-01', 4, 2, 1, 1);
INSERT into Match_Game (id, title, type, location, "Date", stadium_id, guest_team, owner_team, referee_group_id)
VALUES (2, 'PSG VS Tottenham', 'League of Champions Semifinal', 'Paris', DATE '2024-07-08', 1, 4, 1, 1);
select * from Match_Game;

-- INSERT INTO EMPLOYEE TABLE
INSERT into Employee (person_inform, football_club_id) VALUES (3120, 2);
INSERT into Employee (person_inform, football_club_id) VALUES (3150, 1);
select * from Employee;


-- Display player data, club where play and price.
SELECT Abstract_Person.Name, Abstract_Person.Surname, Team.Title, Player.Position, Player.Price from Abstract_Person
inner JOIN Player on Abstract_Person.pesel = Player.Person_Inform
inner JOIN Team on Team.id = Player.Current_Team;


-- DISPLAY ALL PLAYERS FROM MATCH
SELECT Abstract_Person.Name, Abstract_Person.Surname, Match_Game.title, Match_Game."Date" from Abstract_Person
inner JOIN Player on Abstract_Person.pesel = Player.Person_Inform
INNER JOIN Team on Player.Current_Team = Team.id
inner JOIN Match_Game on Match_Game.Guest_Team = Team.id or Match_Game.Owner_Team = Team.id;

-- DISPLAY PERSON DATA AND CLUB WITH SALARY
select Abstract_Person.Name, Abstract_Person.Surname, Football_Club.Title, Abstract_Person.Salary from Abstract_Person
inner JOIN Employee on Abstract_Person.pesel = Employee.Person_Inform
INNER JOIN Football_Club on Employee.football_club_id = Football_Club.id;

-- Display how many trophies has a club from each competition
select t.TITLE, ci.TITLE, c.AMOUNT from TEAM t
join CUP c on c.TEAM_ID = t.ID
join CUB_INFORMATION ci on c.CUB_ID = ci.ID;

-- Display how many trophies has the Real Madrid club from each competition

-- 1) SELECT statements that include at least two tables and contain a WHERE clause
select t.TITLE, ci.TITLE, c.AMOUNT from TEAM t
join CUP c on c.TEAM_ID = t.ID
join CUB_INFORMATION ci on c.CUB_ID = ci.ID
where t.TITLE = 'Real Madrid';

-- Display how many trophies has the Real Madrid club from League of Champions competition
select t.TITLE, ci.TITLE, c.AMOUNT from TEAM t
join CUP c on c.TEAM_ID = t.ID
join CUB_INFORMATION ci on c.CUB_ID = ci.ID
where t.TITLE = 'Real Madrid' and ci.ID = 1;

-- 2) SELECT statements with aggregate functions (2 points)
--Select avg salary from club.
select f.TITLE, avg(absp.SALARY) from ABSTRACT_PERSON absp
join EMPLOYEE e on absp.PESEL = e.PERSON_INFORM
join FOOTBALL_CLUB f on e.football_club_id = f.ID
group by absp.NAME, absp.SURNAME, f.TITLE;

-- How much trophies won each club
select TEAM.title, count(Cup.cub_id) from TEAM
join CUP on CUP.TEAM_ID = Team.id
group by TEAM.title ;

-- 3) SELECT statements with a subquery
-- Select clubs where minimum one employee
select Football_Club.title
from Football_Club
where id in (select football_club_id from Employee);

-- Select players in a specific team, for example to PSG with its id 1
Select Abstract_Person.name, Abstract_Person.surname
from Abstract_Person
where pesel in (select person_inform from Player where current_team = 1);

-- 4) statement with a correlated subquery
-- select fan shops with an annual turnover higher than the average annual turnover
SELECT fs.title, fs.location, fs.annual_turnover, fc.title AS club_title
FROM Fan_Shop fs
INNER JOIN Football_Club fc ON fs.football_club_id = fc.id
WHERE fs.annual_turnover > (SELECT AVG(fs2.annual_turnover)
                            FROM Fan_Shop fs2
                            WHERE fs2.football_club_id = fs.football_club_id);

-- UPDATE to set annual turnover to the highest annual turnover
UPDATE Fan_Shop fs
SET fs.annual_turnover = (SELECT MAX(fs2.annual_turnover)
                          FROM Fan_Shop fs2
                          WHERE fs2.football_club_id = fs.football_club_id)
WHERE fs.annual_turnover < (SELECT MAX(fs2.annual_turnover)
                            FROM Fan_Shop fs2
                            WHERE fs2.football_club_id = fs.football_club_id);

-- DELETE statement with a subquery to remove fan shops that have an annual turnover lower than the average annual turnover of all fan shops
DELETE FROM Fan_Shop
WHERE annual_turnover < (SELECT AVG(annual_turnover) FROM Fan_Shop);

