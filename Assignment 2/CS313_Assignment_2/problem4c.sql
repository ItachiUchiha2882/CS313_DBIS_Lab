SELECT DISTINCT sec.building, sec.room_number, ts.day
FROM section AS sec, time_slot AS ts 
WHERE sec.time_slot_id=ts.time_slot_id AND ts.day='W';