select curdate() as dataAtual;
select current_date() as dataAtual;

select curtime() as horaAtual;
select current_time() as horaAtual;

select current_timestamp() as dataHoraAtual;

select time_format(curtime(), '%H') as horas;
select time_format(curtime(), '%i') as minutos;
select time_format(curtime(), '%s') as segundos;
select time_format(curtime(), '%r') as HoraAMPM;
select time_format(curtime(), '%T') as Hora24h;

select hour(curtime()) as hora;
select minute(curtime()) as minutos;
select second(curtime()) as segundos;

# timediff() - calcula a diferença entre horas.
select timediff(curtime(), '05:00:00') as diferencaHora;

# FUNCOES DE FORMATACAO DE DATA
select date_format(curdate(), '%W') as diaSemana;
select date_format(curdate(), '%w') as diaSemanaEmNumero;
select date_format(curdate(), '%a') as diaSemanaAbreviado;
select date_format(curdate(), '%m') as mesEmNumero;
select date_format(curdate(), '%b') as mesAbreviado;
select date_format(curdate(), '%M') as mesEscritoCompleto;
select date_format(curdate(), '%d') as diaDoMes;
select date_format(curdate(), '%y') as anoAbreviado;
select date_format(curdate(), '%Y') as diaCompleto;

select date_format(curtime(), '%Y-%m-%d') as dataFormatada;
select date_format(curtime(), '%d-%m-%Y') as dataFormatada;
select date_format(curdate(), '%d-%m-%Y') as dataFormatadaPTBR;

select day(curdate()) as dia;
select month(curdate()) as mes;
select year(curdate()) as ano;


# dateDiff() - calcula a diferença entre datas.
select datediff(curdate(), '2021-11-23') as diferencaData;

select week(curdate()) as numeroDaSemana;
select weekofyear(curdate()) as numeroDaSemana;

select weekday('2021-11-20') as diaDaSemanaEmNumero;

# Retorno o ano e o numero da semana daquele dia.
select yearweek('2021-05-01') as anoSemana;

# Retorno do dia do ano.
select dayofyear(curdate()) as numeroDiaAno;


