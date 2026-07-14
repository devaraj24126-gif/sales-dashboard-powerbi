drop table retail_sales;

CREATE TABLE retail_sales (
    transaction_id NUMBER GENERATED ALWAYS AS IDENTITY,

    index_no NUMBER NOT NULL,

    order_id VARCHAR2(30) NOT NULL,

    cust_id VARCHAR2(30) NOT NULL,

    gender VARCHAR2(10)
        CHECK (gender IN ('Men','Women')),

    age NUMBER
        CHECK (age BETWEEN 10 AND 100),

    age_group VARCHAR2(20) NOT NULL,

    order_date DATE NOT NULL,

    month_name VARCHAR2(20) NOT NULL,

    status VARCHAR2(30) NOT NULL,

    channel VARCHAR2(30) NOT NULL,

    sku VARCHAR2(50) NOT NULL,

    category VARCHAR2(50) NOT NULL,

    size_name VARCHAR2(20),

    qty NUMBER
        CHECK (qty > 0),

    currency VARCHAR2(10)
        CHECK (currency = 'INR'),

    amount NUMBER(10,2)
        CHECK (amount > 0),

    ship_city VARCHAR2(50) NOT NULL,

    ship_state VARCHAR2(50) NOT NULL,

    ship_postal_code VARCHAR2(20) NOT NULL,

    b2b VARCHAR2(10),

    CONSTRAINT pk_retail_sales
        PRIMARY KEY (transaction_id)
);

select * from retail_sales;

SELECT *
FROM retail_sales
FETCH FIRST 10 ROWS ONLY;


SELECT COUNT(*) AS total_records
FROM retail_sales;
