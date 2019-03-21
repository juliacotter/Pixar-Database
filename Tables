-- create 10 tables

CREATE TABLE Movie(
Movie_Title   varchar(20)   NOT NULL,
Release_Date  date(),
Runtime	      int(3),
PRIMARY KEY (Movie_Title)
);

CREATE TABLE Staff(
Staff_ID     varchar(4)    NOT NULL,
First_Name  varchar(20),
Last_Name   varchar(20),
Position    varchar(20),
PRIMARY KEY (StaffID)
);

CREATE TABLE Multiple_Movies(
Movie_Title   varchar(20)           NOT NULL,
Staff_ID       varchar(4)            NOT NULL,
PRIMARY KEY (Movie_Title, Staff_ID),
FOREIGN KEY (Movie_Title)
  REFERENCES Movie(Movie_Title),
FOREIGN KEY (Staff_ID)
  REFERENCES Staff(Staff_ID)
);

CREATE TABLE Budget(
Budget_ID           varchar(4)      NOT NULL,
Movie_Title         varchar(20)     NOT NULL,
Production_Budget   int(12),
PRIMARY KEY (Budget_ID),
FOREIGN KEY (Movie_Title)
  REFERENCES Movie(Movie_Title)
);

CREATE TABLE Income(
Income_ID	varchar(4)	NOT NULL,
Movie_Title	varchar(20)	NOT NULL,
Opening_Weekend	int(12),
Domestic_Gross	int(12),
Worldwide_Gross	int(12),
FOREIGN KEY (Movie_Title)
  REFERENCES Movie(Movie_Title)
);

CREATE TABLE Soundtrack(
TrackNo		int(3)		NOT NULL,
Song_Name	varchar(30),
Length		varchar(4),
PRIMARY KEY (TrackNo)
);

CREATE TABLE Multiple_Songs(
Movie_Title   varchar(20)       NOT NULL,
TrackNo       int(3)            NOT NULL,
PRIMARY KEY (Movie_Title, TrackNo),
FOREIGN KEY (Movie_Title)
  REFERENCES Movie(Movie_Title),
FOREIGN KEY (TrackNo)
  REFERENCES Soundtrack(TrackNo)
);

CREATE TABLE Soundtrack_Singer(
TrackNo		int(2)		NOT NULL,
Singer		varchar(20)	NOT NULL,
FOREIGN KEY (TrackNo)
  REFERENCES Soundtrack(TrackNo)
);

CREATE TABLE Critics(
Critic_ID	varchar(4)	NOT NULL,
Critic_Name	varchar(20),
PRIMARY KEY (Critic_ID)
);

CREATE TABLE Movie_Review(
Movie_Title   varchar(20)           NOT NULL,
Critic_ID      varchar(5)            NOT NULL,
Rating	      decimal(4,1),
PRIMARY KEY (Movie_Title, Critic_ID)
FOREIGN KEY (Movie_Title)
  REFERENCES Movie(Movie_Title),
FOREIGN KEY (CriticID)
  REFERENCES Movie_Review(Critic_ID)
);

CREATE TABLE Award(
AwardID		varchar(5)	NOT NULL,
Movie_Title	varchar(20)	NOT NULL,
Award_Category	varchar(30),
Award_Date	varchar(15),
Award_Show	varchar(30),
PRIMARY KEY (AwardID),
FOREIGN KEY (Movie_Title)
  REFERENCES Movie(Movie_Title)
);
