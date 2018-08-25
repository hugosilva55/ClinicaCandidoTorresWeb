CREATE DATABASE clinica_candido_torres_database;

USE clinica_candido_torres_database;


CREATE TABLE USUARIO(
	IDUSUARIO INT(5) PRIMARY KEY AUTO_INCREMENT,
	NOME VARCHAR(100) NOT NULL,
	LOGIN VARCHAR(50) NOT NULL UNIQUE,
	SENHA VARCHAR(50) NOT NULL,
	TIPOUSUARIO VARCHAR(50) NOT NULL
);

INSERT INTO USUARIO(NOME, LOGIN, SENHA, TIPOUSUARIO) VALUES ("Admin","admin","21232f297a57a5a743894a0e4a801fc3","Administrador");

CREATE TABLE PACIENTE(
	IDPACIENTE INT PRIMARY KEY AUTO_INCREMENT,
        NOME VARCHAR(100) NOT NULL,
        NUMEROPRONTUARIO VARCHAR(50) NULL,
        SEXO ENUM('-----','Masculino','Feminino') NOT NULL,
        DATANASC DATE NOT NULL,
        CPF VARCHAR(11) NOT NULL,
        RG VARCHAR(13)  NULL,
        EMAIL VARCHAR(50) NULL,
        PROFISSAO VARCHAR(50) NOT NULL,
        TELEFONE VARCHAR(18),
        CELULAR VARCHAR(15) NOT NULL,
        INDICACAO VARCHAR(50) NULL,
        ESTADOCIVIL ENUM('-----','Casado(a)','Solteiro(a)','Divorciado(a)','Viúvo(a)','Separado(a)') NOT NULL,
        ENDERECO VARCHAR(50) NOT NULL,
        BAIRRO VARCHAR(50) NOT NULL,
        NUMERO VARCHAR(50) NOT NULL,
        CIDADE VARCHAR(32) NOT NULL,
        ESTADO VARCHAR(15) NOT NULL,
        COMPLEMENTO VARCHAR(50) NULL,
        CEP VARCHAR(9) NULL
);


CREATE TABLE MEDICO(
	IDMEDICO INT(11) PRIMARY KEY AUTO_INCREMENT,
	NOME VARCHAR(255) NOT NULL,
	TELEFONE VARCHAR(15) NOT NULL,
	EMAIL VARCHAR(50) NOT NULL UNIQUE,
	DTANASCIMENTO DATE NOT NULL,
	CONSELHO VARCHAR(50) NOT NULL,
	ESPECIALIDADE VARCHAR(50) NULL,
	FUNCAO VARCHAR(50) NOT NULL,
	TIPODEATENDIMENTO VARCHAR(50) NOT NULL
);

CREATE TABLE AGENDA (
    IDAGENDA INT(11) PRIMARY KEY AUTO_INCREMENT NOT NULL,
    PACIENTE VARCHAR(50) NOT NULL,
    DATADEATENDIMENTO DATE NOT NULL,
    MEDICO VARCHAR(50) NOT NULL,
    TIPOATENDIMENTO VARCHAR(50) NOT NULL,
    OBSERVACAO VARCHAR(255) NOT NULL,
    VALOR DECIMAL(10,2) NOT NULL,
    PAGAMENTO VARCHAR(255) NOT NULL,
    ID_PACIENTE INT(11)  NOT NULL,
    ID_MEDICO INT(11)  NOT NULL,
    ID_ATENDIMENTO INT(11)  NOT NULL    
);

CREATE TABLE ATENDIMENTO(
    IDATENDIMENTO INT (11) PRIMARY KEY AUTO_INCREMENT,
    TIPOATENDIMENTO VARCHAR (255) NOT NULL
);

ALTER TABLE AGENDA ADD CONSTRAINT FK_ID_PACIENTE_AGENDA FOREIGN KEY (ID_PACIENTE) REFERENCES PACIENTE(IDPACIENTE);

ALTER TABLE AGENDA ADD CONSTRAINT FK_ID_ATENDIMENTO_AGENDA FOREIGN KEY (ID_ATENDIMENTO) REFERENCES ATENDIMENTO(IDATENDIMENTO);

ALTER TABLE AGENDA ADD CONSTRAINT FK_ID_MEDICO_AGENDA FOREIGN KEY (ID_MEDICO) REFERENCES MEDICO(IDMEDICO);


/* Procedimento Para a Tabela da tela inicial */

SELECT A.DATADEATENDIMENTO AS 'DATA DE ATENDIMENTO', P.NOME AS 'NOME DO PACIENTE', M.NOME AS 'NOME DO MEDICO', 
T.NOME AS 'TIPO DE ATENDIMENTO'
FROM AGENDA A
INNER JOIN PACIENTE P
ON P.IDPACIENTE = A.ID_PACIENTE
INNER JOIN MEDICO M
ON M.IDMEDICO = A.ID_MEDICO
INNER JOIN ATENDIMENTO T
ON T.IDATENDIMENTO= A.ID_ATENDIMENTO;
