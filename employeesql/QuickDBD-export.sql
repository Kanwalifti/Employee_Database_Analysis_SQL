-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.


SET XACT_ABORT ON

BEGIN TRANSACTION QUICKDBD

CREATE TABLE [employee] (
    [emp_no] INT  NOT NULL ,
    [emp_title] VARCHAR(30)  NOT NULL ,
    [birth_date] DATE  NOT NULL ,
    [firstname] VARCHAR(50)  NOT NULL ,
    [lastname] VARCHAR(50)  NOT NULL ,
    [sex] VARCHAR(2)  NOT NULL ,
    [hire_date] DATE  NOT NULL ,
    CONSTRAINT [PK_employee] PRIMARY KEY CLUSTERED (
        [emp_no] ASC
    )
)

CREATE TABLE [salary] (
    [emp_no] INT  NOT NULL ,
    [salary] INT  NOT NULL 
)

CREATE TABLE [departments] (
    [dept_no] VARCHAR(50)  NOT NULL ,
    [dept_name] VARCHAR(50)  NOT NULL ,
    CONSTRAINT [PK_departments] PRIMARY KEY CLUSTERED (
        [dept_no] ASC
    )
)

CREATE TABLE [dept_emp] (
    [emp_no] VARCHAR(50)  NOT NULL ,
    [dept_no] VARCHAR(50)  NOT NULL 
)

CREATE TABLE [dept_manager] (
    [dept_no] VARCHAR(50)  NOT NULL ,
    [emp_no] VARCHAR(50)  NOT NULL 
)

CREATE TABLE [title] (
    [title_id] VARCHAR(30)  NOT NULL ,
    [title] VARCHAR(50)  NOT NULL ,
    CONSTRAINT [PK_title] PRIMARY KEY CLUSTERED (
        [title_id] ASC
    )
)

ALTER TABLE [employee] WITH CHECK ADD CONSTRAINT [FK_employee_emp_title] FOREIGN KEY([emp_title])
REFERENCES [title] ([title_id])

ALTER TABLE [employee] CHECK CONSTRAINT [FK_employee_emp_title]

ALTER TABLE [salary] WITH CHECK ADD CONSTRAINT [FK_salary_emp_no] FOREIGN KEY([emp_no])
REFERENCES [employee] ([emp_no])

ALTER TABLE [salary] CHECK CONSTRAINT [FK_salary_emp_no]

ALTER TABLE [dept_emp] WITH CHECK ADD CONSTRAINT [FK_dept_emp_emp_no] FOREIGN KEY([emp_no])
REFERENCES [employee] ([emp_no])

ALTER TABLE [dept_emp] CHECK CONSTRAINT [FK_dept_emp_emp_no]

ALTER TABLE [dept_emp] WITH CHECK ADD CONSTRAINT [FK_dept_emp_dept_no] FOREIGN KEY([dept_no])
REFERENCES [departments] ([dept_no])

ALTER TABLE [dept_emp] CHECK CONSTRAINT [FK_dept_emp_dept_no]

ALTER TABLE [dept_manager] WITH CHECK ADD CONSTRAINT [FK_dept_manager_dept_no] FOREIGN KEY([dept_no])
REFERENCES [departments] ([dept_no])

ALTER TABLE [dept_manager] CHECK CONSTRAINT [FK_dept_manager_dept_no]

ALTER TABLE [dept_manager] WITH CHECK ADD CONSTRAINT [FK_dept_manager_emp_no] FOREIGN KEY([emp_no])
REFERENCES [employee] ([emp_no])

ALTER TABLE [dept_manager] CHECK CONSTRAINT [FK_dept_manager_emp_no]

COMMIT TRANSACTION QUICKDBD