CREATE DATABASE ClinVida;
USE ClinVida;

-- Tabela de Pacientes
CREATE TABLE Paciente (
    PacienteID INT AUTO_INCREMENT PRIMARY KEY,
    Nome VARCHAR(100) NOT NULL,
    DataNascimento DATE NOT NULL,
    Telefone VARCHAR(20),
    Endereco VARCHAR(200)
);

-- Tabela de Especialidades
CREATE TABLE Especialidade (
    EspecialidadeID INT AUTO_INCREMENT PRIMARY KEY,
    Nome VARCHAR(100) NOT NULL
);

-- Tabela de Médicos
CREATE TABLE Medico (
    MedicoID INT AUTO_INCREMENT PRIMARY KEY,
    Nome VARCHAR(100) NOT NULL,
    EspecialidadeID INT NOT NULL,
    FOREIGN KEY (EspecialidadeID) REFERENCES Especialidade(EspecialidadeID)
);

-- Tabela de Consultas
CREATE TABLE Consulta (
    ConsultaID INT AUTO_INCREMENT PRIMARY KEY,
    PacienteID INT NOT NULL,
    MedicoID INT NOT NULL,
    Data DATE NOT NULL,
    Horario TIME NOT NULL,
    FOREIGN KEY (PacienteID) REFERENCES Paciente(PacienteID),
    FOREIGN KEY (MedicoID) REFERENCES Medico(MedicoID)
);

-- Tabela de Prontuários
CREATE TABLE Prontuario (
    ProntuarioID INT AUTO_INCREMENT PRIMARY KEY,
    ConsultaID INT NOT NULL,
    Descricao TEXT NOT NULL,
    FOREIGN KEY (ConsultaID) REFERENCES Consulta(ConsultaID)
);
