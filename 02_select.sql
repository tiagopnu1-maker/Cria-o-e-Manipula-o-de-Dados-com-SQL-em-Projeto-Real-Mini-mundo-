-- 1. Buscar todos os pets de um tutor específico
SELECT nome, especie, raca, peso
FROM PacienteAnimal
WHERE id_tutor = 1
ORDER BY nome;

-- 2. Consultas pendentes
SELECT c.id_consulta, a.nome AS pet, v.nome AS veterinario, c.data_consulta, f.status_pagamento
FROM Consulta c
JOIN PacienteAnimal a ON c.id_animal = a.id_animal
JOIN Veterinario v ON c.id_veterinario = v.id_veterinario
JOIN Fatura f ON c.id_fatura = f.id_fatura
WHERE f.status_pagamento = 'Pendente'
ORDER BY c.data_consulta DESC
LIMIT 5;

-- 3. Histórico de vacinas de um pet
SELECT a.nome, vac.nome_vacina, va.data_aplicacao, va.lote, va.data_proxima
FROM PacienteAnimal a
JOIN VacinaAplicada va ON a.id_animal = va.id_animal
JOIN Vacina vac ON va.id_vacina = vac.id_vacina
WHERE a.id_animal = 1;

-- 4. Exames e seus resultados por consulta
SELECT c.data_consulta, a.nome AS pet, e.nome_exame, er.resultado, er.laudo_arquivo
FROM Consulta c
JOIN PacienteAnimal a ON c.id_animal = a.id_animal
JOIN ExameRealizado er ON c.id_consulta = er.id_consulta
JOIN Exame e ON er.id_exame = e.id_exame
ORDER BY c.data_consulta
LIMIT 10;

-- 5. Faturamento total por tutor
SELECT t.nome, SUM(f.total) AS total_pago
FROM Tutor t
JOIN Fatura f ON t.id_tutor = f.id_tutor
GROUP BY t.nome
ORDER BY total_pago DESC;
