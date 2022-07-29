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

CREATE TABLE tab_caixa(
	id_caixa INT NOT NULL PRIMARY KEY IDENTITY,
	data DATE NOT NULL,
	saldo_inicial DECIMAL(10,2) NOT NULL,
	saldo_final DECIMAL(10,2) NOT NULL
);

CREATE TABLE tab_vendas(
	id_venda INT NOT NULL PRIMARY KEY IDENTITY,
	data DATE NOT NULL,
	valor DECIMAL (10,2) NOT NULL
);

INSERT INTO tab_caixa(data, saldo_inicial, saldo_final)
VALUES
('2022-08-02',100,100);
