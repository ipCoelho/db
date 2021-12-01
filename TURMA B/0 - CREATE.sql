#comentário
/*
	comentário em bloco
*/

#Cria um database novo no BD
create database dbFilmesTurmaB;

#Permite visualizar os databases existentes no BD
show databases;

#Permite apagar um database do BD
drop database dbFilmesTurmaB;

#Seleciona o database a ser utilizado
use dbFilmesTurmaB;

#Cria uma tabela e seus atributos
#Tabela Classificação
create table tblClassificacao (
	idClassificacao int not null auto_increment primary key,
    nome varchar(20) not null,
	unique index(idClassificacao)
);

#Permite visualizar as tabelas existentes no database
show tables;

#Tabela Sexo
create table tblSexo (
	idSexo int not null auto_increment,
    nome varchar(10) not null,
    primary key (idSexo),
	unique index (idSexo)
);

#Permite visualizar a descrição da estrutura da tabela
desc tblSexo;

#Tabela Genero
create table tblGenero (
	idGenero int not null auto_increment primary key,
	nome varchar(30) not null,
    unique index(idGenero)
);

#Tabela de Estudio
create table tblEstudio (
	idEstudio int not null auto_increment primary key,
	nome varchar(50) not null,
    unique index (idEstudio)
);

#Tabela de Roteirista
create table tblRoteirista (
	idRoteirista int not null auto_increment primary key,
	nome varchar(50) not null,
    unique index (idRoteirista)
);

#Tabela Nacionalidade
create table tblNacionalidade (
	idNacionalidade int not null auto_increment primary key,
	nome varchar(20) not null,
    unique index (idNacionalidade)
);

#Tabela de Filme
create table tblFilme (
	idFilme int not null auto_increment primary key,
    nome varchar(80) not null,
    nomeOriginal varchar(80),
	duracao time not null,
    dataLancamento date not null,
    dataRelancamento date,
    sinopse text not null,
    fotoCapa varchar(80),
    idClassificacao int not null,
    constraint FK_Classificacao_Filme #Define um nome para o Relacionamento
    foreign key (idClassificacao) #Especifica quem será a FK nesta tabela
    references tblClassificacao (idClassificacao), #Especifica de qual tabela virá a PK
	unique index (idFilme)
);

#Tabela de Diretor
create table tblDiretor (
	idDiretor int not null auto_increment primary key,
    nome varchar(80) not null,
	dataNascimento date not null,
	nomeArtistico varchar(80),
    biografia text,
    foto varchar(80),
    idSexo int not null,
    constraint FK_Sexo_Diretor
    foreign key(idSexo)
    references tblSexo (idSexo),
    unique index (idDiretor)
);

#Tabela Filme Diretor
create table tblFilmeDiretor (
	idFilmeDiretor int not null auto_increment primary key,
	idFilme int not null,
    idDiretor int not null,
    
    #Relacionamento com Filme
    constraint FK_Filme_FilmeDiretor
    foreign key (idFilme)
    references tblFilme (idFilme),
    
    #Relacionamento com Diretor
    constraint FK_Diretor_FilmeDiretor
    foreign key (idDiretor)
    references tblDiretor (idDiretor),
    
    unique index (idFilmediretor)
);

#Tabela Ator
create table tblAtor (
	idAtor int not null auto_increment primary key,
    nome varchar(8),
    nomeArtistico varchar(80),
    dataNasc date not null,
    dataFalecimento date,
    biografia text,
    idSexo int not null,
    unique index(idAtor)
);

desc tblAtor;

#Alterando a estrutua de uma tabela
## modify column - permite altera as propriedades de um atributo
alter table tblAtor
	modify column nome varchar(80) not null;

## change column - permite mudar a escrita e as propriedades 
	#de um atributo
alter table tblAtor
	change column dataNasc dataNascimento date not null;
 
## add column - permite adicionar um novo atributo 
alter table tblAtor
	add column foto varchar(80);

## add constraint - permite adicionar um relacionamento em uma tabela 
#já existente
alter table tblAtor
	add constraint FK_Sexo_Ator
		foreign key (idSexo)
        references tblSexo (idSexo);

#adicionando uma nova unique index()        
alter table tblAtor 
	add unique index(idAtor, foto);

##  drop column - permite apagar um atributo  
alter table tblAtor
	drop column idSexo;

##  drop foreign key - permite apagar o relacionamento   
alter table tblAtor
	drop foreign key FK_Sexo_Ator;

#Como verificar as constraints existentes em uma tabela
SELECT
  CONSTRAINT_NAME,   
  REFERENCED_TABLE_NAME,
  REFERENCED_COLUMN_NAME
