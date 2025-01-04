-- Create the table with various types of columns
CREATE TABLE TransactionHistory (
    TransactionID INTEGER NOT NULL,         -- Integer for unique transaction IDs
    UserName TEXT NOT NULL,                 -- Text for usernames
    TransactionDate DATE NOT NULL,          -- Date for transaction date
    Amount REAL NOT NULL,                   -- Real for monetary values (decimals)
    PaymentMethod TEXT NOT NULL,            -- Text for payment method
    TransactionType INTEGER NOT NULL,       -- Integer for transaction type (e.g., 1 for 'Purchase', 2 for 'Refund')
    Status INTEGER NOT NULL,                -- Integer for status (0 for 'Pending', 1 for 'Completed', 2 for 'Failed')
    Remarks TEXT                            -- Text for optional remarks (NULL allowed)
);

-- Insert 20 diverse records with numeric, date, and special values
INSERT INTO TransactionHistory (TransactionID, UserName, TransactionDate, Amount, PaymentMethod, TransactionType, Status, Remarks)
VALUES
(1, 'John_Doe123', '2024-12-03', 100.5, 'Credit Card', 1, 1, 'First purchase'),
(2, 'Alice_Wood', '2024-12-02', 250.0, 'PayPal', 1, 0, 'Payment pending'),
(3, 'Bob_456', '2024-12-01', 500.75, 'Bank Transfer', 2, 1, 'Refund processed'),
(4, 'Charlie_X', '2024-11-30', 99.99, 'Cash', 1, 2, 'Payment failed'),
(5, 'Diana_K', '2024-11-29', 750.20, 'Credit Card', 1, 1, NULL),
(6, 'Eva_Smith', '2024-11-28', 0.99, 'Debit Card', 1, 1, 'Purchase of a pen'),
(7, 'Frank_Jones', '2024-11-27', 2300.00, 'PayPal', 1, 0, 'Pending verification'),
(8, 'Grace_Taylor', '2024-11-26', 125.40, 'Cash', 2, 1, 'Refund completed'),
(9, 'Henry_Williams', '2024-11-25', 500.0, 'Credit Card', 1, 2, 'Transaction cancelled'),
(10, 'Isla_Davis', '2024-11-24', 800.65, 'Bank Transfer', 1, 1, 'Order completed'),
(11, 'Jake_L', '2024-11-23', 12.30, 'PayPal', 1, 1, 'Purchase of goods'),
(12, 'Kevin_F', '2024-11-22', 600.55, 'Cash', 1, 0, 'Transaction pending'),
(13, 'Liam_Johnson', '2024-11-21', 300.00, 'Credit Card', 2, 1, 'Refund issued'),
(14, 'Maya_R', '2024-11-20', 399.99, 'Debit Card', 1, 2, 'Failed payment'),
(15, 'Nina_O', '2024-11-19', 125.75, 'PayPal', 2, 1, NULL),
(16, 'Oliver_P', '2024-11-18', 1000.00, 'Cash', 1, 1, 'Payment accepted'),
(17, 'Paul_Q', '2024-11-17', 5.00, 'Debit Card', 2, 0, 'Refund requested'),
(18, 'Quinn_S', '2024-11-16', 200.20, 'Credit Card', 1, 1, 'Processed payment'),
(19, 'Rita_V', '2024-11-15', 145.00, 'PayPal', 1, 1, 'Completed transaction'),
(20, 'Sam_Wilson', '2024-11-14', 950.0, 'Bank Transfer', 2, 1, 'Refund approved');


DELETE FROM TransactionHistory;
