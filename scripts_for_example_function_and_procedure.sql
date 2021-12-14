# Views: Does'nt work with "PARAMS".
# Procedures: Supports insert, delete, update and also select. Conditions, repetitions and variables are also supported in procedures.
# Functions: 
/****************************************************************************************************************************************/

## FUNCTION
# DELIMITER <char>: specify what character will be defined to delimiter scopes.
# deterministic: the function is *deterministic* when the return type is equal as the args type, OR when there is none args.	(args.type === return.type)
# not deterministic: the function is *not deterministic* when the return type, is different from the args type.		(args.type !== return.type)
# end if: used to determine the end of the if structure;

DELIMITER $$ 	
create function saudacao(usuario char(30)) 
	returns char(50) 
    deterministic    
BEGIN
	# declaring the variables ... 
	declare	horaAtual time;
	declare	hora char(2);
	declare mensagem char(15);
	
	# setting the values to the variables ...
	set horaAtual = curtime();
	set hora = hour(horaAtual);
	
	if hora >= 5 and hora < 12 then
		set mensagem = "Bom Dia!";
	elseif hora >= 12 and hora < 18 then
		set mensagem = "Boa Tarde!";
	elseif hora >= 18 and hora <= 23 then
		set mensagem = "Boa Noite!";
	else
		set mensagem = "Boa Madrugada!";
	end if;
    
	return concat(usuario,", ",LOWER(mensagem));
END $$

select saudacao("Israel") as mensagem;
drop function saudacao;


## PROCEDURE
# IN: it's used when it will receive only *args*.
# OUT: It's used when there is only *return*.
# INOUT: It's used when there is both, *args and return*.

DELIMITER $$
create procedure procListarFilmes(IN varIdgenero INT)
BEGIN          
	set @comandoPrincipal := "select tblfilme.nome as Nome_do_Filme, tblfilme.data_lancamento as Lançamento, tblgenero.nome as Gênero
			from tblfilme 
			inner join tblfilmegenero on tblfilme.idfilme = tblfilmegenero.idFilme
			inner join tblgenero on tblfilmegenero.idFilme_genero = tblgenero.idGenero";
	if varIdgenero > 0 then
		set @comando := concat(@comandoPrincipal, " where tblgenero.idgenero = ", varIdgenero);
	else
		set @comando := @comandoPrincipal;
	end if;

	prepare scriptSQL from @comando;
	execute scriptSQL;
END $$

call procListarFilmes(3);



