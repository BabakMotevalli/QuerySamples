select 
* 
from 
Room room 
where 
room.Id 
not in 
(
select 
res.RoomId 
from 
Reservation res 
where
(CheckIn <= '2023-07-20') and (CheckOut >= '2023-07-15'))
