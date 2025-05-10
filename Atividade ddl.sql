CREATE DATABASE IF NOT EXISTS Atividade;
USE Atividade;
-- 2. 
CREATE TABLE Clientes (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(255) NOT NULL,
    email VARCHAR(255) UNIQUE,
    data_cadastro DATE
);
-- 3. 
CREATE TABLE IF NOT EXISTS Pedidos (
    id INT AUTO_INCREMENT PRIMARY KEY,
    cliente_id INT,
    data_pedido DATE,
    valor_total DECIMAL(10,2),
    FOREIGN KEY (cliente_id) REFERENCES Clientes(id)
);
-- 4. 
ALTER TABLE Clientes
ADD COLUMN telefone VARCHAR(15);
-- 5. 
ALTER TABLE Pedidos
MODIFY COLUMN valor_total DECIMAL(10,2);
-- 6. 
ALTER TABLE Pedidos
CHANGE COLUMN data_pedido data DATE;
-- 7. 
DROP TABLE IF EXISTS Pedidos;
-- 8. 
TRUNCATE TABLE Clientes;
-- 9. 
CREATE TABLE IF NOT EXISTS Produtos (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(255),
    preco DECIMAL CHECK (preco > 0)
);
-- 10.
CREATE INDEX idx_email ON Clientes(email);
-- 11. 
RENAME TABLE Clientes TO ClientesAtivos;