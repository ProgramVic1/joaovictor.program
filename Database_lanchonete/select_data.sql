SELECT
    r.id_ticket,                                      -- ID do ticket na tabela RECEPCIONISTA
    c.nome AS Cliente,                           -- Nome do cliente
    c.telefone,                                       -- Telefone do cliente
    STRING_AGG(DISTINCT ca.nome_lanche, ', ') AS pedidos,  -- Concatena os nomes dos lanches solicitados
    SUM(ca.preco) AS total_preco,                     -- Soma o preço total dos lanches
    fp.tipo_pagamento,                                -- Forma de pagamento utilizada
    sd.descricao AS status_delivery                   -- Status da entrega
FROM
    "RECEPCIONISTA" r
JOIN
    "CLIENTE" c ON r.id_cliente = c.id_cliente        -- Junção com a tabela CLIENTE para obter informações do cliente
JOIN
    "PEDIDO" p ON r.id_cliente = p.id_cliente         -- Junção com a tabela PEDIDO para obter os pedidos
JOIN
    "CARDAPIO" ca ON p.id_cardapio = ca.id_cardapio   -- Junção com a tabela CARDAPIO para obter detalhes dos lanches
JOIN
    "FORMAS_PAGAMENTO" fp ON p.id_pagamento = fp.id_pagamento  -- Junção com a tabela FORMAS_PAGAMENTO para obter o tipo de pagamento
JOIN
    "STATUS_DELIVERY" sd ON r.id_status_delivery = sd.id_status_delivery  -- Junção com a tabela STATUS_DELIVERY para obter o status da entrega
WHERE
    r.id_ticket = 15  -- Substitua '1' pelo ID do ticket que deseja consultar
GROUP BY
    r.id_ticket, c.nome, c.telefone, fp.tipo_pagamento, sd.descricao;  -- Agrupa pelos atributos desejados
