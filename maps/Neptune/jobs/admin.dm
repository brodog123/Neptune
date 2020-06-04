/datum/job/captain
	title = "Captain"
	welcome_blurb = "You are the captain of the ship and responsible for all souls aboard. Get to your destination safely, but with haste. Remember, the captain goes down with the ship."
	department_flag = COM
	department = "Command"
	head_position = TRUE
	total_positions = 1
	spawn_positions = 1
	selection_color = "#1d1d4f"
	req_admin_notify = 1
	outfit_type = /decl/hierarchy/outfit/job/cassini/clerk/administrator
	economic_power = 10
	supervisors = "the Red Diamond Line board of executives "

/datum/job/administrator/get_access()
	return get_all_station_access()

/datum/job/clerk
	title = "Civil Clerk"
	welcome_blurb = "Assist the Administrator in managing the crew and keeping the station running. Hand out access to those who need it, or terminate access for those who have been fired."
	head_position = TRUE
	department_flag = COM
	department = "Command"
	total_positions = 1
	spawn_positions = 1
	supervisors = "the Civil Administrator"
	selection_color = "#2f2f7f"
	outfit_type = /decl/hierarchy/outfit/job/cassini/clerk
	economic_power = 8
