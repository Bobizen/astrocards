# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

# Star: Sun
sun = Star.create(name_en: "Sun", name_fr: "soleil", image_path: "sun.png", classification: "yellow dwarf", revolution: "0", rotation: "0", main_moon:" ", summary: "The Sun is a big, hot star in space that shines brightly in our sky during the day. It's like a giant ball of fire, but it's not really on fire like a campfire. Instead, it's made up of super-hot gas called plasma. The Sun is so big that it's much larger than any planet, including Earth!", funfact: "Ever noticed the Sun's got some funky pockmarks on its face? Yep, those are sunspots! They're like the Sun's version of zits, but don't worry, they're still super hot! And hey, the Sun's got some wild moves too - it throws these epic tantrums called solar flares and solar storms. But no need to panic, Earth's got its cosmic sunscreen, aka the atmosphere, keeping us safe from the Sun's shenanigans!")
Card.create(object: sun)

# Planets
mercury = Planet.create(name_en: "mercury", name_fr: "mercure", image_path: "mercury.png", star_id: sun.id, classification: "rocky", average_distance_to_earth: "~77", revolution: "0.24", rotation: "58.6", main_moon:" ", summary: "Mercury is the closest planet to the Sun and is named after the speedy messenger of the Roman gods. It's a small, rocky world with a surface that's covered in craters, similar to our Moon. Its extreme temperatures swing between scorching hot during the day and freezing cold at night.", funfact: "Despite being the closest planet to the Sun, Mercury isn't the hottest - that title goes to Venus!" )
Card.create(object: mercury)

venus = Planet.create(name_en: "venus", name_fr: "vénus", star_id: sun.id, image_path: "venus.png", classification: "rocky", average_distance_to_earth: "~38", revolution: "0.62", rotation: "243", main_moon:" ", summary: "Venus is often called Earth's 'sister planet' because of its similar size and composition. It's the hottest planet in our solar system due to its thick atmosphere that traps heat, making it a fiery inferno. Venus' surface is shrouded in thick clouds of sulfuric acid, hiding its rocky terrain beneath.", funfact: "Venus spins in the opposite direction compared to most other planets, so if you were standing on its surface, you'd see the Sun rise in the west and set in the east - talk about a mind-bender!")
Card.create(object: venus)

earth = Planet.create(name_en: "earth", name_fr: "terre", star_id: sun.id, image_path: "earth.png", classification: "rocky", average_distance_to_earth: "N/A", revolution: "1", rotation: "1", main_moon:"Moon", summary: "Earth is our home sweet home, the only known planet to support life. It's covered in vast oceans, towering mountains, and lush forests. Our planet has a protective atmosphere that keeps us safe and cozy. Earth is the perfect place for us to live, with just the right temperature and conditions for life to thrive.", funfact: "Earth is the only planet not named after a god or goddess.")
Card.create(object: earth)

mars = Planet.create(name_en: "mars", name_fr: "mars", star_id: sun.id, image_path: "mars.png", classification: "rocky", average_distance_to_earth: "~54.6", revolution: "1.88", rotation: "1.03", main_moon:"Phobos, Deimos", summary: "Mars is often called the 'Red Planet' because of its rusty red surface. It's home to the tallest volcano in the solar system, Olympus Mons, and the deepest canyon, Valles Marineris. Scientists think Mars might have had oceans in the past, making it a potential place to search for signs of ancient life.", funfact: "Mars has two tiny moons, Phobos and Deimos, named after the sons of Ares, the Greek god of war - fitting names for moons of the Red Planet!")
Card.create(object: mars)

jupiter = Planet.create(name_en: "jupiter", name_fr: "jupiter", star_id: sun.id, image_path: "jupiter.png", classification: "gas giant", average_distance_to_earth: "~588", rotation: "0.41", revolution: "11.86", main_moon:"Io, Europa, Ganymede, Callisto", summary: "Jupiter is the largest planet in our solar system, a colossal ball of gas with swirling clouds and a famous Great Red Spot, a massive storm that's been raging for centuries. Jupiter has a strong magnetic field, making it a protective shield for the inner planets from cosmic debris.", funfact: "Jupiter's Great Red Spot is so huge that you could fit Earth inside it - not that you'd want to be in the middle of a gigantic storm!")
Card.create(object: jupiter)

