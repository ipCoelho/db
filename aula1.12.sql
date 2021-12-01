select
	tblfilme.nome as nomeFilme, 
    tblfilme.nome_original, 
    tblclassificacao.nome as nomeClassificacao,
    tblgenero.nome as nomeGenero,
    tblator.nome as nomeator
    
    from tblclassificacao inner join tblfilme
    on tblclassificacao.idClassificacao = tblfilme.idClassificacao
    
    inner join tblfilmegenero
    on tblfilme.idfilme = tblfilmegenero.idFilme
    inner join tblgenero
    on tblgenero.idGenero = tblfilmegenero.idGenero
    
    inner join tblfilmeator
    on tblfilme.idFilme = tblfilmeator.idFilme
    inner join tblator
    on tblator.idAtor = tblfilmeator.idAtor
    
	where year(tblator.data_nascimento) >= 1965
    
    order by tblator.nome_artistico
    
;
    
		