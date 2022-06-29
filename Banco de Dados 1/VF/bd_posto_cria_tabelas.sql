use bd_posto;

create table posto
(unidade			int					not null,
cnpj				bigint				not null,
nome_fantasia		varchar(50)			not null,
razao_social		varchar(100)		not null,
endereco			varchar(100),
telefone			bigint,
gerente				int					not null,

constraint pk_posto
primary key(cnpj)
);

create table lotacao
(
departamento		int					not null,
descricao			varchar(50)			not null,
unidade				bigint				not null,

primary key(descricao),
constraint pk_lotacao
foreign key (unidade) references posto(cnpj)
);

create table empregado
(matricula			int					not null,
nome				varchar(50)			not null,
cpf					bigint				not null,
rg					bigint				not null,
filiacao			varchar(50),
sexo				char(1),
cargo				varchar(50)			not null,
dt_nasc				date,
lotacao				varchar(50)			not null,
unidade				bigint				not null,

primary key(matricula),
constraint pk_empregado
foreign key (lotacao) references lotacao(descricao),
foreign key (unidade) references posto(cnpj)
);


create table dependente_emp
(cpf				bigint				not null,
nome				varchar(50)			not null,
sexo				char(1),
parentesco			varchar(50),
dt_nasc				date,
depende				int				not null,

primary key(cpf),
constraint pk_dependente
foreign key (depende) references empregado(matricula)
);

create table cliente_pessoa_fisica
(cpf				bigint				not null,
nome				varchar(50)			not null,
endereco			varchar(100),
telefone			bigint,
cnh					bigint,
constraint pk_pessoa_fisica
	primary key(cpf)
);

create table dependente_pf
(cpf				bigint				not null,
nome				varchar(50)			not null,
endereco			varchar(100),
telefone			bigint,
cnh					bigint,
depende				bigint				not null,

primary key (cpf),
constraint pk_dependente_pf
foreign key (depende) references cliente_pessoa_fisica(cpf)
);

create table cliente_pessoa_juridica
(cnpj				bigint				not null,
nome_fantasia		varchar(50)			not null,
razao_social		varchar(100)		not null,
endereco			varchar(100),
constraint pk_pessoa_juridica
	primary key(cnpj)
);

create table abastecimento
(notafiscal			int					not null,
cpf_pf				bigint,
cnpj_pj				bigint,
frentista			int					not null,
valor				decimal(9,2)		not null,
forma_pagamento		varchar(50),
posto				bigint				not null,
dt_abastecimento	date,
dt_vencimento		date,
dt_pagamento		date,

primary key(notafiscal),
constraint pk_abastecimento
foreign key (frentista) references empregado(matricula),
foreign key (cpf_pf) references cliente_pessoa_fisica(cpf),
foreign key (cnpj_pj) references cliente_pessoa_juridica(cnpj),
foreign key (posto) references posto(cnpj)
);

create table fidelidade
(cpf_pf				bigint,
cnpj_pj				bigint,
ficha				int					not null,
data_hora			datetime			not null,
frentista			int					not null,
pontos				int					not null,

primary key(ficha),
constraint pk_fidelidade
foreign key (frentista) references empregado(matricula),
foreign key (cpf_pf) references cliente_pessoa_fisica(cpf),
foreign key (cnpj_pj) references cliente_pessoa_juridica(cnpj)
);

create table banco
(conta				int					not null,
nome				varchar(50)			not null,
agencia				int					not null,
cnpj_posto			bigint,
cpf_pf				bigint,
cnpj_pj				bigint,

primary key(conta),
constraint pk_banco
foreign key (cnpj_posto) references posto(cnpj),
foreign key (cpf_pf) references cliente_pessoa_fisica(cpf),
foreign key (cnpj_pj) references cliente_pessoa_juridica(cnpj)
);
