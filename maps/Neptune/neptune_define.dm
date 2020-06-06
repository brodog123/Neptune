/datum/map/neptune
	name = "Neptune"
	station_name = "Neptune"
	full_name = "Neptune"
	path = "neptune"
	lobby_icon = 'maps/cassini/cassini_lobby.dmi'
	lobby_tracks = list(/music_track/absconditus)
	station_levels = list(1, 2, 3, 4, 5, 6)
	contact_levels = list(1)
	player_levels = list(1, 2, 3, 4, 5, 6)
	allowed_spawns = list("Arrivals Shuttle")

	shuttle_docked_message = "The ship has docked."
	shuttle_leaving_dock = "The ship has departed from the dock."
	shuttle_called_message = "The lifeboats are being prepared."
	shuttle_recall_message = "The lifeboat launch has been cancelled."
	emergency_shuttle_docked_message = "The lifeboats are ready to launch."
	emergency_shuttle_leaving_dock = "The lifeboats have launched from %dock_name%."
	emergency_shuttle_called_message = "The lifeboats are being prepared."
	emergency_shuttle_recall_message = "The lifeboat launch has been cancelled."

	default_cultural_info = list(
		TAG_HOMEWORLD = LOCATION_SATURN,
		TAG_FACTION =   FACTION_OTHER,
		TAG_CULTURE =   CULTURE_SATURN,
		TAG_RELIGION =  RELIGION_OTHER
	)

