/datum/job/utilities
	welcome_blurb = "Keep the lights on, the water out, and the power flowing. Easier said than done."
	department_flag = ENG
	department = "Utilities"
	supervisors = "the General Foreman"
	selection_color = "#5b4d20"
	economic_power = 4

/datum/job/utilities/telegraphist
	title = "Telegraphist"
	total_positions = 1
	spawn_positions = 1
	outfit_type = /decl/hierarchy/outfit/job/cassini/utilities

/datum/job/utilities/fireman
	title = "Fireman"
	welcome_blurb = "Stoke coal into the ship's boilers. Rake the coal evenly for efficient burning. Grease bearings and trim coal when necessary. Spit on a bearing to see if it's too hot!"
	total_positions = 8
	spawn_positions = 5
	outfit_type = /decl/hierarchy/outfit/job/cassini/utilities/construction

/datum/job/utilities/head_fireman
	title = "Head Fireman"
	welcome_blurb = "Coordinate your firemen and make sure the boilers are running at all times."
	total_positions = 1
	spawn_positions = 1
	head_position = TRUE
	department_flag = ENG|COM
	supervisors = "the Civil Administrator"
	selection_color = "#7f6e2c"
	req_admin_notify = 1
	outfit_type = /decl/hierarchy/outfit/job/cassini/utilities/chief
	economic_power = 8
