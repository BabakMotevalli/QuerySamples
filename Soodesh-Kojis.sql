select 
room.Number as room, sum(reservation.TotalPrice) as SumOfPrice , count(*) as ItemCount
from
Reservation reservation 
join Room room on reservation.RoomId = room.Id
group by room.Number
order by sum(reservation.TotalPrice) desc

select * from (select 
room.Number as room, sum(reservation.TotalPrice) as SumOfPrice , count(*) as ItemCount
from
Reservation reservation 
join Room room on reservation.RoomId = room.Id
group by room.Number) as temp
order by temp.SumOfPrice desc





