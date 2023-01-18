Go
alter procedure usp_PositionDetails
(@positionCode char(4),@Description varchar(50),@BudgetedStrength int null,@year smallint null,@CurrentStrength int null)
as
Begin
INSERT INTO [dbo].[Position](
        cPositionCode,vDescription,iBudgetedStrength,siYear,iCurrentStrength)
        VALUES(@positionCode, @Description,@BudgetedStrength,@year,@CurrentStrength)
END

 

Exec usp_PositionDetails '7890','vinay',10000,7890,100

select*from Position

