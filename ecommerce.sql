CREATE SCHEMA ecommerce_db;

CREATE TABLE ecommerce_db.users (
    user_id        SERIAL PRIMARY KEY,
    full_name      VARCHAR(100) NOT NULL,
    email          VARCHAR(100) UNIQUE NOT NULL,
    created_at     TIMESTAMP DEFAULT NOW(),
    status         VARCHAR(20) DEFAULT 'active'
                   CHECK (status IN ('active', 'inactive', 'blocked'))
);

CREATE TABLE ecommerce_db.products (
    product_id     SERIAL PRIMARY KEY,
    name           VARCHAR(100) NOT NULL,
    category       VARCHAR(50) NOT NULL,
    price          DECIMAL(10,2) CHECK (price >= 0),
    stock_quantity INT CHECK (stock_quantity >= 0)
);

CREATE TABLE ecommerce_db.orders (
    order_id       SERIAL PRIMARY KEY,
    user_id        INT NOT NULL REFERENCES ecommerce_db.users(user_id),
    order_date     TIMESTAMP DEFAULT NOW(),
    status         VARCHAR(20) DEFAULT 'pending'
                   CHECK (status IN ('pending', 'shipped', 'delivered', 'cancelled'))
);

CREATE TABLE ecommerce_db.order_items (
    item_id        SERIAL PRIMARY KEY,
    order_id       INT NOT NULL REFERENCES ecommerce_db.orders(order_id) ON DELETE CASCADE,
    product_id     INT NOT NULL REFERENCES ecommerce_db.products(product_id),
    quantity       INT NOT NULL CHECK (quantity > 0),
    price_at_order DECIMAL(10,2) NOT NULL CHECK (price_at_order >= 0)
);

CREATE TABLE ecommerce_db.payments (
    payment_id     SERIAL PRIMARY KEY,
    order_id       INT NOT NULL REFERENCES ecommerce_db.orders(order_id),
    amount         DECIMAL(10,2) NOT NULL CHECK (amount >= 0),
    payment_method VARCHAR(20) NOT NULL,
    payment_date   TIMESTAMP DEFAULT NOW(),
    status         VARCHAR(20) DEFAULT 'success'
                   CHECK (status IN ('success', 'failed', 'refunded'))
);


INSERT INTO ecommerce_db.users (full_name, email)
VALUES
('Kapil Jain', 'kapil@example.com'),
('Rahul Sharma', 'rahul@example.com'),
('Aditi Singh', 'aditi@example.com');

INSERT INTO ecommerce_db.products (name, category, price, stock_quantity)
VALUES
('Laptop', 'Electronics', 85000, 10),
('Mouse', 'Electronics', 700, 200),
('Keyboard', 'Electronics', 1500, 100),
('T-shirt', 'Fashion', 800, 500);

INSERT INTO ecommerce_db.orders (user_id, status)
VALUES
(1, 'pending'),
(2, 'shipped'),
(1, 'delivered');

INSERT INTO ecommerce_db.order_items (order_id, product_id, quantity, price_at_order)
VALUES
(1, 1, 1, 85000),
(1, 2, 2, 700),
(2, 4, 3, 800),
(3, 1, 1, 85000);

INSERT INTO ecommerce_db.payments (order_id, amount, payment_method, status)
VALUES
(1, 86400, 'credit_card', 'success'),
(2, 2400, 'upi', 'success'),
(3, 85000, 'credit_card', 'failed');
