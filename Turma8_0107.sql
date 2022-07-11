
-- listar o nome de cada material e o valor médio desse material

SELECT m.id, m.nome, AVG(valor) as 'Média'
FROM item_ordem_compra as ioc, material as m
WHERE ioc.idMaterial = m.id
GROUP BY m.nome
ORDER BY m.id

-- listar o nome de cada material e o valor médio desse material entre os dias 10/05/2022 e 13/05/2022

SELECT m.id, m.nome, AVG(valor) as 'Média'
FROM item_ordem_compra as ioc, material as m, ordem_compra
WHERE ioc.idMaterial = m.id AND ordem_compra.id = ioc.idOrdemCompra AND ordem_compra.data BETWEEN '2022-05-10' AND '2022-05-13'
GROUP BY m.nome
ORDER BY m.id

-- qual é o produto que mais aparece nas compras?

SELECT m.nome, COUNT(ioc.idMaterial) as quantidade
FROM item_ordem_compra as ioc, material as m 
WHERE m.id = ioc.idMaterial
GROUP BY ioc.idMaterial;


-- CRUD (insert, select, update, delete)
--      INSERT INTO tabela VALUES (campo1, campo2, ...);
--      SELECT campos FROM tabela WHERE condicao;
--      UPDATE tabela SET campo = valor WHERE condicao;
--      DELETE FROM tabela WHERE condicao;


-- fazer um script (.SQL) com os exercícios do checkpoint de 27/06 e os exercícios propostos.