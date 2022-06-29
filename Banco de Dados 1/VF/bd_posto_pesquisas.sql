select posto.cnpj, posto.razao_social, banco.nome, banco.agencia, banco.conta, 
pf.nome, pf.cpf, abt.dt_abastecimento, abt.valor, abt.dt_vencimento, abt.forma_pagamento
from bd_posto.dbo.abastecimento as abt
inner join bd_posto.dbo.posto as posto on posto.cnpj = abt.posto
inner join bd_posto.dbo.cliente_pessoa_fisica as pf on pf.cpf = abt.cpf_pf
inner join bd_posto.dbo.banco as banco on banco.cpf_pf = abt.cpf_pf
where abt.forma_pagamento='CONVENIO'


select distinct abt.cpf_pf, abt.cnpj_pj, pf.nome, pj.nome_fantasia, abt.valor, abt.notafiscal
from bd_posto.dbo.abastecimento as abt
left join bd_posto.dbo.cliente_pessoa_fisica as pf on pf.cpf = abt.cpf_pf
left join bd_posto.dbo.cliente_pessoa_juridica as pj on pj.cnpj = abt.cnpj_pj
order by 1
