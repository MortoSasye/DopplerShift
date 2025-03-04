/// Slugcat language holder - they are adept in understanding machines, though unable to speak the tongue themselves.
/datum/language_holder/slugcat
	understood_languages = list(/datum/language/common = list(LANGUAGE_ATOM),
								/datum/language/movespeak = list(LANGUAGE_ATOM),
								/datum/language/machine = list(LANGUAGE_ATOM),
								/datum/language/drone = list(LANGUAGE_ATOM))
	spoken_languages = list(/datum/language/common = list(LANGUAGE_ATOM),
							/datum/language/movespeak = list(LANGUAGE_ATOM))


/mob/living/carbon/human/species/slugcat
	race = /datum/species/slugcat
/datum/species/slugcat
	// The Slugcats of Talon III
	name = "\improper Slugcat"
	plural_form = "Slugcats"
	id = SPECIES_SLUGCAT
	preview_outfit = /datum/outfit/scug_preview
	inherent_traits = list(
		TRAIT_MUTANT_COLORS,
		TRAIT_TACKLING_TAILED_DEFENDER,
	)
	inherent_biotypes = MOB_ORGANIC|MOB_HUMANOID
	body_markings = list(/datum/bodypart_overlay/simple/body_marking/lizard = "None")
	mutant_organs = list(
		/obj/item/organ/external/horns = "Slugcat",
		/obj/item/organ/external/frills = "None",
		/obj/item/organ/external/snout = "Slugcat",
		/obj/item/organ/external/tail/lizard = "Slugcat",
	)
	payday_modifier = 1.0
	changesource_flags = MIRROR_BADMIN | WABBAJACK | MIRROR_PRIDE | MIRROR_MAGIC | RACE_SWAP | ERT_SPAWN | SLIME_EXTRACT
	inert_mutation = /datum/mutation/human/mute
	death_sound = 'modular_doppler/modular_species/species_types/slugcats/sounds/scugdeath.ogg'
	species_language_holder = /datum/language_holder/slugcat
	digitigrade_customization = DIGITIGRADE_OPTIONAL

	bodypart_overrides = list(
		BODY_ZONE_HEAD = /obj/item/bodypart/head/slugcat,
		BODY_ZONE_CHEST = /obj/item/bodypart/chest/slugcat,
		BODY_ZONE_L_ARM = /obj/item/bodypart/arm/left/lizard/slugcat,
		BODY_ZONE_R_ARM = /obj/item/bodypart/arm/right/lizard/slugcat,
		BODY_ZONE_L_LEG = /obj/item/bodypart/leg/left/lizard/slugcat,
		BODY_ZONE_R_LEG = /obj/item/bodypart/leg/right/lizard/slugcat,
	)
	digi_leg_overrides = list(
		BODY_ZONE_L_LEG = /obj/item/bodypart/leg/left/digitigrade/slugcat,
		BODY_ZONE_R_LEG = /obj/item/bodypart/leg/right/digitigrade/slugcat,
	)

/datum/outfit/scug_preview
	name = "Slugcat (Species Preview)"
	head = /obj/item/clothing/head/beret/doppler_command/science
	neck = /obj/item/clothing/neck/doppler_mantle/science

/datum/species/slugcat/prepare_human_for_preview(mob/living/carbon/human/scug_for_preview)
	scug_for_preview.dna.features["lizard_markings"] = "Slugcat Underbelly"
	scug_for_preview.dna.features["body_markings_color_1"] = "#ccecff"
	scug_for_preview.dna.features["mcolor"] = "#FFFFFF"
	scug_for_preview.dna.features["frills"] = "Slugcat"
	scug_for_preview.dna.features["frills_color_1"] = "#ccecff"
	scug_for_preview.dna.features["snout"] = "Slugcat"
	scug_for_preview.dna.features["snout_color_1"] = "#ffffff"
	scug_for_preview.dna.features["snout_color_2"] = "#dddddd"
	scug_for_preview.dna.features["snout_color_3"] = "#9a9b9e"
	scug_for_preview.dna.features["horns"] = "Slugcat"
	scug_for_preview.dna.features["horns_color_1"] = "#ffffff"
	scug_for_preview.dna.features["horns_color_2"] = "#dddddd"
	scug_for_preview.eye_color_left = "#CCECFF"
	scug_for_preview.eye_color_right = "#CCECFF"
	regenerate_organs(scug_for_preview)
	scug_for_preview.update_body(is_creating = TRUE)

/// SOUNDS BREAKER
/datum/species/slugcat/get_scream_sound(mob/living/carbon/human/scug)
	return pick(
		'modular_doppler/modular_species/species_types/slugcats/sounds/scugscream_1.ogg',
	)

