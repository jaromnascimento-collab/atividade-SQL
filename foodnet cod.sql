-- Exclui o banco de dados se ele já existir para um novo começo
DROP DATABASE IF EXISTS FoodNet;

-- Cria o banco de dados FoodNet com codificação de caracteres adequada para português
CREATE DATABASE IF NOT EXISTS FoodNet
  DEFAULT CHARACTER SET utf8mb4
  DEFAULT COLLATE utf8mb4_unicode_ci;

-- Seleciona o banco de dados FoodNet para uso
USE FoodNet;

-- Define o motor de armazenamento padrão como InnoDB, que suporta transações e chaves estrangeiras
SET default_storage_engine=INNODB;

-- Criação da tabela Cliente
CREATE TABLE Cliente (
    idCliente INT AUTO_INCREMENT PRIMARY KEY,
    cpf VARCHAR(14) UNIQUE NOT NULL,
    nome VARCHAR(100) NOT NULL,
    dataNascimento DATE,
    email VARCHAR(100) UNIQUE,
    telefone VARCHAR(20),
    dataCadastro DATE NOT NULL
) ENGINE=InnoDB;

-- Inserção de 50 clientes fictícios
INSERT INTO Cliente (cpf, nome, dataNascimento, email, telefone, dataCadastro) VALUES
('111.111.111-11', 'Ana Silva', '1990-05-15', 'ana.silva@email.com', '(11) 98765-4321', '2023-01-10'),
('222.222.222-22', 'Bruno Costa', '1985-08-20', 'bruno.costa@email.com', '(21) 91234-5678', '2023-01-12'),
('333.333.333-33', 'Carla Dias', '1992-02-25', 'carla.dias@email.com', '(31) 99999-8888', '2023-01-15'),
('444.444.444-44', 'Daniel Martins', '1988-11-30', 'daniel.martins@email.com', '(41) 98888-7777', '2023-02-01'),
('555.555.555-55', 'Eduarda Ferreira', '1995-07-12', 'eduarda.ferreira@email.com', '(51) 97777-6666', '2023-02-05'),
('666.666.666-66', 'Felipe Almeida', '1998-03-18', 'felipe.almeida@email.com', '(61) 96666-5555', '2023-02-10'),
('777.777.777-77', 'Gabriela Lima', '1991-09-05', 'gabriela.lima@email.com', '(71) 95555-4444', '2023-02-20'),
('888.888.888-88', 'Heitor Pereira', '1987-12-22', 'heitor.pereira@email.com', '(81) 94444-3333', '2023-03-01'),
('999.999.999-99', 'Isabela Santos', '1993-06-08', 'isabela.santos@email.com', '(91) 93333-2222', '2023-03-05'),
('101.010.101-01', 'João Oliveira', '1996-04-14', 'joao.oliveira@email.com', '(12) 92222-1111', '2023-03-15'),
('112.233.445-56', 'Larissa Souza', '1994-01-20', 'larissa.souza@email.com', '(22) 91111-0000', '2023-04-02'),
('123.456.789-00', 'Marcos Ribeiro', '1989-10-10', 'marcos.ribeiro@email.com', '(32) 90000-9999', '2023-04-10'),
('234.567.890-11', 'Natália Gomes', '1997-08-03', 'natalia.gomes@email.com', '(42) 98989-8989', '2023-04-18'),
('345.678.901-22', 'Otávio Rocha', '1990-05-28', 'otavio.rocha@email.com', '(52) 97878-7878', '2023-05-01'),
('456.789.012-33', 'Patrícia Barros', '1999-02-15', 'patricia.barros@email.com', '(62) 96767-6767', '2023-05-11'),
('567.890.123-44', 'Quintino Azevedo', '1986-07-21', 'quintino.azevedo@email.com', '(72) 95656-5656', '2023-05-20'),
('678.901.234-55', 'Rafael Correia', '1991-04-09', 'rafael.correia@email.com', '(82) 94545-4545', '2023-06-03'),
('789.012.345-66', 'Sofia Cardoso', '1994-11-11', 'sofia.cardoso@email.com', '(92) 93434-3434', '2023-06-12'),
('890.123.456-77', 'Thiago Mendes', '1984-09-19', 'thiago.mendes@email.com', '(13) 92323-2323', '2023-06-25'),
('901.234.567-88', 'Úrsula Castro', '1996-01-01', 'ursula.castro@email.com', '(23) 91212-1212', '2023-07-01'),
('012.345.678-99', 'Victor Nogueira', '1992-08-17', 'victor.nogueira@email.com', '(33) 90101-0101', '2023-07-10'),
('123.123.123-12', 'Wanda Pires', '1983-03-03', 'wanda.pires@email.com', '(43) 98765-1234', '2023-07-15'),
('234.234.234-23', 'Xavier Pinto', '1995-10-25', 'xavier.pinto@email.com', '(53) 97654-2345', '2023-08-02'),
('345.345.345-34', 'Yasmin Farias', '1998-06-30', 'yasmin.farias@email.com', '(63) 96543-3456', '2023-08-11'),
('456.456.456-45', 'Zeca Neves', '1980-12-12', 'zeca.neves@email.com', '(73) 95432-4567', '2023-08-20'),
('567.567.567-56', 'Alice Barbosa', '1993-07-07', 'alice.barbosa@email.com', '(83) 94321-5678', '2023-09-01'),
('678.678.678-67', 'Bento Cavalcanti', '1997-02-28', 'bento.cavalcanti@email.com', '(93) 93210-6789', '2023-09-05'),
('789.789.789-78', 'Catarina Dantas', '1991-09-14', 'catarina.dantas@email.com', '(14) 92109-7890', '2023-09-12'),
('890.890.890-89', 'Davi Esteves', '1988-04-23', 'davi.esteves@email.com', '(24) 91098-8901', '2023-09-20'),
('901.901.901-90', 'Esther Fernandes', '1994-11-02', 'esther.fernandes@email.com', '(34) 90987-9012', '2023-10-01'),
('012.012.012-01', 'Fábio Guimarães', '1982-01-18', 'fabio.guimaraes@email.com', '(44) 98765-0123', '2023-10-07'),
('123.234.345-45', 'Gael Henriques', '1999-08-21', 'gael.henriques@email.com', '(54) 97654-1234', '2023-10-15'),
('234.345.456-56', 'Helena Isaac', '1990-06-16', 'helena.isaac@email.com', '(64) 96543-2345', '2023-10-22'),
('345.456.567-67', 'Ícaro Jesus', '1987-03-09', 'icaro.jesus@email.com', '(74) 95432-3456', '2023-11-01'),
('456.567.678-78', 'Júlia Klein', '1996-10-13', 'julia.klein@email.com', '(84) 94321-4567', '2023-11-09'),
('567.678.789-89', 'Kevin Lopes', '1992-05-05', 'kevin.lopes@email.com', '(94) 93210-5678', '2023-11-18'),
('678.789.890-90', 'Laura Macedo', '1995-12-24', 'laura.macedo@email.com', '(15) 92109-6789', '2023-11-25'),
('789.890.901-01', 'Miguel Noronha', '1985-02-11', 'miguel.noronha@email.com', '(25) 91098-7890', '2023-12-01'),
('890.901.012-12', 'Nicole Otero', '1998-09-07', 'nicole.otero@email.com', '(35) 90987-8901', '2023-12-08'),
('901.012.123-23', 'Pedro Queiroz', '1993-04-01', 'pedro.queiroz@email.com', '(45) 98765-9012', '2023-12-15'),
('012.123.234-34', 'Raquel Sampaio', '1997-11-27', 'raquel.sampaio@email.com', '(55) 97654-0123', '2023-12-22'),
('123.321.456-65', 'Samuel Telles', '1989-08-08', 'samuel.telles@email.com', '(65) 96543-1234', '2024-01-02'),
('234.432.567-76', 'Talita Uchoa', '1994-03-13', 'talita.uchoa@email.com', '(75) 95432-2345', '2024-01-10'),
('345.543.678-87', 'Uriel Vasconcelos', '1991-10-19', 'uriel.vasconcelos@email.com', '(85) 94321-3456', '2024-01-18'),
('456.654.789-98', 'Valentina Xavier', '1996-06-26', 'valentina.xavier@email.com', '(95) 93210-4567', '2024-01-25'),
('567.765.890-09', 'Wagner Zanetti', '1986-01-31', 'wagner.zanetti@email.com', '(16) 92109-5678', '2024-02-03'),
('678.876.901-10', 'Amanda Brandão', '1999-07-04', 'amanda.brandao@email.com', '(26) 91098-6789', '2024-02-11'),
('789.987.012-21', 'Bernardo Drummond', '1983-05-17', 'bernardo.drummond@email.com', '(36) 90987-7890', '2024-02-19'),
('890.098.123-32', 'Clarice Evangelista', '1992-12-06', 'clarice.evangelista@email.com', '(46) 98765-8901', '2024-02-27');

