CREATE TABLE clientes (
cpf varchar(20) PRIMARY KEY,
senha varchar(150) NOT NULL,
nome varchar(200) NOT NULL,
email varchar(50) NOT NULL UNIQUE,
endereco varchar(200) NOT NULL,
complemento varchar(200) NOT NULL,
uf varchar(100) NOT NULL,
cidade varchar(200) NOT NULL,
bairro varchar(200) NOT NULL,
cep varchar(20) NOT NULL,
cnh varchar(16) NOT NULL UNIQUE,
dt_nascimento DATE NOT NULL,
telefone varchar(20) NOT NULL
);
CREATE TABLE funcionario (
cod_func MEDIUMINT AUTO_INCREMENT PRIMARY KEY,
nome varchar(200) NOT NULL,
email varchar(50) NOT NULL UNIQUE,
senha varchar(150) NOT NULL,
endereco varchar(200) NOT NULL,
complemento varchar(200) NOT NULL,
uf varchar(100) NOT NULL,
cidade varchar(200) NOT NULL,
bairro varchar(200) NOT NULL,
cep varchar(20) NOT NULL,
dt_nascimento DATE NOT NULL,
telefone varchar(20) NOT NULL
);
CREATE TABLE automoveis (
chassi varchar(17) PRIMARY KEY,
placa varchar(7) NOT NULL UNIQUE,
marca varchar(25) NOT NULL,
modelo varchar(25) NOT NULL,
cor varchar(25) NOT NULL,
ano SMALLINT NOT NULL,
valor_diaria numeric(7,2) NOT NULL,
quilometragem MEDIUMINT NOT NULL,
ultima_revisao DATE,
proxima_revisao DATE,
valor_seguro numeric(7,2),
disponivel BOOLEAN NOT NULL,
observacao varchar(100)
);
CREATE TABLE locacoes (
cod_locacao INT PRIMARY KEY,
cpf varchar(20) NOT NULL,
chassi varchar(17) NOT NULL,
data_inicial DATE NOT NULL,
data_final DATE,
valor_base numeric (7,2) NOT NULL,
seguro BOOLEAN,
FOREIGN KEY (cpf) REFERENCES clientes (cpf) ON DELETE CASCADE,
FOREIGN KEY (chassi) REFERENCES automoveis (chassi) ON DELETE CASCADE
);