SELECT * FROM BookingSlots
WHERE facilityID=1 AND
DayOfAppointment >='2021-02-01' AND 
DayOfAppointment <= '2023-12-27' AND
timeOfAppointment > '08:00:00';

|pID|facilityID|typeOfAppointment|DayOfAppointment|timeOfAppointment|DoseNumber|
|---|----------|-----------------|----------------|-----------------|----------|
|   |1         |                 |2021-03-15      |14:00:00         |          |
|   |1         |                 |2021-04-02      |09:15:00         |          |
|   |1         |                 |2021-07-01      |17:00:00         |          |
|   |1         |                 |2021-07-02      |09:15:00         |          |
|   |1         |                 |2021-07-03      |09:15:00         |          |
|1  |1         |                 |2021-09-12      |10:30:00         |1         |
