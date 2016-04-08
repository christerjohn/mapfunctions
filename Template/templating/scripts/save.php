SELECT households.id as h_id, latitude as lat, longitude as lon, households.name as h_name
 	FROM households INNER JOIN puroks on households.purok_id = puroks.id 
 	INNER JOIN barangays on puroks.barangay_id = barangays.id 
 	WHERE barangays.id = 1 
    AND households.id NOT IN 
( SELECT DISTINCT households.id AS households_id FROM flood_maps INNER JOIN barangays on flood_maps.barangay_id = barangays.id, 
residents INNER JOIN family_members on family_members.resident_id = residents.id
INNER JOIN families on family_members.family_id = families.id
INNER JOIN households on families.household_id = households. id 
WHERE ST_CONTAINS(flood_maps.shape, Point(households.longitude, households.latitude))
AND flood_maps.return_period = 25
AND barangays.id = 1
AND flood_maps.level = 3 )