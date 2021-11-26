SELECT WorksAt.pid, WorksAt.startDate, WorksAt.endDate, WorksAt.SINNumber, WorksAt.facilityID, WorksAt.wage, WorksAt.eID FROM WorksAt
INNER JOIN PublicHealthWorker on WorksAt.pid=PublicHealthWorker.pid
INNER JOIN Shifts on PublicHealthWorker.pid=Shifts.pid
WHERE WorksAt.pid=12