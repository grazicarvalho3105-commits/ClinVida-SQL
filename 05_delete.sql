USE ClinVida;

-- 1. Remover um prontuário
DELETE FROM Prontuario
WHERE ProntuarioID = 3;

-- 2. Remover uma consulta (precisa ter o prontuário apagado antes)
DELETE FROM Consulta
WHERE ConsultaID = 3;

-- 3. Remover paciente sem dependências
DELETE FROM Paciente
WHERE PacienteID = 3;