-- Criação da tabela Entregador
CREATE TABLE Entregador (
    idEntregador INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    cpf VARCHAR(14) NOT NULL UNIQUE,
    telefone VARCHAR(20),
    placaVeiculo VARCHAR(10)
) ENGINE=InnoDB;

-- Inserção de 50 entregadores fictícios
INSERT INTO Entregador (nome, cpf, telefone, placaVeiculo) VALUES
('Carlos Eduardo', '121.212.121-21', '(11) 91111-2222', 'ABC-1234'),
('Fernanda Gonçalves', '232.323.232-32', '(21) 92222-3333', 'DEF-5678'),
('Gustavo Henrique', '343.434.343-43', '(31) 93333-4444', 'GHI-9012'),
('Heloísa Justino', '454.545.454-54', '(41) 94444-5555', 'JKL-3456'),
('Igor Kramer', '565.656.565-65', '(51) 95555-6666', 'MNO-7890'),
('Jéssica Lacerda', '676.767.676-76', '(61) 96666-7777', 'PQR-1234'),
('Leonardo Moreira', '787.878.787-87', '(71) 97777-8888', 'STU-5678'),
('Manuela Nogueira', '898.989.898-98', '(81) 98888-9999', 'VWX-9012'),
('Nicolas Oliveira', '909.090.909-09', '(91) 99999-0000', 'YZA-3456'),
('Olivia Pereira', '010.101.010-10', '(12) 91010-1010', 'BCD-7890'),
('Paulo Quintela', '121.121.121-12', '(22) 92121-2121', 'EFG-1234'),
('Renata Santana', '232.232.232-23', '(32) 93232-3232', 'HIJ-5678'),
('Sérgio Tavares', '343.343.343-34', '(42) 94343-4343', 'KLM-9012'),
('Tatiana Underwood', '454.454.454-45', '(52) 95454-5454', 'NOP-3456'),
('Ulisses Viana', '565.565.565-56', '(62) 96565-6565', 'QRS-7890'),
('Vanessa Werner', '676.676.676-67', '(72) 97676-7676', 'TUV-1234'),
('William Xavier', '787.787.787-78', '(82) 98787-8787', 'WXY-5678'),
('Yasmin Youssef', '898.898.898-89', '(92) 98989-8989', 'ZAB-9012'),
('Ziraldo Andrade', '909.909.909-90', '(13) 90909-0909', 'CDE-3456'),
('Adriano Bastos', '010.010.010-01', '(23) 91010-1010', 'FGH-7890'),
('Beatriz Campos', '111.222.333-44', '(33) 92121-2121', 'IJK-1234'),
('Caio Diniz', '222.333.444-55', '(43) 93232-3232', 'LMN-5678'),
('Diana Escobar', '333.444.555-66', '(53) 94343-4343', 'OPQ-9012'),
('Erick Fagundes', '444.555.666-77', '(63) 95454-5454', 'RST-3456'),
('Flávia Guedes', '555.666.777-88', '(73) 96565-6565', 'UVW-7890'),
('Guilherme Horta', '666.777.888-99', '(83) 97676-7676', 'XYZ-1234'),
('Heloísa Ibanez', '777.888.999-00', '(93) 98787-8787', 'ABC-5678'),
('Ícaro Jasmim', '888.999.000-11', '(14) 98989-8989', 'DEF-9012'),
('Joana Kubitschek', '999.000.111-22', '(24) 90909-0909', 'GHI-3456'),
('Kléber Lins', '000.111.222-33', '(34) 91010-1010', 'JKL-7890'),
('Luana Matos', '111.111.222-22', '(44) 92121-2121', 'MNO-1234'),
('Marcelo Novaes', '222.222.333-33', '(54) 93232-3232', 'PQR-5678'),
('Nair Ourique', '333.333.444-44', '(64) 94343-4343', 'STU-9012'),
('Otávio Paes', '444.444.555-55', '(74) 95454-5454', 'VWX-3456'),
('Paula Quintão', '555.555.666-66', '(84) 96565-6565', 'YZA-7890'),
('Ricardo Ramos', '666.666.777-77', '(94) 97676-7676', 'BCD-1234'),
('Simone Sales', '777.777.888-88', '(15) 98787-8787', 'EFG-5678'),
('Túlio Torres', '888.888.999-99', '(25) 98989-8989', 'HIJ-9012'),
('Ubiratã Varejão', '999.999.000-00', '(35) 90909-0909', 'KLM-3456'),
('Vitória Wagner', '000.000.111-11', '(45) 91010-1010', 'NOP-7890'),
('Washington Xavier', '111.000.222-22', '(55) 92121-2121', 'QRS-1234'),
('Xena Yagami', '222.111.333-33', '(65) 93232-3232', 'TUV-5678'),
('Yuri Zimmerman', '333.222.444-44', '(75) 94343-4343', 'WXY-9012'),
('Zélia Albuquerque', '444.333.555-55', '(85) 95454-5454', 'ZAB-3456'),
('Arthur Benevides', '555.444.666-66', '(95) 96565-6565', 'CDE-7890'),
('Bárbara Cordeiro', '666.555.777-77', '(16) 97676-7676', 'FGH-1234'),
('César Dutra', '777.666.888-88', '(26) 98787-8787', 'IJK-5678'),
('Débora Elias', '888.777.999-99', '(36) 98989-8989', 'LMN-9012'),
('Eduardo Freire', '999.888.000-00', '(46) 90909-0909', 'OPQ-3456');

