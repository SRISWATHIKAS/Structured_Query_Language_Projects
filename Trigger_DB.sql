/*
🏦 Banking Example — One Procedure + One Function

We will use only the Accounts table initially.

1. Create Accounts Table
*/

CREATE DATABASE Banking_DB;

USE Banking_DB;

CREATE TABLE Accounts (
    Account_ID INT PRIMARY KEY,
    Customer_Name VARCHAR(100),
    Account_Type VARCHAR(20),
    Balance DECIMAL(12,2),
    Account_Status VARCHAR(20)
);

/* Sample Data*/

INSERT INTO Accounts
VALUES
(1001, 'Arun Kumar', 'Savings', 25000.00, 'ACTIVE'),
(1002, 'Priya Devi', 'Savings', 40000.00, 'ACTIVE'),
(1003, 'Ravi Kumar', 'Current', 75000.00, 'ACTIVE'),
(1004, 'Meena Raj', 'Savings', 15000.00, 'ACTIVE'),
(1005, 'Karthik S', 'Savings', 5000.00, 'ACTIVE');

/*
2. One Procedure — Deposit Money
Business Requirement

Create a procedure that accepts an Account ID and Deposit Amount and increases the account balance.
*/

DELIMITER //

CREATE PROCEDURE deposit_money(
    IN p_account_id INT,
    IN p_amount DECIMAL(12,2)
)
BEGIN

    UPDATE Accounts
    SET Balance = Balance + p_amount
    WHERE Account_ID = p_account_id;

END //

DELIMITER ;

/*
Execute the Procedure

Suppose Arun has:

Account ID = 1001
Balance    = ₹25,000

Deposit ₹5,000:
*/

CALL deposit_money(1001, 5000);

/*
Now:

Old Balance = ₹25,000
Deposit     = ₹ 5,000
----------------------
New Balance = ₹30,000

Check:
*/

SELECT *
FROM Accounts
WHERE Account_ID = 1001;

/*
3. Explain the Procedure Logic

This is the key point for beginners:

CALL deposit_money(1001, 5000)
              │       │
              │       └── Deposit Amount
              └────────── Account ID
                       ↓
                  UPDATE Accounts
                       ↓
              Balance + Amount

So students understand:

Procedure performs an action.

Here, the action is:

"Deposit money."

4. One Function — Get Account Balance

Now introduce one function.

Business Requirement

Create a function that accepts an Account ID and returns the current balance.
*/

DELIMITER //

CREATE FUNCTION get_balance(
    p_account_id INT
)
RETURNS DECIMAL(12,2)
DETERMINISTIC
READS SQL DATA
BEGIN

    DECLARE v_balance DECIMAL(12,2);

    SELECT Balance
    INTO v_balance
    FROM Accounts
    WHERE Account_ID = p_account_id;

    RETURN v_balance;

END //

DELIMITER ;

/*
5. Execute the Function
*/

SELECT get_balance(1001);

/*
Result:

+------------------+
| get_balance(1001)|
+------------------+
|         30000.00 |
+------------------+

We can also use it with a table:
*/

SELECT
    Account_ID,
    Customer_Name,
    get_balance(Account_ID) AS Current_Balance
FROM Accounts;

/*
6. Explain the Function Logic

Students should understand:

SELECT get_balance(1001)
          │
          └── Account ID
                ↓
        Search Accounts
                ↓
        Get Balance
                ↓
           RETURN
                ↓
          ₹30,000

The key difference:

Function returns a value.

Here, the function returns:

Account Balance

⭐ Procedure vs Function

This simple banking example makes the difference very clear.

Procedure						Function
deposit_money()					get_balance()
Performs an action				Returns a value
Changes account balance			Retrieves balance
Called using CALL				Used inside SELECT
CALL deposit_money(1001,5000)	SELECT get_balance(1001)

Easy memory trick

Procedure → DO something
Function → GIVE me something

🎯 One Excellent Classroom Exercise

After demonstrating these two, ask students:

Question 1

If Account 1002 has ₹40,000 and we deposit ₹10,000:

CALL deposit_money(1002, 10000);

What will the new balance be?

Question 2

How do you retrieve the balance?

SELECT get_balance(1002);
Question 3

Can we use the function in a larger query?
*/
SELECT
    Account_ID,
    Customer_Name,
    get_balance(Account_ID) AS Balance
FROM Accounts;
/*
This gives beginners a very comfortable progression:

Table → Procedure → Function → CALL → SELECT → Understanding the logic

⭐ Then, in the next stage

Once students are comfortable with these two, we can introduce only one more procedure: transfer_money().

That will allow you to teach the much more interesting concepts of:

Procedure → START TRANSACTION → UPDATE → COMMIT → ROLLBACK → Exception Handling

without overwhelming beginners.