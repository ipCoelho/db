#LEGEND ------------------------------------------------|
# `` = 'not required';

#COMMANDS ----------------------------------------------|
#create database <db>: 'create a database';

#show databases: 'show all the databases already created';

#drop database `<condition>` <db>: 'delete a database';

#use <db>: 'selects the database that will be worked';

#drop <table>: 'deletes a table from the used database';

#create table <tb>: 'creates a table on the selected database';
create table tblClassificacao(
	/* Explanation...
		All the table's columns should be separed by a ',';
        The primary key, should have the following attributes: int primary key not null auto_increment;
        
        The unique index should be declared at the end of the table, it's syntax is: unique index(<column>)
		
        
    */
	idClassificacao int primary key not null auto_increment,
    nome varchar(20) not null,
    unique index(idClassificacao)
);

#show tables / show tables from <db>: 'Show all the tables';
show tables from dbMovies_israel;

#desc <table>: 'Shows the description of a table';
desc tblSexo;

#alter table <table> modify column <column> <datatype>: 'This command can be used to alter the column datetype';
alter table tblNacionalidade modify column nome varchar(50) not null;

#alter table <table> change column <column> <name> <datetype>: 'This command can be used in the same situation as alter table, but it also offers the possibility to change the name';
alter table tblAtor change column data_nascimento data_nascimento date not null;

#alter table <table> drop column <name>: 'Deletes the specified column';
alter table tblAtor drop column idSexo;

#alter table <table> add column <name> <datetype>: 'Allows to create a column after the tables's creation';
alter table tblAtor add column foto varchar(120);

#alter table <table> drop foreign key <foreign key>: 'Delete the foreign key from the specified table';
alter table tblAtor drop foreign key FK_tblSexo_tblAtor;

#alter table <table> add constraint <foreign key> foreign key (foreign id) references <table> (foreign id): *Syntax to create a Foreign Key;
alter table tblAtor add constraint FK_tblSexo_tblAtor foreign key(idSexo) references tblSexo(idSexo);

#This command can be used to see the foreign key of a table, when specifies the referenced table.
SELECT 
	CONSTRAINT_NAME,
    REFERENCED_TABLE_NAME,
    REFERENCED_COLUMN_NAME
	FROM INFORMATION_SCHEMA.KEY_COLUMN_USAGE
    WHERE REFERENCED_TABLE_NAME = 'tblFilme';
#-------------------------------------------------------|





#TABLES ------------------------------------------------|
create table tblSexo(
	idSexo int not null auto_increment,
    nome varchar(20) not null,
    #Primary key can also be attributed later.
    primary key (idSexo),
    unique index (idSexo)
);
create table tblGenero(
	idGenero int primary key not null auto_increment,
    nome varchar(50) not null
);
create table tblEstudio(
	idEstudio int primary key not null auto_increment,
    nome varchar(100)
);
create table tblNacionalidade(
	idNacionalidade int primary key not null auto_increment,
    nome varchar(50)
);

#Most important table.
create table tblFilme(
	idFilme int primary key not null auto_increment,
    nome varchar(100) not null,
    duracao time not null,
    data_lancamento date not null,
    sinopse text not null,
    data_relancamento date,
    nome_original varchar(100),
    imagem_capa varchar(120), 
    idClassificacao int not null,
    
    #constraint: 'Prevents any action to destroy the column';
    #foreign key (<column>) (...): 'Define which column will be the foreign key';
    #(...) references <table> (<column>): 'Define the reference for the foreign key, which will a table and it's id.';
    constraint FK_Classificacao_Filme foreign key (idClassificacao) references tblClassificacao (idClassificacao),
    unique index (idFilme)
);
create table tblDiretor(
	idDiretor int primary key not null auto_increment,
    nome varchar(100) not null,
    data_nascimento date,
    foto varchar(120),
    norme_artistico varchar(100),
    biografia TEXT,
    idSexo int not null,
    constraint FK_tblSexo_tblDiretor 
    foreign key(idSexo) 
    references tblSexo (idSexo),
    unique index(idDiretor)
);
create table tblFilmeDiretor(
	idFilmeDiretor int primary key not null auto_increment,
    idFilme int not null,
    idDiretor int not null,
    
    #Relationship with tblFilme
    constraint FK_tblFilme_tblFilmeDiretor
    foreign key(idFilme)
    references tblFilme(idFilme),
    
    #Relationship with tblDiretor
    constraint FK_tblDiretor_tblFilmeDiretor
    foreign key(idDiretor)
    references tblDiretor(idDiretor),
    
    unique index(idFilmeDiretor)
);
create table tblAtor(
	idAtor int primary key auto_increment not null,
    nome varchar(8),
    nome_artistico varchar(100),
    data_nascimento DATE not null,
    data_falecimento DATE,
    foto varchar(120),
    biografia TEXT,
    idSexo int not null
);
#------------------------------------------------------|
create table TblFilmeGenero(
	idFilme_Genero int primary key not null auto_increment,
    idGenero int not null,
    idFilme int not null,
    constraint FK_tblGenero_tblFilmeGenero
    foreign key(idGenero)
    references tblGenero(idGenero),
    constraint FK_tblFilme_tblFilmeGenero
    foreign key(idFilme)
    references tblFilme(idFilme)
);
create table tblFilmeEstudio(
	idFilme_Estudio int primary key not null auto_increment,
    idEstudio int not null,
    idFilme int not null,
    constraint FK_tblEstudio_tblFilmeEstudio
    foreign key(idEstudio)
    references tblEstudio(idEstudio),
    constraint FK_tblFilme_tblFilmeEstudio
    foreign key(idFilme)
    references tblFilme(idFilme)
);
create table tblFilmeAtor(
	idFilmeAtor int primary key not null auto_increment,
    idFilme int not null,
    idAtor int not null,
    constraint FK_tblFilme_tblFilmeAtor
    foreign key(idFilme)
    references tblFilme(idFilme),
    constraint FK_tblAtor_tblFilmeAtor
    foreign key(idAtor)
    references tblAtor(idAtor)
);








