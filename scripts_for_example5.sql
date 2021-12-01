#concat() - Permite realizar a concatenação de dados
select concat('Filme: ', nome) as nomeFilme, nome,
 concat('O filme ', nome, ' tem duração de ', duracao) as resultado
	from tblFilme;
    
#concat_ws() - Permite realizar a concatenação de dados, utilizando um caracter de separação entre os dados
select concat_ws(' - ', nome, duracao, data_lancamento) as lancamento from tblfilme;

#locate() - Retorna a posição da palavra ou caractér desejado.
select locate('rei', sinopse) as resultado, sinopse from tblfilme;

#reverse() - Permite inverter o conteúdo de uma coluna.
select reverse(nome) as resultado from tblfilme;

#length() - Retorna a qtde de caracteres de uma coluna.
select length(nome) as qtde, char_length(nome) as qtde2 from tblfilme;

#insert(column, posição de inicio, qtde de caracteres a serem deletados a partir da posicao de inicio, novo conteudo a ser inserido) - Permite inserir um novo conteúdo dentro do texto de uma coluna.
select insert(sinopse, 5, 0, ' videolocadora ') as resultado from tblfilme;

# Ex: <b> Prisão </b>
select insert(sinopse, locate('prisão', sinopse), length('prisão'), '<b>prisão</b> ') as prisao from tblfilme;

#substr() - Permite retirar um pedaço do conteúdo.
select substr(sinopse, , 10) as sub from tblfilme;

alter table tblfilme 
	add column qtde int;
    

update tblfilme set qtde = 15 where idfilme = 2;    
update tblfilme set valor = '8.50' where idfilme = 2;



select 	concat('Valor: R$', round(tblfilme.valor, 2)) as Valor,
		concat('Valor total: R$', round((tblfilme.valor*tblfilme.valor), 2)) as ValorTotal,
        concat('Valor com desconto: R$', round(tblfilme.valor - (tblfilme.valor*10)/100), 2) as ValorDesconto 
		from tblfilme;




