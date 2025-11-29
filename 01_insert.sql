-- Inserir Tutores
INSERT INTO Tutor (nome, cpf, telefone, email, endereco) VALUES
('Maria Oliveira', '12345678900', '11999998888', 'maria@email.com', 'Rua Verde, 45 – São Paulo'),
('Carlos Souza', '98765432100', '21988887777', 'carlos@email.com', 'Av. Central, 120 – Rio de Janeiro'),
('Ana Lima', '45612378900', '31977776666', 'ana@email.com', 'Rua das Flores, 10 – Belo Horizonte');

-- Inserir Veterinários
INSERT INTO Veterinario (nome, crmv, especialidade, telefone) VALUES
('Dr. João Pereira', 'CRMV-SP 11223', 'Clínica Geral', '11955554444'),
('Dra. Fernanda Costa', 'CRMV-RJ 33445', 'Dermatologia', '21944443333');

-- Inserir Animais (Pets)
INSERT INTO PacienteAnimal (nome, especie, raca, data_nascimento, peso, observacoes_medicas, id_tutor) VALUES
('Rex', 'Cachorro', 'Labrador', '2020-03-10', 30.5, 'Alergia a frango', 1),
('Mia', 'Gato', 'Siamês', '2021-08-22', 4.3, 'Nenhuma', 2),
('Thor', 'Cachorro', 'Pastor Alemão', '2019-11-05', 40.0, 'Displasia leve', 1);

-- Inserir Vacinas
INSERT INTO Vacina (nome_vacina, fabricante, periodicidade) VALUES
('Antirrábica', 'Zoetis', 'Anual'),
('V8', 'Virbac', 'Anual'),
('V4 Felina', 'Virbac', 'Anual');

-- Inserir Aplicações de Vacina
INSERT INTO VacinaAplicada (data_aplicacao, lote, data_proxima, id_animal, id_vacina) VALUES
('2025-01-15', 'L123', '2026-01-15', 1, 1),
('2025-02-10', 'L555', '2026-02-10', 3, 2),
('2025-03-05', 'F999', '2026-03-05', 2, 3);

-- Inserir Faturas
INSERT INTO Fatura (data_emissao, total, status_pagamento, id_tutor) VALUES
('2025-04-01', 250.00, 'Paga', 1),
('2025-04-03', 180.00, 'Pendente', 2);

-- Inserir Consultas
INSERT INTO Consulta (data_consulta, motivo, diagnostico, tratamento, id_animal, id_veterinario, id_fatura) VALUES
('2025-04-01 10:30', 'Coceira intensa', 'Dermatite alérgica', 'Antialérgico por 7 dias', 1, 2, 1),
('2025-04-03 15:00', 'Check-up', 'Saudável', 'Sem medicação', 2, 1, 2),
('2025-04-02 09:00', 'Dificuldade ao andar', 'Displasia', 'Fisioterapia 4 semanas', 3, 1, 1);

-- Inserir Exames
INSERT INTO Exame (nome_exame, tipo, valor_referencia) VALUES
('Hemograma', 'Laboratorial', 80.00),
('Raio-X', 'Imagem', 150.00);

-- Inserir Exames Realizados
INSERT INTO ExameRealizado (data_exame, resultado, laudo_arquivo, id_exame, id_consulta) VALUES
('2025-04-01', 'Eosinofilia alta', 'link_laudo_hemograma.pdf', 1, 1),
('2025-04-02', 'Alteração articular compatível', 'link_raiox_laudo.png', 2, 3);
