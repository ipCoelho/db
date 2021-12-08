/*
	O SCRIPT DEVE TRAZER:
		-Nome do Filme.
		-Data Lançamento.
		-Sinopse.
		-Classificacao.
		-Genero.
		-Nome dos Atores.
		-Data Nascimento dos Atores.
		-Nacionalidade do Ator.
		-Nome do Diretor.
		-Nome do Roteirista.
	DEVEM SER ORDENADOS POR: 
		-Nome do Filme/Crescente.
        -Nome dos Atores/Decrescente.
*/

## CRUD VIEW ## 
#CREATE VIEW: create view <view> as <script>;
#READ VIEW: select * from <view>;
#UPDATE VIEW:  alter view <view> as <script>;
#DELETE VIEW: drop view <view>;

## HOW TO SEE THE SCRIPT STORED IN A VIEW ## 
#show create view <view>;

SELECT 
	tblfilme.nome as Filme,
    tblfilme.data_lancamento as Lançamento,
    tblfilme.sinopse as Sinopse,
    tblclassificacao.nome as Classificação,
    tblgenero.nome as Gênero,
    tblator.nome as Ator,
    tblnacionalidade.nome as NacionalidadeDoAtor,
    tblator.data_nascimento as NascimentoDoAtor,
    tbldiretor.nome as Diretor,
    tblroteirista.nome as Roteirista
    
    from tblclassificacao
    inner join tblfilme on tblclassificacao.idClassificacao = tblfilme.idClassificacao
    
    inner join tblfilmegenero on tblfilme.idFilme = tblfilmegenero.idFilme
    inner join tblgenero on tblgenero.idGenero = tblfilmegenero.idGenero
        
	inner join tblfilmeator on tblfilme.idfilme = tblfilmeator.idfilme
    inner join tblator on tblator.idator = tblfilmeator.idAtor
    
    inner join tblatornacionalidade on tblatornacionalidade.idAtor = tblator.idAtor
    inner join tblnacionalidade on tblnacionalidade.idNacionalidade = tblatornacionalidade.idNacionalidade
    
    inner join tblfilmediretor on tblfilmediretor.idFilme = tblfilme.idFilme
    inner join tbldiretor on tbldiretor.idDiretor = tblfilmediretor.idDiretor
    
    inner join tblfilmeroteirista on tblfilmeroteirista.idFilme = tblfilme.idFilme
    inner join tblroteirista on tblroteirista.idroteirista = tblfilmeroteirista.idRoteirista
    
    group by tblator.nome, Gênero
    order by tblfilme.nome asc, tblator.nome desc
;
#Group by: Is used to eliminate repetitions on high scale selects. Very helpful.

#View: It's a virtual table based on a select, it's pre-processed, that makes it faster.

create view vwListarFilmes as
	SELECT 
	tblfilme.nome as Filme,
    tblfilme.data_lancamento as Lançamento,
    tblfilme.sinopse as Sinopse,
    tblclassificacao.nome as Classificação,
    tblgenero.nome as Gênero,
    tblator.nome as Ator,
    tblnacionalidade.nome as NacionalidadeDoAtor,
    tblator.data_nascimento as NascimentoDoAtor,
    tbldiretor.nome as Diretor,
    tblroteirista.nome as Roteirista
    
    from tblclassificacao
    inner join tblfilme on tblclassificacao.idClassificacao = tblfilme.idClassificacao
    
    inner join tblfilmegenero on tblfilme.idFilme = tblfilmegenero.idFilme
    inner join tblgenero on tblgenero.idGenero = tblfilmegenero.idGenero
        
	inner join tblfilmeator on tblfilme.idfilme = tblfilmeator.idfilme
    inner join tblator on tblator.idator = tblfilmeator.idAtor
    
    inner join tblatornacionalidade on tblatornacionalidade.idAtor = tblator.idAtor
    inner join tblnacionalidade on tblnacionalidade.idNacionalidade = tblatornacionalidade.idNacionalidade
    
    inner join tblfilmediretor on tblfilmediretor.idFilme = tblfilme.idFilme
    inner join tbldiretor on tbldiretor.idDiretor = tblfilmediretor.idDiretor
    
    inner join tblfilmeroteirista on tblfilmeroteirista.idFilme = tblfilme.idFilme
    inner join tblroteirista on tblroteirista.idroteirista = tblfilmeroteirista.idRoteirista
    
    group by tblator.nome, Gênero
    order by tblfilme.nome asc, tblator.nome desc
;

show tables ;
select * from vwlistarfilmes;

alter view vwlistarfilmes as 
	SELECT 
		tblfilme.nome as Filme,
		tblfilme.data_lancamento as Lançamento,
		tblfilme.sinopse as Sinopse,
		tblclassificacao.nome as Classificação,
		tblgenero.nome as Gênero,
		tblator.nome as Ator,
		tblnacionalidade.nome as NacionalidadeDoAtor,
		tblator.data_nascimento as NascimentoDoAtor,
		tbldiretor.nome as Diretor,
		tblroteirista.nome as Roteirista
		
		from tblclassificacao
		inner join tblfilme on tblclassificacao.idClassificacao = tblfilme.idClassificacao
		
		inner join tblfilmegenero on tblfilme.idFilme = tblfilmegenero.idFilme
		inner join tblgenero on tblgenero.idGenero = tblfilmegenero.idGenero
			
		inner join tblfilmeator on tblfilme.idfilme = tblfilmeator.idfilme
		inner join tblator on tblator.idator = tblfilmeator.idAtor
		
		inner join tblatornacionalidade on tblatornacionalidade.idAtor = tblator.idAtor
		inner join tblnacionalidade on tblnacionalidade.idNacionalidade = tblatornacionalidade.idNacionalidade
		
		inner join tblfilmediretor on tblfilmediretor.idFilme = tblfilme.idFilme
		inner join tbldiretor on tbldiretor.idDiretor = tblfilmediretor.idDiretor
		
		inner join tblfilmeroteirista on tblfilmeroteirista.idFilme = tblfilme.idFilme
		inner join tblroteirista on tblroteirista.idroteirista = tblfilmeroteirista.idRoteirista
		
		group by tblator.nome, Gênero
		order by tblfilme.nome asc, tblator.nome asc 
;

drop view vwlistarfilmes;

show create view vwlistarfilmes;
