select * from tblfilme;
select * from tblgenero;

update tblfilme set duracao = '01:22:00' where idfilme = 1;
insert into tblgenero (nome) values ('Romance');

delete from tblgenero where idgenero = 7;

/*	#SELECT
	
	select - specifies the columns that will be seen.
    from - specifies the tables that will be use on the select.
    where - specifies the filter's criterion.

	# 1 select * from <table>
		selects everything in a table, both columns and rows.
    
    # 2 select <column>, <column>, <column> from <table>
		selects the specified column(s) from that table.
	
    # 3 select <table.column>, <table.column>, <table.column> from <table>, <table>
		selects especified columns from the specified tables.
	
    # 4 select <column> as <nick>, <column> as <nick>, <column> as <nick> from <table> as <nick>
		selects and add a nickname to the referenced column and/or table.
		
		EX: select filme.nome as nomeFilme, filme.duracao, filme.sinopse from tblfilme as filme;
    
    # 5 select <column>, <column> from <table> where <parameter> = <value>;
		selects the selecified columns with the pointed parameter.
    
    # 6 select <column>, <column> from <table> where <parameter> like <%value%>;
		selects the columns where the "value" is inside of the field.
			
		EX: select * from tblfilme where nome like "%li%"; 
		**The operator 'like' have same the utility as the ' = ', 
			but if a '%' is added in the beginning and/or ending on listening the parameter,
            we can search if the specified string it's inside of the field value.**
        
    # 7 

*/

 


select tblgenero.nome, tblfilme.nome, tblfilme.sinopse from tblfilme, tblgenero;  
