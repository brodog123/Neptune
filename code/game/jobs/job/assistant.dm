/datum/job/assistant
	title = "Assistant"
	department = "Civilian"
	department_flag = CIV

	total_positions = -1
	spawn_positions = -1
	supervisors = "Any crew members"
	economic_power = 1
	access = list()			//See /datum/job/assistant/get_access()
	minimal_access = list()	//See /datum/job/assistant/get_access()
	// alt_titles = list("Technical Assistant","Medical Intern","Research Assistant","Visitor") //commented out for now in case i want to add any alt passenger titles
	outfit_type = /decl/hierarchy/outfit/job/assistant

/datum/job/assistant/get_access()
	if(config.assistant_maint)
		return list(access_maint_tunnels)
	else
		return list()

/decl/hierarchy/outfit/job/assistant
	name = OUTFIT_JOB_NAME("Assistant")