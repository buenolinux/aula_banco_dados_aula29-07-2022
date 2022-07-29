/*
TRIGGER é como uma função que é disparada mediante alguma ação.
Geralmente essas ações que disparam os TRIGGERS são alterações
nas tabelas por meio de operações de inserção, exclusão e 
atualização de dados (insert, delete e update).

Vamos a um exemplo prático, criaremos um controle de fluxode caixa
de uma loja, onde a cada venda inserida na tabela de vendas,
será automaticamente atualizada na tabela de caixa
o mesmo acontecerá quando removermos a venda.
*/
CREATE DATABASE fluxocaixa;
USE fluxocaixa;
