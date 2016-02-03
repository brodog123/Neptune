var/list/grass_types = list(
	/obj/structure/flora/ausbushes/sparsegrass,
	/obj/structure/flora/ausbushes/fullgrass
	)

var/list/tree_types = list(
	/obj/structure/flora/tree
	)

/turf/simulated/floor/natural
	name = "dirt"
	desc = "Dirty."
	density = 0
	opacity = 0
	blocks_air = 0
	icon = 'icons/turf/seafloor.dmi'
	icon_state = "seafloor"
	accept_lattice = 1
	drop_state = "rockwall"
	blend_with_neighbors = 1
	outside = 1

	var/grass_prob = 0
	var/tree_prob = 0

/turf/simulated/floor/natural/is_plating()
	return 1

/turf/simulated/floor/natural/initialize()
	if(grass_prob && prob(grass_prob))
		var/grass_type = pick(grass_types)
		new grass_type(src)
	if(tree_prob && prob(tree_prob))
		var/tree_type = pick(tree_types)
		new tree_type(src)
	return ..()

/turf/simulated/floor/natural/light
	name = "light mud"
	icon_state = "mud_light"
	blend_with_neighbors = 2
	grass_prob = 10

/turf/simulated/floor/natural/dark
	name = "dark mud"
	icon_state = "mud_dark"
	blend_with_neighbors = 3
	grass_prob = 15

/turf/simulated/floor/natural/sand
	name = "sand"
	icon_state = "sand"
	blend_with_neighbors = 4
	grass_prob = 5

/turf/simulated/floor/natural/sand/caves
	name = "sand"
	icon_state = "sand"
	blend_with_neighbors = 4
	grass_prob = 0

/turf/simulated/floor/natural/dirt
	name = "dark dirt"
	icon_state = "dirt-dark"
	blend_with_neighbors = 5

/turf/simulated/floor/natural/grass
	name = "grass"
	icon_state = "grass"
	blend_with_neighbors = 6
	grass_prob = 40
	tree_prob = 3

/turf/simulated/floor/natural/grass/forest
	name = "thick grass"
	icon_state = "grass-dark"
	grass_prob = 80
	tree_prob = 20
	blend_with_neighbors = 8

/turf/simulated/floor/natural/grass/New()
	if(prob(50))
		icon_state += "2"
		blend_with_neighbors++
	..()

// It's kinda like a sink!
/turf/simulated/floor/water
	name = "shallow water"
	icon = 'icons/misc/beach.dmi'
	icon_state = "seashallow"
	blend_with_neighbors = -1

/turf/simulated/floor/water/attack_hand(var/mob/user)

	var/mob/living/carbon/human/H = user
	if(!istype(H))
		return ..()
	H << "<span class='notice'>You start washing your hands.</span>"
	if(!do_after(H, 40) || !Adjacent(H))
		return
	H.clean_blood()
	H.update_inv_gloves()
	H.visible_message("<span class='notice'>\The [user] washes their hands in \the [src].</span>")

/turf/simulated/floor/water/attackby(var/obj/item/O, var/mob/user)
	var/obj/item/weapon/reagent_containers/RG = O
	if(istype(RG) && RG.is_open_container())
		RG.reagents.add_reagent("water", min(RG.volume - RG.reagents.total_volume, RG.amount_per_transfer_from_this))
		user.visible_message("<span class='notice'>\The [user] fills \the [RG] from \the [src].</span>")
		playsound(src, 'sound/effects/slosh.ogg', 25, 1)
		return 1

	if(istype(O, /obj/item/weapon/mop))
		O.reagents.add_reagent("water", 5)
		user << "<span class='notice'>You wet \the [O] in \the [src].</span>"
		playsound(src, 'sound/effects/slosh.ogg', 25, 1)
		return

	user << "<span class='notice'>You start washing \the [O].</span>"
	if(!do_after(user, 40) || !Adjacent(user))
		return
	if(user.get_active_hand() != O)
		return

	O.clean_blood()
	user.visible_message("<span class='notice'>\The [user] washes \the [O] in \the [src].</span>")
