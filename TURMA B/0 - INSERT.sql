#INSERTS, UPDATES E DELETES

use dbFilmesTurmaB;

#Insert de valores individual
insert into tblGenero (nome)
			   values ('Aventura');
               
#Insert de Multiplos valores
insert into tblGenero (nome)
			    values('Romance');

#Tabela de Classificação
insert into tblClassificacao (nome)
					values 	 ('+10'),
							 ('+12'),
							 ('+14'),
                             ('+16'),
                             ('+18'),
                             ('Livre');

#Tabela de Filme
insert into tblFilme (nome,
					  duracao,
                      dataLancamento,
                      dataRelancamento,
                      sinopse,
                      nomeOriginal,
                      fotoCapa,
                      idClassificacao,
                      qtde
                      ) values 
                      ('UM SONHO DE LIBERDADE',
                       '02:20:00',
                       '1995-01-25',
                       null,
                       'Em 1946, Andy Dufresne (Tim Robbins), um jovem e bem sucedido banqueiro, tem a sua vida radicalmente modificada ao ser condenado por um crime que nunca cometeu, o homicídio de sua esposa e do amante dela. Ele é mandado para uma prisão que é o pesadelo de qualquer detento, a Penitenciária Estadual de Shawshank, no Maine. Lá ele irá cumprir a pena perpétua. Andy logo será apresentado a Warden Norton (Bob Gunton), o corrupto e cruel agente penitenciário, que usa a Bíblia como arma de controle e ao Capitão Byron Hadley (Clancy Brown) que trata os internos como animais. Andy faz amizade com Ellis Boyd Redding (Morgan Freeman), um prisioneiro que cumpre pena há 20 anos e controla o mercado negro da instituição.',
                       'The Shawshank Redemption',
                       'filme01.jpg',
                       4,
                       5
                      ), 
                      ('O REI LEÃO',
					   '01:29:00',
                       '1994-07-08',
                       '2011-08-26',
                       'Clássico da Disney, a animação acompanha Mufasa (voz de James Earl Jones), o Rei Leão, e a rainha Sarabi (voz de Madge Sinclair), apresentando ao reino o herdeiro do trono, Simba (voz de Matthew Broderick). O recém-nascido recebe a bênção do sábio babuíno Rafiki (voz de Robert Guillaume), mas ao crescer é envolvido nas artimanhas de seu tio Scar (voz de Jeremy Irons), o invejoso e maquiavélico irmão de Mufasa, que planeja livrar-se do sobrinho e herdar o trono.',
                       'The Lion King',
                       'foto02.png',
                       6,
                       8
                      ),('Forrest Gump - O Contador de Histórias',
                       '02:20:00',
                       '1994-12-07',
                       null,
                       'Quarenta anos da história dos Estados Unidos, vistos pelos olhos de Forrest Gump (Tom Hanks), um rapaz com QI abaixo da média e boas intenções. Por obra do acaso, ele consegue participar de momentos cruciais, como a Guerra do Vietnã e Watergate, mas continua pensando no seu amor de infância, Jenny Curran.',
                       'Forrest Gump',
                       'filme03.jpg',
                       4,
                       3
                      ), 
                      ('À Espera de um Milagre',
					   '03:09:00',
                       '2000-03-10',
                       null,
                       '1935, no corredor da morte de uma prisão sulista. Paul Edgecomb (Tom Hanks) é o chefe de guarda da prisão, que temJohn Coffey (Michael Clarke Duncan) como um de seus prisioneiros. Aos poucos, desenvolve-se entre eles uma relação incomum, baseada na descoberta de que o prisioneiro possui um dom mágico que é, ao mesmo tempo, misterioso e milagroso.',
                       'The Green Mile',
                       'foto04.png',
                       4,
                       4
                      );

#Tabela Filme Genero
insert into tblFilmeGenero (idFilme, idGenero)
					values (1, 1),
						   (2, 2),
                           (2, 3),
                           (2, 4);
                           
insert into tblSexo (nome) values ('Masculino'), ('Feminino');

