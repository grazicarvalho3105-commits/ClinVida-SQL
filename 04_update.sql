USE ClinVida;

-- Atualizar telefone de um paciente
UPDATE Paciente
SET Telefone = '11999998888'
WHERE PacienteID = 1;

-- Atualizar horário de uma consulta
UPDATE Consulta
SET Horario = '11:00'
WHERE ConsultaID = 1;

-- Atualizar descrição do prontuário
UPDATE Prontuario
SET Descricao = 'Atualização: paciente relata melhora dos sintomas.'
WHERE ProntuarioID = 1;
