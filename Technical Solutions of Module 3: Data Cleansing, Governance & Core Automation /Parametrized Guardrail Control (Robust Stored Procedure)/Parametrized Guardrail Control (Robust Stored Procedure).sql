CREATE PROCEDURE P_GetEmployeeDiagnostic
(
    @employee_id INT
)
AS
BEGIN
    SET NOCOUNT ON;

    IF (SELECT COUNT(1) FROM employees WHERE employee_id = @employee_id) = 0
    BEGIN
        RAISERROR('Target Employee ID does not exist in corporate register.', 16, 1);
    END
    ELSE
    BEGIN
        SELECT * FROM employees WHERE employee_id = @employee_id;
    END
END;

---//Procedure Executable Example
Exec P_GetEmployeeDiagnostic 200;--Input Employe ID and Procedure Name