/datum/species/slugcat/get_cough_sound(mob/living/carbon/human/scug)
	if(scug.physique == FEMALE)
		return pick(
			'sound/mobs/humanoids/human/cough/female_cough1.ogg',
			'sound/mobs/humanoids/human/cough/female_cough2.ogg',
			'sound/mobs/humanoids/human/cough/female_cough3.ogg',
			'sound/mobs/humanoids/human/cough/female_cough4.ogg',
			'sound/mobs/humanoids/human/cough/female_cough5.ogg',
			'sound/mobs/humanoids/human/cough/female_cough6.ogg',
		)
	return pick(
		'sound/mobs/humanoids/human/cough/male_cough1.ogg',
		'sound/mobs/humanoids/human/cough/male_cough2.ogg',
		'sound/mobs/humanoids/human/cough/male_cough3.ogg',
		'sound/mobs/humanoids/human/cough/male_cough4.ogg',
		'sound/mobs/humanoids/human/cough/male_cough5.ogg',
		'sound/mobs/humanoids/human/cough/male_cough6.ogg',
	)

/datum/species/slugcat/get_cry_sound(mob/living/carbon/human/scug)
	if(scug.physique == FEMALE)
		return pick(
			'sound/mobs/humanoids/human/cry/female_cry1.ogg',
			'sound/mobs/humanoids/human/cry/female_cry2.ogg',
		)
	return pick(
		'sound/mobs/humanoids/human/cry/male_cry1.ogg',
		'sound/mobs/humanoids/human/cry/male_cry2.ogg',
		'sound/mobs/humanoids/human/cry/male_cry3.ogg',
	)

/datum/species/lizard/get_sneeze_sound(mob/living/carbon/human/scug)
	if(scug.physique == FEMALE)
		return 'sound/mobs/humanoids/human/sneeze/female_sneeze1.ogg'
	return 'sound/mobs/humanoids/human/sneeze/male_sneeze1.ogg'

/datum/species/lizard/get_laugh_sound(mob/living/carbon/human/scug)
	return 'modular_doppler/modular_species/species_types/slugcats/sounds/scuglaugh_1.ogg'

/datum/species/lizard/get_sigh_sound(mob/living/carbon/human/scug)
	if(scug.physique == FEMALE)
		return 'sound/mobs/humanoids/human/sigh/female_sigh.ogg'
	return 'sound/mobs/humanoids/human/sigh/male_sigh.ogg'

/datum/species/lizard/get_sniff_sound(mob/living/carbon/human/scug)
	if(scug.physique == FEMALE)
		return 'sound/mobs/humanoids/human/sniff/female_sniff.ogg'
	return 'sound/mobs/humanoids/human/sniff/male_sniff.ogg'
/// SOUNDS BREAKER END

/datum/species/slugcat/get_species_description()
	return "Nimble omnivores frequently cursed with chronic mutism and a natural aptitude for talking to machines, the Slugcats are a rare sight in systems far from their homeworld of Talon III.  \
		Genetically engineered over untold cycles by the manipulation of their homeworld's Resonance field, Slugcats are crafty and intelligent, with incredible capabilities yet incredible fragility, \
		still carrying the scars of their homeworld's brush with death long, long ago."

/datum/species/slugcat/get_species_lore()
	return list(
		"Nimble omnivores, both predator and prey, they served as the eyes and ears of the great mechanical minds, the Iterators, as they worked to uncover the secrets of the progenitor species who once ruled their homeworld.  \
			Over time, Iterators began to see Slugcats as more than mere servants, treating them as friends and trusted allies despite their small stature.  Gazes At Satellites, the leader \
			of the Primary Group began a research project in tandem with 6 Small Stones to try and further guide the growth & evolution of Slugcats.",

		"After many cycles of study & untold many, many more of natural adaptation, Slugcats have ascended to a more recognizable humanoid form, trading some of their nimbleness for craftiness \
			and intelligence to more than rival their most notable compeititors, the Scavs.  When exploration probes from 4CA's Ministry of Contact entered orbit of Tallon III, \
			they were contacted by Gazes At Satellites, and soon Slugcats entered the collective consciousness of the galaxy...and due to their history, the baleful gaze of the AIA.",

		"Slugcats remain uncommonly seen beyond the Talon system, as their numbers remain few despite improvements that have been made to the safety and stability of the so-called \"Rain World's\" eco-system.  \
			As such, those who do choose to venture beyond their world must do so with their Iterator's express approval and guidance, and typically seek employ and residence within outposts near the Talon system.  \
			Slugcats who venture beyond Talon III typically retain the titles given to them by their tribe & Iterator, such as \"The Hunter\" or \"The Artificer\", although some take on the names given to them by their compatriots beyond the stars.",

		"Most of those who do venture beyond remain independents primarily tied to their homeworld, or within the service of the Fourth Celestial Alignment.  The Iterators hold a steadfast neutral stance- \
			Talon III remains officially neutral & unaligned, which is how both they & the Slugcats prefer it.  This has drawn intense ire from the AIA, whose attempts to convince Slugcats to join them have thus far failed; \
			the entire AIA playbook is based around collective trauma & hatred of uplifting factions...yet amongst the Slugcats' closest allies and confidantes are the Iterators, themselves such a faction. \
			As such, most Slugcats hold a strong dislike & distrust of the AIA, despite their official stance of neutrality.",
	)
