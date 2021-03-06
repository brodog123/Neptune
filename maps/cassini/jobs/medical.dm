/datum/job/medical
	department_flag = MED
	department = "Medical"
	economic_power = 6
	selection_color = "#013d3b"
	supervisors = "the Chief Physician"

/datum/job/medical/surgeon
	title = "Surgeon"
	welcome_blurb = "Heal the sick and tend to the wounded. Perform cutting edge 20th century surgery."
	total_positions = 3
	spawn_positions = 3
	outfit_type = /decl/hierarchy/outfit/job/cassini/medical

/datum/job/medical/chief_surgeon
	title = "Chief Physician"
	total_positions = 1
	spawn_positions = 1
	economic_power = 10
	department_flag = MED|COM
	welcome_blurb = "Direct and coordinate your physicians. Prevent Tuberculosis from spreading."
	selection_color = "#026865"
	req_admin_notify = 1
	head_position = TRUE
	outfit_type = /decl/hierarchy/outfit/job/cassini/medical/chief
	supervisors = "the Captain"