-- UPDATES
UPDATE PacienteAnimal SET peso = 31.0 WHERE id_animal = 1;
UPDATE Fatura SET status_pagamento = 'Paga' WHERE id_fatura = 2;
UPDATE Tutor SET telefone = '11900001111' WHERE id_tutor = 3;

-- DELETEs
DELETE FROM ExameRealizado WHERE id_exame_realizado = 2;
DELETE FROM Consulta WHERE id_consulta = 2;
DELETE FROM Tutor WHERE id_tutor = 3;
