# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

# Star: Sun
sun = Star.create(name_en: "sun", name_fr: "soleil", classification: "yellow dwarf", summary: "The Sun is a big, hot star in space that shines brightly in our sky during the day. It's like a giant ball of fire, but it's not really on fire like a campfire. Instead, it's made up of super-hot gas called plasma. The Sun is so big that it's much larger than any planet, including Earth!", funfact: "Ever noticed the Sun's got some funky pockmarks on its face? Yep, those are sunspots! They're like the Sun's version of zits, but don't worry, they're still super hot! And hey, the Sun's got some wild moves too - it throws these epic tantrums called solar flares and solar storms. But no need to panic, Earth's got its cosmic sunscreen, aka the atmosphere, keeping us safe from the Sun's shenanigans!")
Card.create(object: sun)

# Planets
mercury = Planet.create(name_en: "mercury", name_fr: "mercure", star_id: sun.id, classification: "rocky", summary: "Mercury is the closest planet to the Sun and is named after the speedy messenger of the Roman gods. It's a small, rocky world with a surface that's covered in craters, similar to our Moon. Its extreme temperatures swing between scorching hot during the day and freezing cold at night.", funfact: "Despite being the closest planet to the Sun, Mercury isn't the hottest - that title goes to Venus!" )
Card.create(object: mercury)

venus = Planet.create(name_en: "venus", name_fr: "vénus", star_id: sun.id, classification: "rocky", summary: "Venus is often called Earth's 'sister planet' because of its similar size and composition. It's the hottest planet in our solar system due to its thick atmosphere that traps heat, making it a fiery inferno. Venus' surface is shrouded in thick clouds of sulfuric acid, hiding its rocky terrain beneath.", funfact: "Venus spins in the opposite direction compared to most other planets, so if you were standing on its surface, you'd see the Sun rise in the west and set in the east - talk about a mind-bender!")
Card.create(object: venus)

earth = Planet.create(name_en: "earth", name_fr: "terre", star_id: sun.id, classification: "rocky", summary: "Earth is our home sweet home, the only known planet to support life. It's covered in vast oceans, towering mountains, and lush forests. Our planet has a protective atmosphere that keeps us safe and cozy. Earth is the perfect place for us to live, with just the right temperature and conditions for life to thrive.", funfact: "Earth is the only planet not named after a god or goddess.")
Card.create(object: earth)

# Satellites
moon = Satellite.create(name_en: "moon", name_fr: "lune", planet_id: earth.id, summary: "The Moon is Earth's only natural satellite, lighting up our night sky with its gentle glow. It's covered in craters and plains, evidence of its turbulent past. The Moon's gravitational pull causes tides on Earth and has inspired countless myths and legends throughout history.", funfact: "Despite being our closest neighbor in space, we only ever see one side of the Moon from Earth - it's like it's playing a game of cosmic hide-and-seek with us!")
Card.create(object: moon)