-- Criação da tabela Cupom
CREATE TABLE Cupom (
    idCupom INT AUTO_INCREMENT PRIMARY KEY,
    codigo VARCHAR(20) NOT NULL UNIQUE,
    valorDesconto DECIMAL(10,2) NOT NULL,
    validade DATE NOT NULL
) ENGINE=InnoDB;

-- Inserção de 50 cupons fictícios
INSERT INTO Cupom (codigo, valorDesconto, validade) VALUES
('PRIMEIRA10', 10.00, '2025-12-31'),
('FDS20', 20.00, '2025-09-01'),
('PIZZA15', 15.00, '2025-10-31'),
('BURGUER5', 5.00, '2025-11-30'),
('SUSHI25', 25.00, '2025-09-15'),
('DOCE10', 10.00, '2025-12-20'),
('ALMOCO7', 7.50, '2025-09-30'),
('JANTA12', 12.00, '2025-10-10'),
('VEGANO18', 18.00, '2025-11-05'),
('ITALIANO22', 22.00, '2025-09-25'),
('MEXICANO10', 10.00, '2025-12-01'),
('ARABE5', 5.00, '2025-10-05'),
('CHINES15', 15.00, '2025-11-15'),
('JAPA20', 20.00, '2025-09-10'),
('BRASIL10', 10.00, '2025-12-07'),
('FRETEGRATIS', 12.50, '2025-09-05'),
('COMBO30', 30.00, '2025-10-20'),
('SOBREMESA8', 8.00, '2025-11-22'),
('BEBIDA5', 5.00, '2025-09-18'),
('NOVOUSER15', 15.00, '2025-12-31'),
('CLIENTEVIP25', 25.00, '2025-10-01'),
('SEGUNDA10', 10.00, '2025-09-02'),
('TERCA10', 10.00, '2025-09-03'),
('QUARTA10', 10.00, '2025-09-04'),
('QUINTA10', 10.00, '2025-09-05'),
('SEXTA15', 15.00, '2025-09-06'),
('SABADO20', 20.00, '2025-09-07'),
('DOMINGO20', 20.00, '2025-09-08'),
('MADRUGA10', 10.00, '2025-09-30'),
('HAPPYHOUR15', 15.00, '2025-10-15'),
('INVERNO10', 10.00, '2025-09-21'),
('VERAO10', 10.00, '2025-12-21'),
('OUTONO10', 10.00, '2026-03-20'),
('PRIMAVERA10', 10.00, '2025-09-22'),
('NATAL25', 25.00, '2025-12-25'),
('PASCOA20', 20.00, '2026-04-05'),
('ANONOVO30', 30.00, '2026-01-01'),
('CARNAVAL15', 15.00, '2026-02-17'),
('DIADASMAES20', 20.00, '2026-05-10'),
('DIADOSPAIS20', 20.00, '2026-08-09'),
('BLACKFRIDAY50', 50.00, '2025-11-28'),
('CYBERMONDAY40', 40.00, '2025-12-01'),
('NAMORADOS25', 25.00, '2026-06-12'),
('CRIANCAS15', 15.00, '2025-10-12'),
('ESTUDANTE10', 10.00, '2025-12-31'),
('PROFESSOR10', 10.00, '2025-10-15'),
('SAUDE5', 5.00, '2025-12-31'),
('GAMER15', 15.00, '2025-11-11'),
('PETFRIENDLY10', 10.00, '2025-10-04'),
('CULTURA10', 10.00, '2025-09-30');