insert into tblDiretor (nome, 
						nomeArtistico, 
						dataNascimento, 
                        biografia,
                        idSexo
                        )
			values
            ('FRANK DARABONT',
					'Ferenc Árpád Darabont',
                    '1959-01-28',
					'- É o autor dos roteiros de "A Hora do Pesadelo 3", "A Mosca 2" e "Frankenstein de Mary Shelley".- Trabalhou como roteirista na série de TV norte-americana "O Jovem Indiana Jones".',
					1
			),
            ('ROGER ALLERS',
					'ROGER ALLERS',
                    '1960-01-15',
                    null,
					1
			),
            ('ROB MINKOFF',
					'ROB MINKOFF',
                    '1962-08-11',
                    null,
					1
			),
                      
            ('Robert Zemeckis',
					null,
                    '1952-05-14',
                    '- Especialista em efeitos especiais, Robert Zemeckis é um dos partidários dos filmes do também diretor Steven Spielberg, que já produziu vários de seus filmes; - Trabalhando geralmente com seu parceiro de roteiros Bob Gale, os primeiros filmes de Robert apresentou ao público seu talento para comédias tipo pastelão, como Tudo por uma Esmeralda (1984); 1941 - Uma Guerra Muito Louca (1979) e, acrescentando efeitos muito especiais em Uma Cilada para Roger Rabbit (1988) e De Volta para o Futuro (1985); - Apesar destes filmes terem sidos feitos meramente para o puro entretenimento, com raros desenvolvimentos dos personagens ou mesmo com uma trama cuidadosa, eles são diversão na certa; - Seus filmes posteriores no entanto, se tornaram mais sérios e reflexivos, como o enormemente bem sucedido filme estrelado por Tom Hanks Forrest Gump (1994) e o filme estrelado por Jodie Foster ...',
					1
					);
                    
insert into tblNacionalidade (nome)
	values ('Americano'),
		   ('Inglês');
           
insert into tbldiretornacionalidade (iddiretor, idnacionalidade)
	values  (1,1),
			(2,1),
			(3,1),
			(4,1)
			
   ;
   
   
