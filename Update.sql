--select DATEDIFF(DAY,CheckIn , CheckOut) as diff from Reservation

--update Reservation set GuestCount = 3, Number = 10202 where id = 2

UPDATE res 
   SET res.TotalPrice = DATEDIFF(DAY,CheckIn , CheckOut) * room.Price
   from Reservation res join Room room on res.RoomNumber = room.id
   --where res.RoomNumber=14
GO

select * from Reservation res join Room room on res.RoomNumber = room.id



