# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Playlist.destroy_all

playlist = Playlist.create([
{name: "nap time"
},
{name: "in the clouds"
},
{name: "project traxxx"
},
{name: "in da club"
},
{name: "kate's jazzmatazz"
}
])

Track.destroy_all

track = Track.create([
{spotify_id: "6g1naQRMQAQliHZT5w7CbW"
},
{spotify_id: "6j4BQbCcDPvj70Gsi8z6vu"
},
{spotify_id: "3CV7o0XDHvzOLJb8mw5RHY"
},
{spotify_id: "7yH4QEmh7eU7tODApxrHHd"
},
{spotify_id: "6G0YpHJrHrAAzdq2l8UfLI"
},
{spotify_id: "4xFDra2FAwz1YClA9onXpm"
},
{spotify_id: "1SzULmAaeYHRZyLkga6v3W"
},
{spotify_id: "1ZB4DrJ1sHsBll5Y9a6jQ0"
},
{spotify_id: "4GEeJCXH8tQPrRqAHi9PIz"
},
{spotify_id: "4qJb4z8uavCcuDcSL75iX1"
},
{spotify_id: "1dmadrTqc75EH9ZD7iEhFz"
},
{spotify_id: "1rlIiYb9vRuubGaKt40Z8T"
},
{spotify_id: "12ccVszkcKlheGlGggdbZD"
},
{spotify_id: "78tFkwXIV5JkHu333gBCzy"
},
{spotify_id: "5WfrBqhfZIeToe1EyNBUTJ"
},
{spotify_id: "04dlslsNwzd9JhTReCt60J"
},
{spotify_id: "76vehFXnuXHQ1U0d7R0hgd"
},
])