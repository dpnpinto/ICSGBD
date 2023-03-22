CREATE TABLE T_Alunos (
    id_aluno INTEGER PRIMARY KEY,
    nome TEXT NOT NULL,
    data_nascimento DATE NOT NULL
);

CREATE TABLE T_Docentes (
    id_docente INTEGER PRIMARY KEY,
    nome TEXT NOT NULL,
    data_contratacao DATE NOT NULL
);

CREATE TABLE T_avaliacoes (
    id_avaliacoes INTEGER PRIMARY KEY,
    aluno_id INTEGER NOT NULL,
    docente_id INTEGER NOT NULL,
    nota REAL NOT NULL,
    FOREIGN KEY (aluno_id) REFERENCES alunos(id_aluno),
    FOREIGN KEY (docente_id) REFERENCES docentes(id_docente)
);
