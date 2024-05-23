
CREATE TABLE Livros (
    titulo TEXT NOT NULL,
    autor TEXT NOT NULL,
    genero TEXT NOT NULL,
    disponibilidade INTEGER DEFAULT 4,
    id_livro INT PRIMARY KEY
);

CREATE TABLE Clientes (
    id_cliente INT NOT NULL,
    nome VARCHAR(255) NOT NULL,
    email VARCHAR(255) NOT NULL,
    telefone VARCHAR(20) NOT NULL,
    endereco VARCHAR(255) NOT NULL,
    PRIMARY KEY (id_cliente)
);


CREATE TABLE Recepcionistas (
  id_recepcionista INT NOT NULL,
  telefone INT NOT NULL,
  nome VARCHAR(45) NOT NULL,
  email VARCHAR(45) NOT NULL,
  senha VARCHAR(45) NOT NULL,
  PRIMARY KEY (id_recepcionista)
  );
  
CREATE TABLE Emprestimos (
    id_emprestimo INT NOT NULL,
    id_livro INT NOT NULL,
    id_cliente INT NOT NULL,
	data_emprestimo DATE NOT NULL,
    data_devolucao DATE NOT NULL,
    PRIMARY KEY (id_emprestimo),
    FOREIGN KEY (id_livro) REFERENCES Livros(id_livro),
    FOREIGN KEY (id_cliente) REFERENCES Clientes(id_cliente)
);
  
CREATE TABLE Editora(
  id_editora INT NOT NULL,
  nome_editora VARCHAR(45) NOT NULL,
  PRIMARY KEY (id_editora)
);

