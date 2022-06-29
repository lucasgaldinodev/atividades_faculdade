use bd_posto;

insert into bd_posto.dbo.posto (unidade, nome_fantasia, razao_social, cnpj, endereco, telefone, gerente) values (1, 'PETROBAS', 'PETROBRAS DISTRIBUIDORA S.A', 16591732058, 'AV P, 3715', 39154017, 1);
insert into bd_posto.dbo.posto (unidade, nome_fantasia, razao_social, cnpj, endereco, telefone, gerente) values (2, 'SHELL', 'SHELL BRASIL PETROLEO LTDA', 50271950824, 'RUA K, 3018', 34176017, 2);
insert into bd_posto.dbo.posto (unidade, nome_fantasia, razao_social, cnpj, endereco, telefone, gerente) values (3, 'IPIRANGA', 'IPIRANGA PRODUTOS DE PETROLEO S.A', 30172953805, 'AV A, 1029', 301924816, 3);

insert into bd_posto.dbo.lotacao (departamento, descricao, unidade) values (1, 'GERENCIA 1', 16591732058);
insert into bd_posto.dbo.lotacao (departamento, descricao, unidade) values (2, 'VENDAS 1', 16591732058);
insert into bd_posto.dbo.lotacao (departamento, descricao, unidade) values (3, 'LIMPEZA 1', 16591732058);
insert into bd_posto.dbo.lotacao (departamento, descricao, unidade) values (4, 'SEGURANÇA 1', 16591732058);
insert into bd_posto.dbo.lotacao (departamento, descricao, unidade) values (5, 'GERENCIA 2', 50271950824);
insert into bd_posto.dbo.lotacao (departamento, descricao, unidade) values (6, 'VENDAS 2', 50271950824);
insert into bd_posto.dbo.lotacao (departamento, descricao, unidade) values (7, 'LIMPEZA 2', 50271950824);
insert into bd_posto.dbo.lotacao (departamento, descricao, unidade) values (8, 'SEGURANÇA 2', 50271950824);
insert into bd_posto.dbo.lotacao (departamento, descricao, unidade) values (9, 'GERENCIA 3', 30172953805);
insert into bd_posto.dbo.lotacao (departamento, descricao, unidade) values (10, 'VENDAS 3', 30172953805);
insert into bd_posto.dbo.lotacao (departamento, descricao, unidade) values (11, 'LIMPEZA 3', 30172953805);
insert into bd_posto.dbo.lotacao (departamento, descricao, unidade) values (12, 'SEGURANÇA 3', 30172953805);

