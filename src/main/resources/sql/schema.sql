CREATE TABLE CUSTOMERS (
    id SERIAL PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    surname VARCHAR(100) NOT NULL,
    age INT CHECK (age >= 0),
    phone_number VARCHAR(15)
);

CREATE TABLE ORDERS (
    date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    customer_id INT REFERENCES CUSTOMERS(id),
    product_name VARCHAR(100) NOT NULL,
    amount INT
);

INSERT INTO CUSTOMERS (name, surname, age, phone_number) VALUES
('Иван', 'Иванов', 30, '1234567890'),
('Петр', 'Петров', 25, '2345678901'),
('Светлана', 'Сидорова', 42, '3456789012'),
('Мария', 'Кузнецова', 28, '4567890123'),
('Алексей', 'Лебедев', 35, '5678901234'),
('Елена', 'Смирнова', 50, '6789012345'),
('Дмитрий', 'Попов', 22, '7890123456'),
('Анна', 'Васильева', 41, '8901234567'),
('Николай', 'Федоров', 29, '9012345678'),
('Татьяна', 'Морозова', 33, '0123456789');

INSERT INTO ORDERS (date, customer_id, product_name, amount) VALUES
(NOW(), 1, 'Ноутбук', 75000.00),
(NOW(), 2, 'Смартфон', 30000.00),
(NOW(), 3, 'Планшет', 20000.00),
(NOW(), 1, 'Клавиатура', 2500.00),
(NOW(), 4, 'Мышь', 1200.00),
(NOW(), 5, 'Монитор', 15000.00),
(NOW(), 2, 'Наушники', 5000.00),
(NOW(), 6, 'Принтер', 10000.00),
(NOW(), 3, 'Системный блок', 60000.00),
(NOW(), 7, 'Веб-камера', 3000.00);