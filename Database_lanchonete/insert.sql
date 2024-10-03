INSERT INTO "CLIENTE" ("nome", "cpf", "telefone", "email") VALUES 
('João Silva', '12345678901', '79999990001', 'joao.silva@email.com'),
('Maria Oliveira', '98765432100', '79999990002', 'maria.oliveira@email.com'),
('Carlos Souza', '12312312399', '79999990003', 'carlos.souza@email.com'),
('Ana Pereira', '78978978922', '79999990004', 'ana.pereira@email.com'),
('Pedro Santos', '45645645633', '79999990005', 'pedro.santos@email.com'),
('Lucas Almeida', '85285285244', '79999990006', 'lucas.almeida@email.com'),
('Fernanda Costa', '96396396355', '79999990007', 'fernanda.costa@email.com'),
('Bruna Martins', '74174174166', '79999990008', 'bruna.martins@email.com'),
('Paulo Rocha', '32132132177', '79999990009', 'paulo.rocha@email.com'),
('Gabriela Sousa', '65465465488', '79999990010', 'gabriela.sousa@email.com'),
('Rodrigo Lima', '95195195199', '79999990011', 'rodrigo.lima@email.com'),
('Juliana Nunes', '85274196311', '79999990012', 'juliana.nunes@email.com'),
('Rafael Mendes', '96385274122', '79999990013', 'rafael.mendes@email.com'),
('Patrícia Barros', '12385296333', '79999990014', 'patricia.barros@email.com'),
('Renato Carvalho', '78912345644', '79999990015', 'renato.carvalho@email.com');

INSERT INTO "CARDAPIO" ("nome_lanche", "descricao", "preco") VALUES 
('X-Burguer', 'Pão, carne, queijo, alface, tomate', 15.90),
('Pizza', 'Massa, molho, queijo, pepperoni', 35.00),
('Salada Caesar', 'Alface, frango, croutons, queijo parmesão', 22.50),
('Hot Dog', 'Pão, salsicha, ketchup, mostarda', 12.00),
('Milkshake', 'Leite, sorvete, cobertura de chocolate', 10.00),
('Bolo de Chocolate', 'Bolo de chocolate com cobertura cremosa', 7.50),
('Torta de Limão', 'Torta com recheio de limão e cobertura de merengue', 8.50),
('Coxinha', 'Frango desfiado envolto em massa frita', 5.00),
('Empada', 'Massa crocante com recheio de frango ou camarão', 6.00),
('Batata Frita', 'Porção de batata frita', 9.00),
('Suco de Laranja', 'Suco natural de laranja', 5.50),
('Sanduíche Natural', 'Pão integral, frango, alface, tomate', 12.50),
('Açaí na Tigela', 'Açaí com granola e frutas', 15.00),
('Café Expresso', 'Café expresso tradicional', 4.00),
('Torta de Frango', 'Torta recheada com frango e queijo', 7.00);


INSERT INTO "FORMAS_PAGAMENTO" ("tipo_pagamento", "descricao") VALUES 
('Cartão de Crédito', 'Pagamento realizado via cartão de crédito'),
('Dinheiro', 'Pagamento em espécie'),
('Pix', 'Transferência via Pix'),
('Cartão de Débito', 'Pagamento via cartão de débito'),
('Vale Refeição', 'Pagamento com vale refeição');


INSERT INTO "STATUS_DELIVERY" ("descricao") VALUES 
('Em preparo'),
('A caminho'),
('Entregue'),
('Cancelado'),
('Aguardando pagamento');

INSERT INTO "PEDIDO" ("id_cliente", "id_cardapio", "id_pagamento") VALUES 
(1, 1, 1),
(2, 2, 2),
(3, 3, 3),
(4, 4, 4),
(5, 5, 5),
(6, 6, 1),
(7, 7, 2),
(8, 8, 3),
(9, 9, 4),
(10, 10, 5),
(11, 11, 1),
(12, 12, 2),
(13, 13, 3),
(14, 14, 4),
(15, 15, 5);


INSERT INTO "RECEPCIONISTA" ("id_cliente", "id_status_delivery") VALUES 
(1, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 5),
(6, 1),
(7, 2),
(8, 3),
(9, 4),
(10, 5),
(11, 1),
(12, 2),
(13, 3),
(14, 4),
(15, 5);