saturn = Planet.create(name_en:"saturn", name_fr: "saturne", star_id: sun.id, image_path: "saturn.png", classification: "gas giant", average_distance_to_earth: "~1200", revolution: "29.46", rotation: "0.45", main_moon:"Titan, Enceladus, Rhea, Iapetus", summary: "Saturn is known for its magnificent rings, made up of icy particles ranging in size from tiny grains to large chunks. Beneath its stunning rings, Saturn is a gas giant with a rocky core surrounded by layers of hydrogen and helium. It's the least dense planet in our solar system, so if you could find a bathtub big enough, it would float!", funfact: "Despite its large number of moons, none of Saturn's moons are as iconic as its rings.")
Card.create(object: saturn)

uranus = Planet.create(name_en: "uranus", name_fr: "uranus", star_id: sun.id, image_path: "uranus.png", classification: "ice giant", average_distance_to_earth: "~2600", revolution: "84.01", rotation: "0.72", main_moon:"Titania, Oberon, Umbriel, Ariel, Miranda", summary: "Uranus is a mysterious ice giant tipped on its side, giving it a unique appearance compared to the other planets. It's covered in thick clouds of methane, which give it a blue-green hue. Uranus is so far from the Sun that a year on Uranus lasts about 84 Earth years - talk about a long birthday wait!", funfact: "Uranus spins on its side, making its poles point towards and away from the Sun as it orbits, giving it some very extreme seasons!")
Card.create(object: uranus)

neptune = Planet.create(name_en: "neptune", name_fr: "neptune", star_id: sun.id, image_path: "neptune.png", classification: "ice giant", average_distance_to_earth: "~4300", revolution: "164.79", rotation: "0.67", main_moon:"Triton, Nereid, Proteus", summary: "Neptune is the farthest planet from the Sun and is named after the Roman god of the sea. It's a chilly ice giant with winds that whip around the planet at speeds of over 1,000 miles per hour. Neptune's atmosphere is made up of hydrogen, helium, and methane, giving it a deep blue color.", funfact: "Neptune's Great Dark Spot, similar to Jupiter's Great Red Spot, is a giant storm in its atmosphere that can change in size and shape over time.")
Card.create(object: neptune)

# Satellites
moon = Satellite.create(name_en: "moon", name_fr: "lune", planet_id: earth.id, image_path: "moon.png", classification:"rocky", average_distance_to_earth: "~0.38", revolution: "27.3", summary: "The Moon is Earth's only natural satellite, lighting up our night sky with its gentle glow. It's covered in craters and plains, evidence of its turbulent past. The Moon's gravitational pull causes tides on Earth and has inspired countless myths and legends throughout history.", funfact: "Despite being our closest neighbor in space, we only ever see one side of the Moon from Earth - it's like it's playing a game of cosmic hide-and-seek with us!")
Card.create(object: moon)

io = Satellite.create(name_en: "io", name_fr: "io", planet_id: jupiter.id, image_path: "Io.png", classification: "rocky", average_distance_to_earth: "", revolution: "", summary: "Io is one of Jupiter's four largest moons, known as the Galilean moons. It's the most volcanically active body in the solar system, with over 400 active volcanoes spewing lava across its surface. Io's intense volcanic activity is caused by the gravitational forces from Jupiter and its other moons.", funfact: "Io's volcanoes can shoot plumes of sulfur and other gases hundreds of kilometers into space - talk about a fiery show!")
Card.create(object: io)

europa = Satellite.create(name_en: "europa", name_fr: "europe", planet_id: jupiter.id, image_path: "europe.png", classification: "rocky", average_distance_to_earth: "", revolution: "", summary: "Europa is another one of Jupiter's Galilean moons and is covered in a layer of ice. Beneath its icy crust lies a vast ocean of liquid water, making Europa one of the most promising places to search for extraterrestrial life in our solar system. Europa's smooth surface is crisscrossed with cracks and ridges created by the movement of its icy shell.", funfact: "Europa's subsurface ocean may have more than twice the amount of water found on Earth, making it a tantalizing destination for future space exploration missions!")
Card.create(object: europa)

ganymede = Satellite.create(name_en: "ganymede", name_fr: "ganymede", planet_id: jupiter.id, image_path: "ganymede.png", classification: "rocky", average_distance_to_earth: "", revolution: "", summary: "Ganymede is the largest moon in our solar system and orbits around Jupiter. It's even larger than the planet Mercury! Ganymede has its own magnetic field and a complex geology with both old, cratered regions and younger, grooved terrains. It's also the only moon known to have its own internally generated magnetic field.", funfact: "Ganymede's magnetic field creates a mini-magnetosphere, which shields it from Jupiter's intense radiation – talk about having your own personal force field!")
Card.create(object: ganymede)

