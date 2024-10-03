CREATE TABLE "CLIENTE"(
    "id_cliente" INT NOT NULL GENERATED ALWAYS AS IDENTITY,
    "nome" VARCHAR(100) NOT NULL,
    "cpf" CHAR(11) NOT NULL UNIQUE,
    "telefone" VARCHAR(11) NOT NULL,
    "email" VARCHAR(100) NOT NULL UNIQUE,
    PRIMARY KEY ("id_cliente")
);

CREATE TABLE "CARDAPIO"(
    "id_cardapio" INT NOT NULL GENERATED ALWAYS AS IDENTITY,
    "nome_lanche" VARCHAR(20) NOT NULL,
    "descricao" VARCHAR(255) NOT NULL, -- Descrição dos ingredientes ou características do lanche
    "preco" DECIMAL(10, 2) NOT NULL,
    PRIMARY KEY ("id_cardapio")
);

CREATE TABLE "FORMAS_PAGAMENTO"(
    "id_pagamento" INT NOT NULL GENERATED ALWAYS AS IDENTITY,
    "tipo_pagamento" VARCHAR(50) NOT NULL,  -- Ex: "Cartão de Crédito", "Dinheiro", "Pix"
    "descricao" VARCHAR(100),  -- Descrição opcional do pagamento
    PRIMARY KEY ("id_pagamento")
);

CREATE TABLE "PEDIDO"(
    "id_pedido" INT NOT NULL GENERATED ALWAYS AS IDENTITY,
    "id_cliente" INT NOT NULL,
    "id_cardapio" INT NOT NULL,
    "id_pagamento" INT NOT NULL,
    "data_pedido" TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    PRIMARY KEY ("id_pedido"),
    FOREIGN KEY ("id_cliente") REFERENCES "CLIENTE"("id_cliente"),
    FOREIGN KEY ("id_cardapio") REFERENCES "CARDAPIO"("id_cardapio"),
    FOREIGN KEY ("id_pagamento") REFERENCES "FORMAS_PAGAMENTO"("id_pagamento")
);
CREATE TABLE "STATUS_DELIVERY"(
    "id_status_delivery" INT NOT NULL GENERATED ALWAYS AS IDENTITY,
    "descricao" VARCHAR(50),
    PRIMARY KEY ("id_status_delivery")
);

CREATE TABLE "RECEPCIONISTA"(
    "id_ticket" INT NOT NULL GENERATED ALWAYS AS IDENTITY,
    "id_cliente" INT NOT NULL,
    "id_status_delivery" INT NOT NULL,
    PRIMARY KEY ("id_ticket"),
    FOREIGN KEY ("id_cliente") REFERENCES "CLIENTE" ("id_cliente"),
    FOREIGN KEY ("id_status_delivery") REFERENCES "STATUS_DELIVERY" ("id_status_delivery")
);