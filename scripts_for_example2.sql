#inserts, updates e deletes

#Insert de valores individual
insert into tblgenero (nome) values ('');
#insert de valores multiplos
insert into tblgenero (nome) values ('Animação'), ('Musical'),('Policial'),('Fantasia');
select * from tblgenero;

#tabela de Classificação
insert into tblclassificacao (nome) values ('+10'),('+12'),('+14'),('+16'),('+18'),('livre');
select * from tblclassificacao;

#tabela de Filme
insert into tblFilme (
	nome,
	duracao,
	data_lancamento,
    sinopse,
    data_relancamento,
    nome_original,
    imagem_capa,
    idClassificacao
) values (
    'Um Sonho de Liberdade',
    '2:20:00',
    '1995-01-25',
    'Em 1946, Andy Dufresne (Tim Robbins), um jovem e bem sucedido banqueiro, tem a sua vida radicalmente modificada ao ser condenado por um crime que nunca cometeu, o homicídio de sua esposa e do amante dela. Ele é mandado para uma prisão que é o pesadelo de qualquer detento, a Penitenciária Estadual de Shawshank, no Maine. Lá ele irá cumprir a pena perpétua. Andy logo será apresentado a Warden Norton (Bob Gunton), o corrupto e cruel agente penitenciário, que usa a Bíblia como arma de controle e ao Capitão Byron Hadley (Clancy Brown) que trata os internos como animais. Andy faz amizade com Ellis Boyd Redding (Morgan Freeman), um prisioneiro que cumpre pena há 20 anos e controla o mercado negro da instituição.',
    null,
    'The Shawshank Redemption',
    'https://br.web.img3.acsta.net/c_310_420/medias/nmedia/18/90/16/48/20083748.jpg',
    4
    ),(
    'O Rei Leão',
    '1:29:00',
    '1994-07-08',
    'Clássico da Disney, a animação acompanha Mufasa (voz de James Earl Jones), o Rei Leão, e a rainha Sarabi (voz de Madge Sinclair), apresentando ao reino o herdeiro do trono, Simba (voz de Matthew Broderick). O recém-nascido recebe a bênção do sábio babuíno Rafiki (voz de Robert Guillaume), mas ao crescer é envolvido nas artimanhas de seu tio Scar (voz de Jeremy Irons), o invejoso e maquiavélico irmão de Mufasa, que planeja livrar-se do sobrinho e herdar o trono.',
	'2011-08-26',
    'The Lion King',
    'https://br.web.img3.acsta.net/c_310_420/medias/nmedia/18/87/84/28/19962110.jpg',
    6
    );

#tabela Filme Genero
insert into tblfilmegenero (idFilme, idGenero) values (1, 1), (2, 2), (2, 3), (2, 4);
    
#update
update tblfilme set duracao = '1:22:00' where idFilme = 1;
    
select * from tblfilmegenero;
        
    

