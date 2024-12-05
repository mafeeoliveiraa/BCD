DROP DATABASE IF EXISTS db_lojaveículo;

CREATE DATABASE IF NOT EXISTS db_lojaveículo;

USE db_lojaveículo;

CREATE TABLE IF NOT EXISTS tb_loja (
id_loja INT AUTO_INCREMENT PRIMARY KEY,
 nome_loja VARCHAR(45) NOT NULL,
email_loja VARCHAR(100) UNIQUE NOT NULL,
telefone_loja VARCHAR(20)
);

INSERT INTO tb_loja (nome_loja, email_loja, telefone_loja) VALUES
('CarLux', 'CarLux@gmail.com', '11987654321'),
('AutoStar', 'AutoStar@gmail.com', '21987654322'),
('RoadMaster', 'RoadMaster@gmail.com', '41987654324'),
('Veículos VIP', 'VeiculosVIP@gmail.com', '51987654325'),
('Garage Prime', 'GaragePrime@gmail.com', '62987654326'),
('TopDrive', 'TopDrive@gmail.com', '71987654327'),
('MotorHouse', 'MotorHouse@gmail.com', '91987654329'),
('SuperCars', 'SuperCars@gmail.com', '91987654329'),
('AutoClass', 'AutoClass@gmail.com', '21987654331'),
('Speedy Motors', 'SpeedyMotors@gmail.com', '31987654332'),
('Oficina Motor', 'OficinaMotor@gmail.com', '41987654333');