insert into bd_posto.dbo.empregado (matricula, nome, cpf, rg, filiacao, sexo, cargo, dt_nasc, lotacao, unidade) values (1, 'BRUNO HUGO SILVEIRA', 58845568377, 362195158, 'NOAH GAEL SILVEIRA', 'M', 'GERENTE', '25/09/1966', 'GERENCIA 1', 16591732058);
insert into bd_posto.dbo.empregado (matricula, nome, cpf, rg, filiacao, sexo, cargo, dt_nasc, lotacao, unidade) values (2, 'PEDRO MARCELO GONCALVES', 12154905269, 369174458, 'ENRICO JORGE GONCALVES', 'M', 'GERENTE', '01/07/1958', 'GERENCIA 2', 50271950824);
insert into bd_posto.dbo.empregado (matricula, nome, cpf, rg, filiacao, sexo, cargo, dt_nasc, lotacao, unidade) values (3, 'CARLOS GIOVANNI MARCIO ARAGAO', 66831038107, 402227104, 'PEDRO HENRIQUE LUCCA IAN ARAGAO', 'M', 'GERENTE', '12/09/1955', 'GERENCIA 3', 30172953805);
insert into bd_posto.dbo.empregado (matricula, nome, cpf, rg, filiacao, sexo, cargo, dt_nasc, lotacao, unidade) values (4, 'ANDREA LUNA ISIS DUARTE', 54284941828, 441004805, 'PEDRO LUCAS BRENO MURILO DUARTE', 'M', 'FRENTISTA', '17/04/1975', 'VENDAS 1', 16591732058);
insert into bd_posto.dbo.empregado (matricula, nome, cpf, rg, filiacao, sexo, cargo, dt_nasc, lotacao, unidade) values (5, 'SABRINA MAITE MARIA SALES', 82360810529, 424212377, 'RAFAEL PAULO SALES', 'M', 'FRENTISTA', '08/11/1964', 'VENDAS 2', 50271950824);
insert into bd_posto.dbo.empregado (matricula, nome, cpf, rg, filiacao, sexo, cargo, dt_nasc, lotacao, unidade) values (6, 'LETICIA RAFAELA LUZIA FERREIRA', 54075908321, 301164502, 'MARIO RAIMUNDO FERREIRA', 'M', 'FRENTISTA', '08/08/1963', 'VENDAS 3', 30172953805);
insert into bd_posto.dbo.empregado (matricula, nome, cpf, rg, filiacao, sexo, cargo, dt_nasc, lotacao, unidade) values (7, 'MARINA BOULOS DE LACERDA', 50281630581, 820619385, 'IAGO RYAN DE LACERDA', 'M', 'FRENTISTA', '04/07/1964', 'VENDAS 3', 50271950824);
insert into bd_posto.dbo.empregado (matricula, nome, cpf, rg, filiacao, sexo, cargo, dt_nasc, lotacao, unidade) values (8, 'JOANA DARC', 73312981485, 460963636, 'ALEXANDRE TIAGO BARROS', 'F', 'CAIXA', '27/08/1970', 'VENDAS 1', 16591732058);
insert into bd_posto.dbo.empregado (matricula, nome, cpf, rg, filiacao, sexo, cargo, dt_nasc, lotacao, unidade) values (9, 'ADA LOVELACE', 34564323482, 488704509, 'CAUA BRENO ARAUJO', 'F', 'CAIXA', '17/09/1963', 'VENDAS 2', 50271950824);
insert into bd_posto.dbo.empregado (matricula, nome, cpf, rg, filiacao, sexo, cargo, dt_nasc, lotacao, unidade) values (10, 'MORGANA ALMEIDA', 34574522482, 484706592, 'ANTONIO CARLOS FERREIRA', 'F', 'CAIXA', '11/12/1978', 'VENDAS 3', 30172953805);
insert into bd_posto.dbo.empregado (matricula, nome, cpf, rg, filiacao, sexo, cargo, dt_nasc, lotacao, unidade) values (11, 'DAVI HUGO SOUZA', 45219669346, 445229457, 'FILIPE GUSTAVO OSVALDO SOUZA', 'M', 'SEGURANCA', '11/07/1978', 'SEGURANÇA 1', 16591732058);