-- Criação da tabela Restaurante
CREATE TABLE Restaurante (
    idRestaurante INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    cnpj VARCHAR(18) NOT NULL UNIQUE,
    endereco VARCHAR(150),
    categoria VARCHAR(50),
    horarioFuncionamento VARCHAR(100),
    notaMedia DECIMAL(3,2) DEFAULT 0
) ENGINE=InnoDB;

-- Inserção de 50 restaurantes fictícios
INSERT INTO Restaurante (nome, cnpj, endereco, categoria, horarioFuncionamento, notaMedia) VALUES
('Cantina da Nona', '11.111.111/0001-11', 'Rua das Pizzas, 123', 'Italiana', '18:00 - 23:00', 4.5),
('Sushi Master', '22.222.222/0001-22', 'Avenida Oriental, 456', 'Japonesa', '19:00 - 00:00', 4.8),
('Burger Queen', '33.333.333/0001-33', 'Praça do Lanche, 789', 'Hamburgueria', '12:00 - 02:00', 4.2),
('Tempero da Vovó', '44.444.444/0001-44', 'Travessa Aconchego, 10', 'Brasileira', '11:00 - 15:00', 4.9),
('La Takeria', '55.555.555/0001-55', 'Calle de los Sabores, 20', 'Mexicana', '17:00 - 23:30', 4.6),
('Sabor Vegano', '66.666.666/0001-66', 'Alameda das Folhas, 30', 'Vegana', '11:30 - 22:00', 4.7),
('Padaria Pão Quente', '77.777.777/0001-77', 'Rua do Trigo, 40', 'Padaria', '06:00 - 21:00', 4.4),
('Açaí Power', '88.888.888/0001-88', 'Avenida das Frutas, 50', 'Açaí', '10:00 - 22:00', 4.8),
('China in Box Express', '99.999.999/0001-99', 'Rua da Muralha, 60', 'Chinesa', '11:00 - 23:00', 4.1),
('Kebab do Califa', '10.101.010/0001-10', 'Praça do Deserto, 70', 'Árabe', '16:00 - 01:00', 4.5),
('Mar de Sabores', '12.345.678/0001-90', 'Avenida Beira Mar, 100', 'Frutos do Mar', '12:00 - 23:00', 4.9),
('Steak House Prime', '23.456.789/0001-01', 'Rua da Grelha, 200', 'Churrascaria', '18:00 - 00:00', 4.7),
('Sorveteria Gelato', '34.567.890/0001-12', 'Praça Doce, 300', 'Sorveteria', '13:00 - 22:00', 4.8),
('Café com Letras', '45.678.901/0001-23', 'Travessa dos Livros, 400', 'Cafeteria', '08:00 - 20:00', 4.6),
('Crepe Francês', '56.789.012/0001-34', 'Rua de Paris, 500', 'Creperia', '15:00 - 23:00', 4.5),
('Galeto na Brasa', '67.890.123/0001-45', 'Avenida do Fogo, 600', 'Grelhados', '11:00 - 16:00', 4.3),
('Empório das Massas', '78.901.234/0001-56', 'Rua do Macarrão, 700', 'Italiana', '12:00 - 22:00', 4.7),
('Bar do Alemão', '89.012.345/0001-67', 'Rua da Cerveja, 800', 'Alemã', '17:00 - 01:00', 4.4),
('Toca do Pastel', '90.123.456/0001-78', 'Feira Livre, Box 10', 'Pastelaria', '09:00 - 18:00', 4.9),
('Reino da Coxinha', '01.234.567/0001-89', 'Largo do Salgado, 20', 'Salgados', '07:00 - 19:00', 4.8),
('Tapiocaria da Sé', '11.223.344/0001-55', 'Praça da Matriz, 30', 'Tapiocaria', '08:00 - 20:00', 4.6),
('Pizzaria Forno a Lenha', '22.334.455/0001-66', 'Rua da Lenha, 40', 'Pizzaria', '18:30 - 23:30', 4.9),
('Dogão do Zé', '33.445.566/0001-77', 'Esquina da Fome, 50', 'Lanches', '19:00 - 03:00', 4.2),
('Cozinha Indiana', '44.556.677/0001-88', 'Rua das Especiarias, 60', 'Indiana', '18:00 - 23:00', 4.7),
('Mundo do Chocolate', '55.667.788/0001-99', 'Avenida Cacau, 70', 'Doceria', '10:00 - 21:00', 4.9),
('Boteco da Esquina', '66.778.899/0001-00', 'Rua da Boemia, 80', 'Bar', '16:00 - 02:00', 4.3),
('Salad Bowl', '77.889.900/0001-11', 'Alameda Fitness, 90', 'Saudável', '11:00 - 21:00', 4.8),
('Espetinho do Manel', '88.990.011/0001-22', 'Rua do Churrasco, 110', 'Espetaria', '17:00 - 00:00', 4.5),
('Delícias de Portugal', '99.001.122/0001-33', 'Travessa do Fado, 120', 'Portuguesa', '12:00 - 22:00', 4.7),
('Sopa & Cia', '10.112.233/0001-44', 'Rua do Inverno, 130', 'Sopas', '18:00 - 23:00', 4.6),
('Point do Peixe', '21.223.344/0001-55', 'Mercado Público, Box 5', 'Peixaria', '10:00 - 17:00', 4.8),
('Cuscuzeria Sertaneja', '32.334.455/0001-66', 'Rua do Sertão, 140', 'Regional', '07:00 - 14:00', 4.9),
('O Rei do Mate', '43.445.566/0001-77', 'Praça Verde, 150', 'Casa de Chá', '09:00 - 19:00', 4.4),
('Fábrica de Waffles', '54.556.677/0001-88', 'Avenida Doce, 160', 'Waffles', '14:00 - 22:00', 4.7),
('Vila do Vinho', '65.667.788/0001-99', 'Rua da Uva, 170', 'Adega', '17:00 - 00:00', 4.8),
('Ceviche Peruano', '76.778.899/0001-00', 'Avenida dos Andes, 180', 'Peruana', '19:00 - 23:00', 4.9),
('Frango Frito Crocante', '87.889.900/0001-11', 'Rua do Balde, 190', 'Fast Food', '12:00 - 00:00', 4.1),
('Bistrô Parisiense', '98.990.011/0001-22', 'Alameda dos Artistas, 210', 'Francesa', '19:30 - 00:00', 4.9),
('Cantinho Tailandês', '19.101.112/0001-33', 'Rua de Bangkok, 220', 'Tailandesa', '18:00 - 23:00', 4.6),
('Bar de Tapas', '28.212.223/0001-44', 'Plaza de España, 230', 'Espanhola', '17:00 - 01:00', 4.7),
('Casa da Feijoada', '37.323.334/0001-55', 'Rua do Feijão, 240', 'Brasileira', '11:30 - 16:00 (Sáb e Dom)', 4.9),
('Gyros Grego', '46.434.445/0001-66', 'Avenida Atenas, 250', 'Grega', '12:00 - 22:00', 4.5),
('Poke Havaiano', '55.545.556/0001-77', 'Praia do Sol, 260', 'Havaiana', '11:00 - 21:00', 4.8),
('Fondue na Montanha', '64.656.667/0001-88', 'Estrada da Neblina, km 5', 'Fondue', '19:00 - 00:00', 4.9),
('Pub Irlandês', '73.767.778/0001-99', 'Rua do Trevo, 270', 'Pub', '18:00 - 03:00', 4.4),
('Culinária Afetiva', '82.878.889/0001-00', 'Viela da Saudade, 280', 'Contemporânea', '19:00 - 23:00', 4.8),
('Empanadas Argentinas', '91.989.990/0001-11', 'Rua de Buenos Aires, 290', 'Argentina', '12:00 - 22:00', 4.7),
('Focacceria Italiana', '10.292.101/0001-22', 'Largo de Roma, 310', 'Italiana', '10:00 - 20:00', 4.6),
('Ramen House', '29.383.212/0001-33', 'Travessa de Tóquio, 320', 'Japonesa', '12:00 - 15:00, 18:00 - 22:00', 4.9),
('Quitutes da Fazenda', '38.474.323/0001-44', 'Estrada de Terra, S/N', 'Mineira', '09:00 - 17:00', 4.8);