FROM INFORMATION_SCHEMA.KEY_COLUMN_USAGE
WHERE
  REFERENCED_TABLE_NAME = 'tblFilme';


alter table tblAtor
	add column idSexo int not null,
    add constraint FK_Sexo_Ator
		foreign key (idSexo)
        references tblSexo (idSexo);

desc tblAtor;

#Apaga uma tabela
drop table tblAtor;


#Tabela Filme Ator
create table tblFilmeAtor (
	idFilmeAtor int not null auto_increment primary key,
	idFilme int not null,
    idAtor int not null,
    
    #Relacionamento com Filme
    constraint FK_Filme_FilmeAtor
    foreign key (idFilme)
    references tblFilme (idFilme),
    
    #Relacionamento com Ator
    constraint FK_Ator_FilmeAtor
    foreign key (idAtor)
    references tblAtor (idAtor),
    
    unique index (idFilmeAtor)
);

#Tabela Diretor Nacionalidade
create table tblDiretorNacionalidade (
	idDiretorNacionalidade int not null auto_increment primary key,
	idDiretor int not null,
    idNacionalidade int not null,
    
    #Relacionamento com Diretor
    constraint FK_Diretor_DiretorNacionalidade 
    foreign key (idDiretor)
    references tblDiretor (idDiretor),
    
    #Relacionamento com Nacionalidade
    constraint FK_Nacionalidade_DiretorNacionalidade 
    foreign key (idNacionalidade)
    references tblNacionalidade (idNacionalidade),
    
    unique index (idDiretorNacionalidade)
);

#Tabela Ator Nacionalidade
create table tblAtorNacionalidade (
	idAtorNacionalidade int not null auto_increment primary key,
	idAtor int not null,
    idNacionalidade int not null,
    
    #Relacionamento com Ator
    constraint FK_Ator_AtorNacionalidade 
    foreign key (idAtor)
    references tblAtor (idAtor),
    
    #Relacionamento com Nacionalidade
    constraint FK_Nacionalidade_AtorNacionalidade 
    foreign key (idNacionalidade)
    references tblNacionalidade (idNacionalidade),
    
    unique index (idAtorNacionalidade)
);

#Tabela Roteirista Nacionalidade
create table tblRoteiristaNacionalidade (
	idRoteiristaNacionalidade int not null auto_increment primary key,
	idRoteirista int not null,
    idNacionalidade int not null,
    
    #Relacionamento com Roteirista
    constraint FK_Roteirista_RoteiristaNacionalidade 
    foreign key (idRoteirista)
    references tblRoteirista (idRoteirista),
    
    #Relacionamento com Nacionalidade
    constraint FK_Nacionalidade_RoteiristaNacionalidade 
    foreign key (idNacionalidade)
    references tblNacionalidade (idNacionalidade),
    
    unique index (idRoteiristaNacionalidade)
);


#Tabela Filme Roteirista
create table tblFilmeRoteirista (
	idFilmeRoteirista int not null auto_increment primary key,
	idRoteirista int not null,
    idFilme int not null,
    
    #Relacionamento com Roteirista
    constraint FK_Roteirista_FilmeRoteirista 
    foreign key (idRoteirista)
    references tblRoteirista (idRoteirista),
    
    #Relacionamento com Filme
    constraint FK_Filme_FilmeRoteirista 
    foreign key (idFilme)
    references tblFilme (idFilme),
    
    unique index (idFilmeRoteirista)
);

#Tabela Filme Estudio
create table tblFilmeEstudio (
	idFilmeEstudio int not null auto_increment primary key,
	idEstudio int not null,
    idFilme int not null,
    
    #Relacionamento com Estudio
    constraint FK_Estudio_FilmeEstudio 
    foreign key (idEstudio)
    references tblEstudio (idEstudio),
    
    #Relacionamento com Filme
    constraint FK_Filme_FilmeEstudio 
    foreign key (idFilme)
    references tblFilme (idFilme),
    
    unique index (idFilmeEstudio)
);

#Tabela Filme Genero
create table tblFilmeGenero (
	idFilmeGenero int not null auto_increment primary key,
	idGenero int not null,
    idFilme int not null,
    
    #Relacionamento com Genero
    constraint FK_Genero_FilmeGenero 
    foreign key (idGenero)
    references tblGenero (idGenero),
    
    #Relacionamento com Filme
    constraint FK_Filme_FilmeGenero 
    foreign key (idFilme)
    references tblFilme (idFilme),
    
    unique index (idFilmeGenero)
);

show tables;