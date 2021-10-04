ERRO APÓS SUBIR ENTERPRISE

Se mesmo após o serviço Enterprise voltar, o log continuar com erro, verificar:

#Analisar o log e se houver esta mensagem:
tabela log_epa_rotativo__controle_troco possui o campo 'id'...

>>> Seguir o procedimento:

> Rodar a seguinte query no banco de dados:
select * from sincronizacao_enterprise order by id;

> Se houver uma tabela chamada "perfis", rodar o seguinte comando:
DELETE FROM sincronizacao_enterprise where tabela = 'perfis';

> Rodar a seguinte query no banco de dados:
SELECT * from log_epa_rotativo__controle_troco;

> Se houver não houver o campo "id", rodar o seguinte comando:
ALTER TABLE log_epa_rotativo__controle_troco ADD id bigserial NOT NULL;


#Após isto, verificar a possibilidade de atualizar o server2.
