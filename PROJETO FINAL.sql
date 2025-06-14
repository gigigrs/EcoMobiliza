CREATE DATABASE eco_mobiliza;
USE eco_mobiliza;
CREATE TABLE usuario (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100),
    email VARCHAR(100) UNIQUE,
    senha VARCHAR(100),
    tipo ENUM('admin', 'comum') NOT NULL
);
CREATE TABLE meio_transporte (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(50),
    tipo ENUM('ativo', 'publico', 'carro'),
    fator_emissao DECIMAL(5,2)
);
CREATE TABLE trajeto (
    id INT AUTO_INCREMENT PRIMARY KEY,
    id_usuario INT,
    id_transporte INT,
    distancia_km DECIMAL(5,2),
    data DATE,
    FOREIGN KEY (id_usuario) REFERENCES usuario(id),
    FOREIGN KEY (id_transporte) REFERENCES meio_transporte(id)
);

-- Inserir administrador
INSERT INTO usuario (nome, email, senha, tipo)
VALUES ('Admin Principal', 'admin@eco.com', 'admin123', 'admin');

 
 INSERT INTO meio_transporte (nome, tipo, fator_emissao) VALUES
('Bicicleta', 'ativo', 0.00),
('Caminhada', 'ativo', 0.00),
('Ônibus', 'publico', 0.08),
('Metrô', 'publico', 0.05),
('Carro comum', 'carro', 0.21);




