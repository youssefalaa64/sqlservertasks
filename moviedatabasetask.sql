create schema movie
go

create table actor(
actid int primary key identity,
actfname char(20),
actlname char(20),
actgender char(1),
)

create table moviecast(
actid int references actor(actid),
movid int references movie(movid),
role char(30)
)


create table movie(
movid int primary key,
movtitle char(50),
movyear int,
movtime int,
movdtrel date,
movrelcountry char(5),
movlang char(50)
)

create table director(
dirid int primary key,
dirfname char(20),
dirlname char(20),
)

create table moviedirection(
dirid int references director(dirid),
movid int references movie(movid),
)

create table reviewer(
revid int primary key,
revname char(30),
)

create table rating(
movid int references movie(movid),
revid int references reviewer(revid),
revstars int,
numorating int,
)

create table geners(
genid int primary key,
gentitle char(20),
)

create table moviegeneres(
movid int references movie(movid),
genid int references geners(genid),
)