insert into bd_posto.dbo.dependente_emp (nome, cpf, parentesco, sexo, dt_nasc, depende) values ('GABRIEL HENRIQUE SILVEIRA', 19774633717, 'FILHO', 'M', '03/05/1979', 1);
insert into bd_posto.dbo.dependente_emp (nome, cpf, parentesco, sexo, dt_nasc, depende) values ('EMILLY DE ARAUJO GONCALVES', 82022081650, 'IRMA', 'F', '01/06/1980', 2);
insert into bd_posto.dbo.dependente_emp (nome, cpf, parentesco, sexo, dt_nasc, depende) values ('MATHEUS MARCIO LEONARDO DUARTE', 0807678830, 'PRIMO', 'M', '05/12/1996', 3);
insert into bd_posto.dbo.dependente_emp (nome, cpf, parentesco, sexo, dt_nasc, depende) values ('GIOVANA SILVA SOUZA', 81515095541, 'TIA', 'F', '28/03/1990', 4);
insert into bd_posto.dbo.dependente_emp (nome, cpf, parentesco, sexo, dt_nasc, depende) values ('TIAGO TOMAS BERNARDO FERREIRA', 56818567207, 'PAI', 'M', '18/09/1984', 5);
insert into bd_posto.dbo.dependente_emp (nome, cpf, parentesco, sexo, dt_nasc, depende) values ('ALINE SOUDA ARAUJO', 72224243774, 'MAE', 'F', '30/05/1985', 6);
insert into bd_posto.dbo.dependente_emp (nome, cpf, parentesco, sexo, dt_nasc, depende) values ('CARLOS RENAN SALES', 67901671025, 'IRMAO', 'M', '20/03/1989', 7);
insert into bd_posto.dbo.dependente_emp (nome, cpf, parentesco, sexo, dt_nasc, depende) values ('ISABEL JULIA RENATA GONCALVES', 73572698170, 'PRIMA', 'F', '25/06/1984', 8);
insert into bd_posto.dbo.dependente_emp (nome, cpf, parentesco, sexo, dt_nasc, depende) values ('FABIO MIGUEL LACERDA', 86415013528, 'TIO', 'M', '30/09/1986', 9);
insert into bd_posto.dbo.dependente_emp (nome, cpf, parentesco, sexo, dt_nasc, depende) values ('GABRIELLY LAIS ARAGAO', 85586298112, 'MAE', 'F', '15/04/1987', 10);
insert into bd_posto.dbo.dependente_emp (nome, cpf, parentesco, sexo, dt_nasc, depende) values ('BRUNO LUCAS BARROS', 78653044302, 'TIO', 'M', '04/03/1990', 11);

insert into bd_posto.dbo.cliente_pessoa_fisica (nome, cpf, endereco, telefone, cnh) values('GUILHERME RUAN SOUZA', 19572018584, 'AV O', 7939678132, 67137421076);
insert into bd_posto.dbo.cliente_pessoa_fisica (nome, cpf, endereco, telefone, cnh) values('ELISA SARA DIAS', 59281640617, 'RUA Q', 7725909833, 42334920548);
insert into bd_posto.dbo.cliente_pessoa_fisica (nome, cpf, endereco, telefone, cnh) values('FELIPE PIETRO CASTRO', 91750275823, 'RUA B', 8836541763, 46168111448);
insert into bd_posto.dbo.cliente_pessoa_fisica (nome, cpf, endereco, telefone, cnh) values('FLAVIA LIVIA MARIANA NASCIMENTO', 19842816427, 'AV T', 8126090321, 49588745286);
insert into bd_posto.dbo.cliente_pessoa_fisica (nome, cpf, endereco, telefone, cnh) values('CAMILA ESTER ALMEIDA', 93817452682, 'RUA Z', 6337313391, 23537402511);
insert into bd_posto.dbo.cliente_pessoa_fisica (nome, cpf, endereco, telefone, cnh) values('SOPHIE LAURA DE ARAUJO', 58264011994, 'RUA CEARA', 6835495156, 68481190106);
insert into bd_posto.dbo.cliente_pessoa_fisica (nome, cpf, endereco, telefone, cnh) values('DAVID VINICIUS DA SILVA', 72017596227, 'AV EUA', 6727389416, 70443299629);
insert into bd_posto.dbo.cliente_pessoa_fisica (nome, cpf, endereco, telefone, cnh) values('BRUNO GARCIA DE ALMEIDA', 91758302853, 'RUA CAPITAL', 9225621495, 64351262519);
insert into bd_posto.dbo.cliente_pessoa_fisica (nome, cpf, endereco, telefone, cnh) values('BRUNA ALMEIDA DE ARAUJO', 81049216857, 'RUA G', 6938523233, 93657430402);
insert into bd_posto.dbo.cliente_pessoa_fisica (nome, cpf, endereco, telefone, cnh) values('MARCOS VINICIUS GONCALVES LEDO', 19671530281, 'AV PORTUGAL', 6125369886, 49767864555);