callisto = Satellite.create(name_en: "callisto", name_fr: "callisto", planet_id: jupiter.id, image_path: "callisto.png", classification: "rocky", average_distance_to_earth: "", revolution: "", summary: "Callisto is another one of Jupiter's Galilean moons and is the most heavily cratered object in our solar system. Its surface is covered in impact craters, suggesting a lack of geological activity. Callisto's icy crust may hide a subsurface ocean, making it a potential habitat for microbial life.", funfact: "Callisto's ancient surface preserves a record of impacts from throughout the solar system's history, making it a valuable target for studying the early solar system.")
Card.create(object: callisto)

phobos = Satellite.create(name_en: "phobos", name_fr: "phobos", planet_id: mars.id, image_path: "phobos.png", classification: "irregular moon", average_distance_to_earth: "", revolution: "", summary: "Phobos is one of the two moons of Mars, named after the Greek god of fear. It's a small, irregularly shaped moon with a rugged surface covered in craters. Phobos orbits very close to Mars and is gradually getting closer to the planet over time.", funfact: "Phobos orbits Mars so closely that if you were standing on the surface of Mars, you could see Phobos rise in the west and set in the east - that's one speedy moon!")
Card.create(object: phobos)

deimos = Satellite.create(name_en: "deimos", name_fr: "deimos", planet_id: mars.id, image_path: "deimos.png", classification: "irregular moon", average_distance_to_earth: "", revolution: "", summary: "Deimos is the other moon of Mars, named after the Greek god of terror. It's even smaller than its sibling, Phobos, and has a smoother surface with fewer craters. Deimos orbits farther from Mars compared to Phobos and is slowly moving away from the planet over time.", funfact: "Deimos orbits Mars so slowly that it takes over 30 hours to complete one orbit – now that's what you call taking your sweet time!")
Card.create(object: deimos)

# Bonus cards
earth_system = Special.create(name_en: "earth-moon system", name_fr: "système terre-lune", card_ids: "4-10", image_path: "babymoon.png", summary: "The Moon, the only natural earth satellite, orbits Earth at an average distance of about 385,000 kilometers and is responsible for tides on Earth due to its gravitational pull. The Moon has a diameter about one-quarter of Earth's, making it the fifth largest moon in the solar system. The first human missions to the Moon took place under NASA's Apollo program in the 1960s and 1970", funfact: "The Moon is moving away from Earth at a rate of about 3.8 centimeters per year, which means that in about 50 billion years, it will take the Moon about 47 days to orbit Earth, compared to about 27.3 days currently.")
Card.create(object: earth_system)

jupiter_system = Special.create(name_en: "jupiter system", name_fr: "système jupiter", card_ids: "6-11-12-13-14", image_path: "jupiter.png", summary: "The Jupiter system is the collection of celestial bodies that orbit Jupiter, the largest planet in our solar system. It includes at least 79 moons, including the four Galilean moons, and a faint ring system. The Jupiter system is an important target for scientific research.", funfact: "The Great Red Spot on Jupiter is a massive storm that has been raging on the planet for at least 300 years. It is so large that it could easily swallow Earth whole! The storm is thought to be caused by a combination of Jupiter's rapid rotation and its complex atmospheric dynamics, and it is one of the most iconic features of the planet. Despite its long lifespan, the Great Red Spot is actually shrinking, and scientists are not sure how much longer it will continue to exist.")
Card.create(object: jupiter_system)

mars_system = Special.create(name_en: "mars system", name_fr: "système mars", card_ids: "5-15-16", image_path: "mars.png", summary: "The Mars system consists of the planet Mars, its two moons Phobos and Deimos, and its thin atmosphere. Mars is the fourth planet from the sun and has a diverse landscape with signs of past water activity. It is an important target for scientific research and potential human exploration.", funfact: "Olympus Mons on Mars is the largest volcano in the solar system, standing 22 km (14 miles) high and with a base diameter of 600 km (370 miles). It's so big, it would be visible from Earth with the naked eye if Mars were as close as the moon!")
Card.create(object: mars_system)

# supports
Gallerysupport.create(name: "box", image_path: "supports/astro-box.png")
Gallerysupport.create(name: "light", image_path: "supports/astro-light.png")
Gallerysupport.create(name: "globe", image_path: "supports/astro-worldmap.png")
