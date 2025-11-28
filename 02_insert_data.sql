USE ClinVida;

-- Inserção de Pacientes
INSERT INTO Paciente (Nome, DataNascimento, Telefone, Endereco) VALUES
('Ana Silva', '1990-05-12', '11995667788', 'Rua das Flores, 123'),
('Carlos Pereira', '1984-09-22', '11988776655', 'Av. Paulista, 1000'),
('Beatriz Souza', '2001-01-30', '11944332211', 'Rua Azul, 45');

-- Inserção de Especialidades
INSERT INTO Especialidade (Nome) VALUES
('Cardiologia'),
('Dermatologia'),
('Pediatria');

-- Inserção de Médicos
INSERT INTO Medico (Nome, EspecialidadeID) VALUES
('Dr. João Mendes', 1),
('Dra. Paula Ramos', 2),
('Dr. Henrique Lopes', 3);

-- Inserção de Consultas
INSERT INTO Consulta (PacienteID, MedicoID, Data, Horario) VALUES
(1, 1, '2025-02-01', '10:00'),
(2, 2, '2025-02-02', '14:30'),
(3, 3, '2025-02-03', '09:15');

-- Inserção de Prontuários
INSERT INTO Prontuario (ConsultaID, Descricao) VALUES
(1, 'Paciente relata dor torácica leve.'),
(2, 'Paciente apresenta alergia cutânea.'),
(3, 'Consulta pediátrica de rotina.');