insert into bd_posto.dbo.dependente_pf (nome, endereco, telefone, cnh, cpf, depende) values ('FRANCISCO FERNANDO PORTO', 'RUA ROBERTO QUEIROS', 7336030123, 63501383393, 02921245035, 19572018584);
insert into bd_posto.dbo.dependente_pf (nome, endereco, telefone, cnh, cpf, depende) values ('CARLOS EDUARDO MATHEUS GERALDO', 'RUA RIO BRANCO', 9825313544, 98464889399, 62797349008, 59281640617);
insert into bd_posto.dbo.dependente_pf (nome, endereco, telefone, cnh, cpf, depende) values ('FLAVIA AURORA RENATA CARDOSO', 'AVENIDA ALAMEDA DOS BONSAIS', 1929582420, 08558853571, 24931942091, 91750275823);
insert into bd_posto.dbo.dependente_pf (nome, endereco, telefone, cnh, cpf, depende) values ('BRENDA ALANA PEIXOTO', 'AVENIDA PRESIDENTE TANCREDO NEVES', 6439513674, 12357815689, 36284929048, 19842816427);
insert into bd_posto.dbo.dependente_pf (nome, endereco, telefone, cnh, cpf, depende) values ('ALICIA VALENTINA CARVALHO', 'RUA NACIONAL', 9235468033, 70392180889, 58626671059, 93817452682);
insert into bd_posto.dbo.dependente_pf (nome, endereco, telefone, cnh, cpf, depende) values ('EMANUELLY AURORA BRUNA DA MOTA', 'RUA AMADEUS', 7938637930, 52993122209, 91341119050, 58264011994);
insert into bd_posto.dbo.dependente_pf (nome, endereco, telefone, cnh, cpf, depende) values ('JOAQUIM MANOEL MONTEIRO', 'RUA ERVALIA', 3435191233, 18361886167, 72708611020, 72017596227);
insert into bd_posto.dbo.dependente_pf (nome, endereco, telefone, cnh, cpf, depende) values ('SEVERINO ARTHUR PINTO', 'RUA DOS PIANOS', 3437831321, 93783462680, 01323422005, 91758302853);
insert into bd_posto.dbo.dependente_pf (nome, endereco, telefone, cnh, cpf, depende) values ('IGOR BRYAN BAPTISTA', 'RUA OSEAS JOSE DOS SANTOS', 8725291804, 43438795462, 67242345065, 81049216857);

insert into bd_posto.dbo.cliente_pessoa_juridica (nome_fantasia, razao_social, endereco, cnpj) values ('EED FERRAGENS','ESTHER E DANIEL FERRAGENS ME', 'RUA DOS COELHOS', 44216661000124);
insert into bd_posto.dbo.cliente_pessoa_juridica (nome_fantasia, razao_social, endereco, cnpj) values ('GEI CASA NOTURNA','GABIEL E ISABELA CASA NOTURNA ME', 'RUA FAGUNDES RODRIGUES', 18217258000100);
insert into bd_posto.dbo.cliente_pessoa_juridica (nome_fantasia, razao_social, endereco, cnpj) values ('LEE MARKETING','LUCCA E ESTHER MARKETING ME', 'RUA ESCRITOR CAMPOS', 55744421000119);
insert into bd_posto.dbo.cliente_pessoa_juridica (nome_fantasia, razao_social, endereco, cnpj) values ('NEH TELECOM','NICOLAS E HENRY TELECOM ME', 'RUA SAO VICENTE', 77608397000123);
insert into bd_posto.dbo.cliente_pessoa_juridica (nome_fantasia, razao_social, endereco, cnpj) values ('MEV ADEGA','MILENA E VANESSA ADEGA ME', 'RUA PRIMAVERA',64600536000120);
insert into bd_posto.dbo.cliente_pessoa_juridica (nome_fantasia, razao_social, endereco, cnpj) values ('CEL MARKETING','CALEBE E LUIS MARKETING LTDA', 'RUA GUILHERME MENDES', 61941010000116);
insert into bd_posto.dbo.cliente_pessoa_juridica (nome_fantasia, razao_social, endereco, cnpj) values ('REJ FERRAGENS','REGINA E JOSEFA FERRAGENS ME', 'RUA MARIA BEZERRA', 93860758000180);
insert into bd_posto.dbo.cliente_pessoa_juridica (nome_fantasia, razao_social, endereco, cnpj) values ('REL CONSULTORIA','RICARDO E LOUISE CONSULTORIA LTDA', 'VILA MACIEL', 15592903000186);

