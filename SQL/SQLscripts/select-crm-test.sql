use [CRMtest]
go

select * from Users, Cars where Users.userid = Cars.userid;