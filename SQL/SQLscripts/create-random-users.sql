USE [CRM01]
GO

declare @r int;
declare @randstring nvarchar(10);
declare @first nvarchar(50);
declare @last nvarchar(50);
declare @email nvarchar(50);
declare @phone nvarchar(50);

set @r = 0;

while @r < 200
begin
	set @randstring = cast(cast(rand()*100000 as int) as varchar);
	set @first = 'first' + @randstring;
	set @last = 'last' + @randstring;
	set @email = @first + '@site' + @randstring + '.com';
	set @phone = '41522' + @randstring;
	INSERT INTO [dbo].[Users]
			   ([first],[last],[email],[phone])
		 VALUES (@first,@last,@email,@phone);
	set @r = @r + 1;
end