insert into bd_posto.dbo.abastecimento (notafiscal, cpf_pf, frentista, valor, dt_abastecimento, dt_vencimento, dt_pagamento, forma_pagamento, posto) values (1, 19572018584, 4,  125.00, '1/10/2018', '1/10/2018', '1/10/2018', 'DINHEIRO', 16591732058);
insert into bd_posto.dbo.abastecimento (notafiscal, cnpj_pj, frentista, valor, dt_abastecimento, dt_vencimento, dt_pagamento, forma_pagamento, posto) values (2, 44216661000124, 5, 75.00, '2/10/2018', '2/10/2018', '2/10/2018', 'CARTAO', 16591732058);
insert into bd_posto.dbo.abastecimento (notafiscal, cnpj_pj, frentista, valor, dt_abastecimento, dt_vencimento, dt_pagamento, forma_pagamento, posto) values (3, 18217258000100, 6, 1020.00, '3/08/2018', '3/08/2018', '3/08/2018', 'CHEQUE', 50271950824);
insert into bd_posto.dbo.abastecimento (notafiscal, cpf_pf, frentista, valor, dt_abastecimento, dt_vencimento, dt_pagamento, forma_pagamento, posto) values (4, 59281640617, 7, 50.00, '12/09/2018', '12/09/2018', '12/09/2018', 'CARTAO', 30172953805);

insert into bd_posto.dbo.fidelidade (ficha, cpf_pf, data_hora, frentista, pontos) values (1, 19572018584,'20/06/1998 10:34:09', 4, 12);
insert into bd_posto.dbo.fidelidade (ficha, cpf_pf, data_hora, frentista, pontos) values (2, 59281640617, '20/05/2000 09:35:00', 5, 50);
insert into bd_posto.dbo.fidelidade (ficha, cnpj_pj, data_hora, frentista, pontos) values (3, 44216661000124, '29/06/2017 12:20:06', 6, 200);
insert into bd_posto.dbo.fidelidade (ficha, cnpj_pj, data_hora, frentista, pontos) values (4, 18217258000100, '16/10/2018 16:07:55', 7, 2000);

insert into bd_posto.dbo.banco (conta, nome, agencia, cnpj_posto) values (1, 'ITAU', 12, 16591732058);
insert into bd_posto.dbo.banco (conta, nome, agencia, cnpj_posto) values (2, 'SANTANDER', 13, 50271950824);
insert into bd_posto.dbo.banco (conta, nome, agencia, cnpj_posto) values (3, 'BANCO DO BRASIL', 41, 30172953805);

insert into bd_posto.dbo.banco (conta, nome, agencia, cpf_pf) values (4, 'BRADESCO', 15, 19572018584);
insert into bd_posto.dbo.banco (conta, nome, agencia, cpf_pf) values (5, 'CAIXA', 43, 59281640617);
insert into bd_posto.dbo.banco (conta, nome, agencia, cpf_pf) values (6, 'BRADESCO', 14, 91750275823);
insert into bd_posto.dbo.banco (conta, nome, agencia, cpf_pf) values (7, 'ITAU', 63, 19842816427);
insert into bd_posto.dbo.banco (conta, nome, agencia, cpf_pf) values (8, 'NEON', 12, 93817452682);
insert into bd_posto.dbo.banco (conta, nome, agencia, cpf_pf) values (9, 'NUBANK', 75, 58264011994);
insert into bd_posto.dbo.banco (conta, nome, agencia, cpf_pf) values (10, 'BANCO DO BRASIL', 43, 72017596227);
insert into bd_posto.dbo.banco (conta, nome, agencia, cpf_pf) values (11, 'CAIXA', 26, 91758302853);
insert into bd_posto.dbo.banco (conta, nome, agencia, cpf_pf) values (12, 'SANTANDER', 11, 81049216857);
insert into bd_posto.dbo.banco (conta, nome, agencia, cpf_pf) values (13, 'NUBANK', 74, 19671530281);

