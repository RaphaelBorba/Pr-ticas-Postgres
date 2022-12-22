CREATE DATABASE agencia;

CREATE TABLE companhias(
    id PRIMARY KEY INTEGER NOT NULL,
    name text NOT NULL,
    sigla CHAR(10) NOT NULL UNIQUE
);

CREATE TABLE aeroportos(
    id PRIMARY KEY INTEGER NOT NULL,
    name text NOT NULL,
    sigla CHAR(10) NOT NULL UNIQUE
);

CREATE TABLE voos(
    id PRIMARY KEY INTEGER NOT NULL,
    companhias_id INTEGER NOT NULL REFERENCES companhias.id,
    aero_out_id INTEGER NOT NULL REFERENCES aeroportos.id,
    aero_arrive_id INTEGER NOT NULL REFERENCES aeroportos.id,
    leave_at TIME NOT NULL,
    arrive_at TIME NOT NULL,
    sigla TEXT NOT NULL
);