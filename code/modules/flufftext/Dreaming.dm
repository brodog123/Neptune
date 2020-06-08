
var/list/dreams = list( "a key", "drowning", "sea burial", "a sinking ship", "Neptune", "a trident", "a lighthouse", "a ball of fire", "strange men", "waves", "death", "weevils", "cockroaches", "a fine cigar",
	"a looking glass", "a thunderstorm", "mountains", "seagulls", "an octopus", "Davy Jone's Locker", "Jonah and the Whale", "Davy Jones", "a whale", "pirates", "The Flying Dutchman", "a ball of fire",
	"a ship suspended in the sky", "a red sunrise", "Jonah", "a redheaded man", "a woman", "Friday", "mermaids", "sirens", "an albatross", "a black cat", "a Cormorant", "A Klabautermann",
	"Saint Nicholas", "Brendan The Navigator", "Kraken", "Amphitrite", "The Captain's Whip", "An Evil Eye", "bedbugs", "termites", "an anchor", "antarctica", "Soup", "fog", "mist",
	"the ocean", "shipwrecks", "divers", "the equator", "slimy things with slimy legs", "a hurricane", "in the belly of a shark", "giants", "icebergs", "pack ice", "boilers",
	"colorful fish", "a sandy shore", "a rocky shore", "a harbor", "rotten timber", "an oil lamp", "a fire", "a storm", "whirlpools", "a submarine", "a hermit", "a desert island",
	"saltwater", "crabs", "scurvy", "a piano","a church organ", "wind", "coal", "a stove", "God", "monsters", "a swamp", "a train", "the moon", "mars", "mercury", "the sun", "jupiter",
	"pluto", "Venus", "Saturn", "Uranus", "Satan", "Jesus", "A desert", "The Last Supper", "Church", "the future", "the past", "a volcano", "sails", "cigars", "alcohol", "moldy bread",
	"new beginnings", "the end", "a skeleton", "a campfire", "gold", "silver", "copper", "divorce", "torpedoes", "bells", "a toy boat", "a crystal ball", "a meteor", "dinosaurs",
	"a barge", "a tug", "a warship", "a ghost", "angry spirits", "rats", "hardtack", "catharsis", "purgatory", "reincarnation", "hope", "a light", "a tunnel", "introspection",
	"a ghost ship", "nautilus", "soap", "a towel", "a beach", "judgement", "a clock", "melting", "gnats", "rope", "masts", "harpoons", "SOS", "lost with all hands", "vanished",
	"suspicious", "good", "evil", "seaweed", "scrimshaw", "fish guts", "a wheelhouse", "a paddleboat", "cola", "space", "stars", "a shooting star", "a telescope", "darkness"
	)

mob/living/carbon/proc/dream()
	dreaming = 1

	spawn(0)
		for(var/i = rand(1,4),i > 0, i--)
			to_chat(src, "<span class='notice'><i>... [pick(dreams)] ...</i></span>")
			sleep(rand(40,70))
			if(paralysis <= 0)
				dreaming = 0
				return 0
		dreaming = 0
		return 1

mob/living/carbon/proc/handle_dreams()
	if(client && !dreaming && prob(5))
		dream()

mob/living/carbon/var/dreaming = 0