-- Criação da tabela Produto
CREATE TABLE Produto (
    idProduto INT AUTO_INCREMENT PRIMARY KEY,
    idRestaurante INT NOT NULL,
    nome VARCHAR(100) NOT NULL,
    descricao TEXT,
    categoria VARCHAR(50),
    preco DECIMAL(10,2) NOT NULL,
    disponibilidade BOOLEAN DEFAULT TRUE,
    CONSTRAINT fk_produto_restaurante FOREIGN KEY (idRestaurante)
        REFERENCES Restaurante(idRestaurante)
        ON UPDATE CASCADE ON DELETE RESTRICT
) ENGINE=InnoDB;

INSERT INTO Produto (idRestaurante, nome, descricao, categoria, preco, disponibilidade) VALUES
-- Cantina da Nona (Italiana, id=1)
(1, 'Pizza Margherita', 'Molho de tomate, mussarela e manjericão fresco.', 'Pizza', 45.00, TRUE),
(1, 'Spaghetti Carbonara', 'Massa com ovos, queijo pecorino, pancetta e pimenta preta.', 'Massa', 55.00, TRUE),
(1, 'Lasanha Bolonhesa', 'Massa em camadas com molho bolonhesa, molho branco e queijo.', 'Massa', 52.00, TRUE),
-- Sushi Master (Japonesa, id=2)
(2, 'Combinado Salmão (20 peças)', '10 sashimis e 10 sushis variados de salmão.', 'Combinado', 89.90, TRUE),
(2, 'Hot Roll Philadelphia', 'Sushi empanado e frito com salmão e cream cheese.', 'Sushi', 25.00, TRUE),
(2, 'Yakisoba de Frango', 'Macarrão frito com legumes e frango.', 'Prato Quente', 38.50, TRUE),
-- Burger Queen (Hamburgueria, id=3)
(3, 'Classic Cheeseburger', 'Pão, carne 180g, queijo cheddar e molho especial.', 'Hambúrguer', 32.00, TRUE),
(3, 'Bacon Double Burger', 'Pão, duas carnes de 150g, queijo, bacon e barbecue.', 'Hambúrguer', 42.50, TRUE),
(3, 'Batata Frita Grande', 'Porção de 300g de batata frita crocante.', 'Acompanhamento', 15.00, TRUE),
-- Tempero da Vovó (Brasileira, id=4)
(4, 'Feijoada Completa', 'Acompanha arroz, couve, farofa e laranja.', 'Prato Típico', 65.00, TRUE),
(4, 'Moqueca de Peixe', 'Deliciosa moqueca com peixe branco, pimentões e leite de coco.', 'Frutos do Mar', 75.00, TRUE),
-- La Takeria (Mexicana, id=5)
(5, 'Trio de Tacos (Carne)', '3 tacos de milho com carne moída, queijo e salsa.', 'Taco', 28.00, TRUE),
(5, 'Burrito de Frango', 'Grande tortilha de trigo recheada com frango, arroz e feijão.', 'Burrito', 33.00, TRUE),
-- Sabor Vegano (Vegana, id=6)
(6, 'Moqueca de Palmito', 'Moqueca vegana com palmito, pimentões e leite de coco.', 'Prato Principal', 48.00, TRUE),
(6, 'Burger de Grão de Bico', 'Hambúrguer de grão de bico com maionese vegana.', 'Hambúrguer', 35.00, TRUE),
-- Padaria Pão Quente (Padaria, id=7)
(7, 'Pão na Chapa com Requeijão', 'Pão francês na chapa com requeijão cremoso.', 'Café da Manhã', 8.00, TRUE),
(7, 'Coxinha de Frango', 'Salgado frito com recheio cremoso de frango.', 'Salgado', 7.50, TRUE),
-- Açaí Power (Açaí, id=8)
(8, 'Açaí Tradicional 500ml', 'Açaí com banana, granola e mel.', 'Açaí', 22.00, TRUE),
(8, 'Açaí com Morango e Leite em Pó', 'Açaí com morangos frescos e leite em pó.', 'Açaí', 26.00, TRUE);



