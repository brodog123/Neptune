/datum/job/medical
	department_flag = MED
	department = "Medical"
	economic_power = 6
	selection_color = "#013d3b"
	supervisors = "the Chief Surgeon"

/datum/job/medical/surgeon
	title = "Surgeon"
	welcome_blurb = "Amputate"
	total_positions = 3
	spawn_positions = 3
	outfit_type = /decl/hierarchy/outfit/job/cassini/medical

/datum/job/medical/chief_surgeon
	title = "Chief Surgeon"
	total_positions = 1
	spawn_positions = 1
	economic_power = 10
	department_flag = MED|COM
	welcome_blurb = "Direct and coordinate the Medical crew. Don't forget to feed Ganymede."
	selection_color = "#026865"
	req_admin_notify = 1
	head_position = TRUE
	outfit_type = /decl/hierarchy/outfit/job/cassini/medical/chief
	supervisors = "the Civil Administrator"