insert into tblAtor (nome, 
						nomeArtistico, 
						dataNascimento, 
						dataFalecimento,
                        biografia,
                        idSexo,
                        foto
                        )
			values
             ('TIM ROBBINS',
					'Timothy Francis Robbins',
                    '1958-10-16',
					null,
                    null,
					1,
                    'foto01.jpg'
			),
            
            ('MORGAN FREEMAN',
					null,
                    '1937-06-01',
					null,
                    'Possui uma estrela na Calçada da Fama, localizada em 7021 Hollywood Boulevard.',
					1,
                    'foto01.jpg'
			),
            ('GARCIA JÚNIOR',
					null,
                    '1967-03-02',
					null,
                    null,
					1,
                    'foto02.jpg'
			),
            ('MATTHEW BRODERICK',
					null,
                    '1962-03-21',
					null,
                    null,
					1,
                    'foto03.jpg'
			),

            ('TOM HANKS',
					'Thomas Jeffrey Hanks',
                    '1956-07-09',
					null,
                    'Tom Hanks iniciou a carreira no cinema aos 24 anos, com um papel no filme de baixo orçamento Trilha de Corpos. Logo migrou para a TV, onde estrelou por dois anos a série Bosom Buddies. Nela passou a trabalhar com comédia, algo com o qual não estava habituado, rendendo convites para pequenas participações nas séries Táxi, Caras & Caretas e Happy Days.Em 1984, veio seu primeiro sucesso no cinema: a comédia Splash - Uma Sereia em Minha Vida, na qual era dirigido por Ron Howard e contracenava com Daryl Hannah. Em seguida vieram várias comédias, entre elas A Última Festa de Solteiro (1984), Um Dia a Casa Cai (1986) e Dragnet - Desafiando o Perigo (1987), tornando-o conhecido do grande público.Com Quero Ser Grande (1988) Hanks obteve sua primeira indicação ao Oscar de melhor ator. Apesar de consagrado como comediante, aos poucos passou a experimentar outros gêneros.',
					1,
                    'foto01.jpg'
			),
            ('SEAN ASTIN',
					'Sean Patrick Astin',
                    '1971-02-25',
					null,
                    'É formado na Universidade de Los Angeles em História.',
					1,
                    'foto01.jpg'
			),
             ('GARY SINISE',
					'Gary Alan Sinise',
                    '1955-03-17',
					null,
                    null,
					1,
                    'foto01.jpg'
					),
			('ROBIN WRIGHT',
					'Robin Virginia Gayle Wright',
                    '1966-04-08',
					null,
                    'Robin Wright nasceu em Dallas, Texas, filha de Gayle Gaston, uma vendedora de cosméticos, e Freddie Wright, funcionário de uma empresa farmacêutica. A atriz ficou famosa por seus papeis em House of Cards, Mulher-Maravilha, Corpo Fechado e Forrest Gump - O Contador de Histórias.Wright foi criada em San Diego, Califórnia. Quando jovem, frequentou a La Jolla High School, em La Jolla, e a Taft High School em Woodland Hills, em Los Angeles.A atriz começou sua carreira como modelo quando tinha 14 anos. Aos 18, interpretou Kelly Capwell na novela Santa Barbara (1984), da NBC Daytime, recebendo diversas indicações ao Daytime Emmy e voltando os olhos do público para seu trabalho.Das telas da TV para o cinema, Wright conseguiu um papel em Hollywood Vice Squad (1986) e protagonizou uma princesa em A Princesa Prometida, em 1987.',
					1,
                    'foto01.jpg'
					),
			('MICHAEL CLARKE DUNCAN',
					'Robin Virginia Gayle Wright',
                    '1957-12-10',
					'2012-09-03',
                    'Michael Clarke Duncan é conhecido pela atuação em À Espera de um Milagre, que lhe rendeu indicações ao Oscar e ao Globo de Ouro de Melhor Ator Coadjuvante. Fez sua estreia nos cinemas em 1995, com um papel não creditado em Sexta-Feira em Apuros. O primeiro trabalho de destaque viria três anos depois com Armageddon. Agradou tanto que Bruce Willis recomendou que Frank Darabont contratasse ele para À Espera de um Milagre, em 1999.Muitas vezes tratado como Big Mike, por causa da altura de 1,96 m, o ator se destacou ainda em Meu Vizinho Mafioso, Planeta dos Macacos, O Escorpião Rei e A Ilha. Participou também de três adaptações dos quadrinhos: O Demolidor, Sin City - A Cidade do Pecado e Lanterna Verde. Robert Rodriguez contava com o retorno dele para Sin City 2: ',
					1,
                    'foto05.jpg'
					);
                    
insert into tblatornacionalidade (idator, idnacionalidade)
	values  (1,1),
			(2,1),
			(3,1),
			(4,1),
			(5,1),
			(6,1),
			(7,1),
			(8,1),
			(9,1)
   ;
   
   
   insert into tblRoteirista (nome
						
                        )
			values
		   ('FRANK DARABONT'

			),
            ('LINDA WOOLVERTON'
					
			),
            ('ERIC ROTH'

			)
    ;
    
    insert into tblfilmeroteirista (idFilme, idroteirista)
		values 
		(1,1),
		(2,2),
		(3,3),
		(4,1)

 ;  
 
 insert into tblroteiristanacionalidade (idroteirista, idnacionalidade)
	values  (1,1),
			(2,1),
			(3,1)

			
   ;   

#Update 
update tblFilme set duracao = '03:00:00' 
	where idFilme = 1;
    
update tblFilme set dataRelancamento = null;
    
#Delete
delete from tblGenero 
	where idGenero = 7;
  
select * from tblGenero;
select * from tblClassificacao;
select * from tblFilme;
select * from tblAtor;
select * from tblFilmeGenero;
select * from tblRoteirista;