-- Criação da tabela Pedido
CREATE TABLE Pedido (
    idPedido INT AUTO_INCREMENT PRIMARY KEY,
    idCliente INT NOT NULL,
    idRestaurante INT NOT NULL,
    idEntregador INT NOT NULL,
    idCupom INT NULL,
    dataPedido DATE NOT NULL,
    horaPedido TIME NOT NULL,
    formaPagamento VARCHAR(50),
    status ENUM('em preparação','a caminho','entregue','cancelado') NOT NULL,
    CONSTRAINT fk_pedido_cliente FOREIGN KEY (idCliente)
        REFERENCES Cliente(idCliente)
        ON UPDATE CASCADE ON DELETE RESTRICT,
    CONSTRAINT fk_pedido_restaurante FOREIGN KEY (idRestaurante)
        REFERENCES Restaurante(idRestaurante)
        ON UPDATE CASCADE ON DELETE RESTRICT,
    CONSTRAINT fk_pedido_entregador FOREIGN KEY (idEntregador)
        REFERENCES Entregador(idEntregador)
        ON UPDATE CASCADE ON DELETE RESTRICT,
    CONSTRAINT fk_pedido_cupom FOREIGN KEY (idCupom)
        REFERENCES Cupom(idCupom)
        ON UPDATE CASCADE ON DELETE SET NULL
) ENGINE=InnoDB;

