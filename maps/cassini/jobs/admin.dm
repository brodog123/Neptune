/datum/job/administrator
	title = "Captain"
	welcome_blurb = "You are the captain of the RMS Neptune, one of the finest ocean liners in the world. Bring her and all souls aboard safely to your destination without incident. Remember, the captain always goes down with the ship!"
	department_flag = COM
	department = "Command"
	head_position = TRUE
	total_positions = 1
	spawn_positions = 1
	selection_color = "#1d1d4f"
	req_admin_notify = 1
	outfit_type = /decl/hierarchy/outfit/job/cassini/clerk/administrator
	economic_power = 10
	supervisors = "the Red Diamond Line Board of Executives"

/datum/job/administrator/get_access()
	return get_all_station_access()

/datum/job/administrator/chief_officer
	title = "Chief Officer"
	welcome_blurb = "You are the Chief Officer, AKA the First Mate. Help the captain where needed and manage the ship's officers and cargo."
	department_flag = COM
	department = "Command"
	head_position = TRUE
	total_positions = 1
	spawn_positions = 1
	selection_color = "#1d1d4f"
	req_admin_notify = 1
	outfit_type = /decl/hierarchy/outfit/job/cassini/clerk/administrator
	economic_power = 10
	supervisors = "the Captain"

