-- 1. Consulta com JOIN (más obrigatório)
SELECT p.Nome AS Paciente, m.Nome AS Medico, e.Nome AS Especialidade, c.Data, c.Horario
FROM Consulta c
JOIN Paciente p ON c.PacienteID = p.PacienteID
JOIN Medico m ON c.MedicoID = m.MedicoID
JOIN Especialidade e ON m.EspecialidadeID = e.EspecialidadeID;

-- 2. Consultas futuras
SELECT * FROM Consulta
WHERE Data >= '2025-02-01';

-- 3. Lista de médicos ordenados
SELECT * FROM Medico
ORDER BY Nome ASC;

-- 4. Consultas de um paciente específico
SELECT c.*
FROM Consulta c
WHERE PacienteID = 1;

-- 5. Quantidade de consultas por especialidade
SELECT e.Nome AS Especialidade, COUNT(*) AS TotalConsultas
FROM Especialidade e
JOIN Medico m ON e.EspecialidadeID = m.EspecialidadeID
JOIN Consulta c ON c.MedicoID = m.MedicoID
GROUP BY e.Nome;