INSERT INTO Pedido (idCliente, idRestaurante, idEntregador, idCupom, dataPedido, horaPedido, formaPagamento, status) VALUES
(1, 1, 1, 1, '2025-08-10', '19:30:00', 'Cartão de Crédito', 'entregue'),
(2, 3, 2, NULL, '2025-08-11', '20:15:00', 'PIX', 'entregue'),
(3, 2, 3, 5, '2025-08-12', '21:00:00', 'Cartão de Débito', 'entregue'),
(4, 4, 4, NULL, '2025-08-15', '12:30:00', 'Vale Refeição', 'entregue'),
(5, 5, 5, 11, '2025-08-18', '19:45:00', 'PIX', 'cancelado'),
(6, 8, 6, NULL, '2025-08-20', '15:00:00', 'Cartão de Crédito', 'entregue'),
(7, 1, 7, NULL, '2025-08-22', '20:00:00', 'PIX', 'entregue'),
(8, 6, 8, 9, '2025-08-25', '13:00:00', 'Vale Refeição', 'entregue'),
(10, 3, 10, 4, '2025-08-26', '22:10:00', 'Cartão de Crédito', 'a caminho'),
(15, 7, 12, NULL, '2025-08-27', '09:00:00', 'PIX', 'em preparação'),
(20, 2, 15, NULL, '2025-08-27', '19:00:00', 'Cartão de Crédito', 'entregue'),
(1, 3, 1, NULL, '2025-08-27', '20:30:00', 'PIX', 'em preparação');


-- Criação da tabela EnderecoCliente
CREATE TABLE EnderecoCliente (
    idEndereco INT AUTO_INCREMENT PRIMARY KEY,
    idCliente INT NOT NULL,
    logradouro VARCHAR(150),
    numero VARCHAR(10),
    bairro VARCHAR(50),
    cidade VARCHAR(50),
    tipo VARCHAR(20), 
    CONSTRAINT fk_endereco_cliente FOREIGN KEY (idCliente)
        REFERENCES Cliente(idCliente)
        ON UPDATE CASCADE ON DELETE CASCADE
) ENGINE=InnoDB;
INSERT INTO EnderecoCliente (idCliente, logradouro, numero, bairro, cidade, tipo) VALUES
(1, 'Rua das Flores', '101', 'Centro', 'São Paulo', 'Casa'),
(2, 'Avenida Principal', '202', 'Copacabana', 'Rio de Janeiro', 'Apartamento'),
(3, 'Praça da Liberdade', '303', 'Savassi', 'Belo Horizonte', 'Casa'),
(4, 'Rua 24 Horas', '404', 'Batel', 'Curitiba', 'Apartamento'),
(5, 'Avenida Borges de Medeiros', '505', 'Centro Histórico', 'Porto Alegre', 'Comercial'),
(6, 'Eixo Monumental', '606', 'Asa Sul', 'Brasília', 'Apartamento'),
(7, 'Avenida Sete de Setembro', '707', 'Barra', 'Salvador', 'Casa'),
(8, 'Rua da Moeda', '808', 'Recife Antigo', 'Recife', 'Apartamento'),
(9, 'Avenida Nazaré', '909', 'Nazaré', 'Belém', 'Casa'),
(10, 'Rua das Laranjeiras', '110', 'Laranjeiras', 'Rio de Janeiro', 'Apartamento'),
(11, 'Rua Augusta', '111', 'Consolação', 'São Paulo', 'Apartamento'),
(12, 'Avenida Afonso Pena', '112', 'Centro', 'Belo Horizonte', 'Comercial'),
(13, 'Rua XV de Novembro', '113', 'Centro', 'Curitiba', 'Apartamento'),
(14, 'Avenida Ipiranga', '114', 'Praia de Belas', 'Porto Alegre', 'Casa'),
(15, 'Quadra 305 Sul', '115', 'Plano Diretor Sul', 'Palmas', 'Apartamento'),
(16, 'Rua do Giz', '116', 'Praia Grande', 'São Luís', 'Casa'),
(17, 'Avenida Atlântica', '117', 'Copacabana', 'Rio de Janeiro', 'Apartamento'),
(18, 'Rua da Bahia', '118', 'Lourdes', 'Belo Horizonte', 'Casa'),
(19, 'Avenida Paulista', '119', 'Bela Vista', 'São Paulo', 'Comercial'),
(20, 'Rua da Praia', '120', 'Centro', 'Porto Alegre', 'Apartamento'),
(21, 'Rua das Palmeiras', '210', 'Jardins', 'São Paulo', 'Casa'),
(22, 'Avenida Boa Viagem', '220', 'Boa Viagem', 'Recife', 'Apartamento'),
(23, 'Rua dos Pinheiros', '230', 'Pinheiros', 'São Paulo', 'Apartamento'),
(24, 'Alameda dos Anjos', '240', 'Asa Norte', 'Brasília', 'Casa'),
(25, 'Travessa dos Artistas', '250', 'Umarizal', 'Belém', 'Apartamento'),
(26, 'Rua do Imperador', '260', 'Centro', 'Petrópolis', 'Casa'),
(27, 'Avenida Rio Branco', '270', 'Centro', 'Rio de Janeiro', 'Comercial'),
(28, 'Rua das Gaivotas', '280', 'Ingleses', 'Florianópolis', 'Apartamento'),
(29, 'Praça do Rádio Amador', '290', 'Ponta Verde', 'Maceió', 'Casa'),
(30, 'Rua do Ouro', '300', 'Serra', 'Belo Horizonte', 'Apartamento');


