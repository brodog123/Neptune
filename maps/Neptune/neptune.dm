#if !defined(using_map_DATUM)
	#include "neptune_areas.dm"
	#include "neptune_unit_testing.dm"
	#include "jobs/_jobs.dm"
	#include "jobs/_job_closets.dm"
	#include "jobs/_job_clothing.dm"
	#include "jobs/_job_outfits.dm"
	#include "jobs/_jobs_ids.dm"
	#include "jobs/admin.dm"
	#include "jobs/colonist.dm"
	#include "jobs/medical.dm"
	#include "jobs/police.dm"
	#include "jobs/utilities.dm"
	#include "ADeck.dmm"
	#include "BDeck.dmm"
	#include "CDeck.dmm"
	#include "DDeck.dmm"
	#include "EDeck.dmm"
	#include "Orlop.dmm"
	#define using_map_DATUM /datum/map/neptune
#elif !defined(MAP_OVERRIDE)
	#warn A map has already been included, ignoring Neptune
#endif
