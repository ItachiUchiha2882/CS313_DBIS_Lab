SELECT table_name, column_name, data_type
FROM information_schema.columns
WHERE table_name = 'student' || table_name = 'advisor' || 
    table_name = 'classroom' || table_name = 'course' || 
    table_name = 'department' || table_name = 'instructor' || 
    table_name = 'prereq' || table_name = 'section' || 
    table_name = 'takes' || table_name = 'teaches' || 
    table_name = 'time_slot';