-- Criação da tabela Avaliacao
CREATE TABLE Avaliacao (
    idAvaliacao INT AUTO_INCREMENT PRIMARY KEY,
    idPedido INT NOT NULL,
    idCliente INT NOT NULL,
    idRestaurante INT NULL,
    idEntregador INT NULL,
    nota TINYINT NOT NULL,
    comentario TEXT,
    dataAvaliacao DATETIME DEFAULT CURRENT_TIMESTAMP,
    CONSTRAINT fk_avaliacao_pedido FOREIGN KEY (idPedido)
        REFERENCES Pedido(idPedido)
        ON DELETE CASCADE,
    CONSTRAINT fk_avaliacao_cliente FOREIGN KEY (idCliente)
        REFERENCES Cliente(idCliente)
        ON DELETE CASCADE,
    CONSTRAINT fk_avaliacao_restaurante FOREIGN KEY (idRestaurante)
        REFERENCES Restaurante(idRestaurante)
        ON DELETE CASCADE,
    CONSTRAINT fk_avaliacao_entregador FOREIGN KEY (idEntregador)
        REFERENCES Entregador(idEntregador)
        ON DELETE CASCADE
);
INSERT INTO Avaliacao (idPedido, idCliente, idRestaurante, idEntregador, nota, comentario, dataAvaliacao) VALUES
(1, 1, 1, 1, 5, 'Pizza deliciosa, chegou quentinha!', '2025-08-10 20:10:00'),
(2, 2, 3, 2, 4, 'Hambúrguer muito bom, mas a batata podia ser mais crocante.', '2025-08-11 21:00:00'),
(3, 3, 2, 3, 5, 'Sushi fresco e entrega super rápida. Recomendo!', '2025-08-12 21:45:00'),
(4, 4, 4, 4, 5, 'A melhor feijoada da cidade, sem dúvidas!', '2025-08-15 13:15:00'),
(6, 6, 8, 6, 5, 'Açaí perfeito!', '2025-08-20 15:35:00'),
(7, 7, 1, 7, 4, 'Massa no ponto certo. Apenas demorou um pouco a entrega.', '2025-08-22 20:55:00'),
(8, 8, 6, 8, 5, 'Comida vegana de alta qualidade. Adorei a moqueca.', '2025-08-25 13:40:00'),
(11, 20, 2, 15, 3, 'O pedido veio trocado, mas o restaurante resolveu.', '2025-08-27 19:50:00');


-- Criação da tabela de associação PedidoProduto
CREATE TABLE PedidoProduto (
    idPedido INT NOT NULL,
    idProduto INT NOT NULL,
    quantidade INT NOT NULL,
    preco DECIMAL(10,2) NOT NULL,
    PRIMARY KEY(idPedido, idProduto),
    CONSTRAINT fk_pedidoproduto_pedido FOREIGN KEY (idPedido)
        REFERENCES Pedido(idPedido)
        ON UPDATE CASCADE ON DELETE CASCADE,
    CONSTRAINT fk_pedidoproduto_produto FOREIGN KEY (idProduto)
        REFERENCES Produto(idProduto)
        ON UPDATE CASCADE ON DELETE RESTRICT
) ENGINE=InnoDB;
INSERT INTO PedidoProduto (idPedido, idProduto, quantidade, preco) VALUES
-- Pedido 1 (Cliente 1, Restaurante 1)
(1, 1, 1, 45.00), -- Pizza Margherita
(1, 3, 1, 52.00), -- Lasanha Bolonhesa
-- Pedido 2 (Cliente 2, Restaurante 3)
(2, 7, 2, 32.00), -- Classic Cheeseburger (2 unidades)
(2, 9, 1, 15.00), -- Batata Frita Grande
-- Pedido 3 (Cliente 3, Restaurante 2)
(3, 4, 1, 89.90), -- Combinado Salmão
-- Pedido 4 (Cliente 4, Restaurante 4)
(4, 10, 1, 65.00), -- Feijoada Completa
-- Pedido 6 (Cliente 6, Restaurante 8)
(6, 19, 1, 26.00), -- Açaí com Morango e Leite em Pó
-- Pedido 7 (Cliente 7, Restaurante 1)
(7, 2, 1, 55.00), -- Spaghetti Carbonara
-- Pedido 8 (Cliente 8, Restaurante 6)
(8, 15, 1, 48.00), -- Moqueca de Palmito
(8, 16, 1, 35.00), -- Burger de Grão de Bico
-- Pedido 11 (Cliente 20, Restaurante 2)
(11, 5, 2, 25.00), -- Hot Roll Philadelphia (2 unidades)
(11, 6, 1, 38.50); -- Yakisoba de Frango

-- Seleciona todos os dados de cada tabela para verificação
SELECT * FROM cliente;
SELECT * FROM entregador;
SELECT * FROM cupom;
SELECT * FROM restaurante;
SELECT * FROM produto;
SELECT * FROM pedido;
SELECT * FROM enderecocliente;
SELECT * FROM avaliacao;
SELECT * FROM pedidoproduto;
 
