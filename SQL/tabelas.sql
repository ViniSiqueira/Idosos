IF OBJECT_ID('CLIENTES') IS NULL
BEGIN
	CREATE TABLE CLIENTES
	(
		CLIENTE_ID INTEGER NOT NULL IDENTITY PRIMARY KEY,
		NOME VARCHAR(50) NULL,
		ENDERECO VARCHAR(250) NULL,
		CIDADE VARCHAR(250) NULL,
		BAIRRO VARCHAR(100) NULL,
		ESTADO VARCHAR(2) NULL,
		CEP VARCHAR(10) NULL,
		TELEFONE VARCHAR(14) NULL,
		EMAIL VARCHAR(250) NULL,
		DATA_NASCIMENTO DATETIME NULL
	)
END

IF OBJECT_ID('BANHEIRO') IS NULL
BEGIN
	CREATE TABLE BANHEIRO
	(
		BANHEIRO_ID INTEGER NOT NULL IDENTITY PRIMARY KEY,
		QTD_DIURESE INT NULL,
		QTD_EVACUACAO INT NULL,
		DIURESE VARCHAR(1) NULL,
		EVACUACAO VARCHAR(1) NULL,
		DATA_BANHEIRO DATETIME NULL,
		CLIENTE_ID INT NULL
		
		CONSTRAINT FK_BANHEIRO_CLIENTES
		FOREIGN KEY (CLIENTE_ID) REFERENCES CLIENTES(CLIENTE_ID)
	)
END