insert into bd_posto.dbo.banco (conta, nome, agencia, cnpj_pj) values (14,'BRADESCO', 443, 44216661000124);
insert into bd_posto.dbo.banco (conta, nome, agencia, cnpj_pj) values (15,'ITAU', 41, 18217258000100);
insert into bd_posto.dbo.banco (conta, nome, agencia, cnpj_pj) values (16,'BANCO DO BRASIL', 76, 55744421000119);
insert into bd_posto.dbo.banco (conta, nome, agencia, cnpj_pj) values (17,'CAIXA', 85, 77608397000123);
insert into bd_posto.dbo.banco (conta, nome, agencia, cnpj_pj) values (18,'CAIXA', 64,64600536000120);
insert into bd_posto.dbo.banco (conta, nome, agencia, cnpj_pj) values (19,'ITAU', 53, 61941010000116);
insert into bd_posto.dbo.banco (conta, nome, agencia, cnpj_pj) values (20,'SANTANDER', 62, 93860758000180);
insert into bd_posto.dbo.banco (conta, nome, agencia, cnpj_pj) values (21,'CAIXA', 52, 15592903000186);


insert into bd_posto.dbo.abastecimento (notafiscal, cpf_pf, frentista, valor, dt_abastecimento, dt_vencimento, dt_pagamento, forma_pagamento, posto) values (5, 59281640617, 6, 50.00, '12/08/2018', '14/08/2018', '14/08/2018', 'CONVENIO', 30172953805);
insert into bd_posto.dbo.abastecimento (notafiscal, cpf_pf, frentista, valor, dt_abastecimento, dt_vencimento, dt_pagamento, forma_pagamento, posto) values (6, 19572018584, 7, 70.00, '13/09/2018', '15/09/2018', '15/09/2018', 'CONVENIO', 50271950824);
insert into bd_posto.dbo.abastecimento (notafiscal, cpf_pf, frentista, valor, dt_abastecimento, dt_vencimento, dt_pagamento, forma_pagamento, posto) values (7, 91750275823, 4, 60.00, '14/10/2018', '16/10/2018', '16/10/2018', 'CONVENIO', 16591732058);
insert into bd_posto.dbo.abastecimento (notafiscal, cpf_pf, frentista, valor, dt_abastecimento, dt_vencimento, dt_pagamento, forma_pagamento, posto) values (8, 19842816427, 7, 80.00, '15/11/2018', '17/11/2018', '17/11/2018', 'CONVENIO', 50271950824);
insert into bd_posto.dbo.abastecimento (notafiscal, cpf_pf, frentista, valor, dt_abastecimento, dt_vencimento, dt_pagamento, forma_pagamento, posto) values (9, 81049216857, 6, 90.00, '16/12/2018', '18/12/2018', '18/12/2018', 'CONVENIO', 30172953805);

insert into bd_posto.dbo.abastecimento (notafiscal, cnpj_pj, frentista, valor, dt_abastecimento, dt_vencimento, dt_pagamento, forma_pagamento, posto) values (10, 18217258000100, 7, 800.00, '4/08/2018', '6/08/2018', '6/08/2018', 'CONVENIO', 50271950824);
insert into bd_posto.dbo.abastecimento (notafiscal, cnpj_pj, frentista, valor, dt_abastecimento, dt_vencimento, dt_pagamento, forma_pagamento, posto) values (11, 18217258000100, 6, 700.00, '5/09/2018', '7/09/2018', '7/09/2018', 'CONVENIO', 30172953805);
insert into bd_posto.dbo.abastecimento (notafiscal, cnpj_pj, frentista, valor, dt_abastecimento, dt_vencimento, dt_pagamento, forma_pagamento, posto) values (12, 18217258000100, 4, 600.00, '6/10/2018', '8/10/2018', '8/10/2018', 'CONVENIO', 16591732058);
