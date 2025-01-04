-- Create ProductPrices table
CREATE TABLE ProductPrices (
    ProductID INTEGER NOT NULL,
    ProductName TEXT NOT NULL,
    Price REAL NOT NULL,              -- Real for price
    Discount REAL,                    -- Real for discount
    FinalPrice REAL NOT NULL,         -- Final price after discount
    StockCount INTEGER NOT NULL,      -- Integer for stock count
    SaleAmount REAL,                  -- Real for sale amount
    Rating REAL,                      -- Rating for product (0-10 scale)
    Tax REAL,                          -- Tax applied to product
    SupplierCost REAL                 -- Supplier cost
);

-- Create BankTransactions table
CREATE TABLE BankTransactions (
    TransactionID INTEGER NOT NULL,
    AccountID INTEGER NOT NULL,
    TransactionAmount REAL NOT NULL,       -- Transaction amount (positive or negative)
    TransactionType TEXT NOT NULL,          -- Type of transaction (Deposit, Withdrawal, Refund, etc.)
    DateOfTransaction TEXT NOT NULL,       -- Date in YYYY-MM-DD format
    Balance REAL NOT NULL,                 -- Balance after the transaction
    Fees REAL,                             -- Fees charged (if any)
    Description TEXT,                      -- Description of the transaction
    IsProcessed BOOLEAN NOT NULL           -- Whether the transaction was processed (1 for Yes, 0 for No)
);

-- Insert 10 records into ProductPrices table
INSERT INTO ProductPrices (ProductID, ProductName, Price, Discount, FinalPrice, StockCount, SaleAmount, Rating, Tax, SupplierCost)
VALUES
(1, 'Laptop', 1200.50, 100.00, 1100.50, 50, 50000.00, 8.5, 100.00, 800.00),
(2, 'Smartphone', 799.99, 50.00, 749.99, 100, 75000.00, 9.0, 60.00, 500.00),
(3, 'Headphones', 199.95, 30.00, 169.95, 200, 33990.00, 7.5, 15.00, 100.00),
(4, 'Smartwatch', 299.99, 25.00, 274.99, 150, 41248.50, 8.0, 20.00, 150.00),
(5, 'Tablet', 350.00, 50.00, 300.00, 80, 24000.00, 7.8, 30.00, 180.00),
(6, 'Keyboard', 49.99, 5.00, 44.99, 300, 13497.00, 6.5, 5.00, 20.00),
(7, 'Monitor', 299.00, 40.00, 259.00, 60, 15540.00, 8.2, 25.00, 180.00),
(8, 'Charger', 19.99, 2.00, 17.99, 500, 8995.00, 7.0, 3.00, 10.00),
(9, 'Camera', 899.99, 100.00, 799.99, 30, 23999.70, 9.5, 80.00, 600.00),
(10, 'Speaker', 149.99, 20.00, 129.99, 250, 32497.50, 8.1, 10.00, 70.00);


-- Insert 10 records into BankTransactions table
INSERT INTO BankTransactions (TransactionID, AccountID, TransactionAmount, TransactionType, DateOfTransaction, Balance, Fees, Description, IsProcessed)
VALUES
(1, 1001, 1500.75, 'Deposit', '2024-12-01', 1500.75, 5.00, 'Initial deposit', 1),
(2, 1002, -200.00, 'Withdrawal', '2024-12-02', 1000.00, 2.50, 'ATM withdrawal', 1),
(3, 1003, -350.50, 'Withdrawal', '2024-12-03', 645.00, 3.00, 'Purchase at store', 1),
(4, 1004, 1200.00, 'Deposit', '2024-12-04', 3000.00, 0.00, 'Salary deposit', 1),
(5, 1005, -50.25, 'Withdrawal', '2024-12-05', 950.00, 1.00, 'Fee charge', 0),
(6, 1006, 5000.00, 'Deposit', '2024-12-06', 7500.00, 0.00, 'Loan repayment', 1),
(7, 1007, -750.00, 'Withdrawal', '2024-12-07', 200.00, 4.00, 'Bill payment', 1),
(8, 1008, -100.00, 'Refund', '2024-12-08', 1800.00, 1.50, 'Product return', 1),
(9, 1009, 300.00, 'Deposit', '2024-12-09', 1300.00, 0.00, 'Transfer from friend', 1),
(10, 1010, -25.75, 'Withdrawal', '2024-12-10', 1225.00, 0.50, 'Snack purchase', 0);

-- Drop ProductPrices table
DROP TABLE IF EXISTS ProductPrices;

-- Drop BankTransactions table
DROP TABLE IF EXISTS BankTransactions;