/datum/job/utilities
	welcome_blurb = "Keep the lights on, the water out, and the power flowing. Easier said than done."
	department_flag = ENG
	department = "Utilities"
	supervisors = "the General Foreman"
	selection_color = "#5b4d20"
	economic_power = 4

/datum/job/utilities/fireman
	title = "Fireman"
	total_positions = 2
	spawn_positions = 2
	outfit_type = /decl/hierarchy/outfit/job/cassini/utilities

/datum/job/utilities/head_fireman
	title = "Construction Worker"
	total_positions = 2
	spawn_positions = 2
	outfit_type = /decl/hierarchy/outfit/job/cassini/utilities/construction

/datum/job/utilities/telegraphist
	title = "Telegraphist"
	welcome_blurb = "Send and receive signals using the telegraph. "
	total_positions = 1
	spawn_positions = 1
	head_position = FALSE
	department_flag = ENG
	supervisors = "the Captain"
	selection_color = "#7f6e2c"
	req_admin_notify = 1
	outfit_type = /decl/hierarchy/outfit/job/cassini/utilities/chief
	economic_power = 8