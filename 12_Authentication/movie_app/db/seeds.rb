# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Movies = Movie.create([
	{title: 'A Clockwork Orange', description: 'Droogs, ultraviolence, Beethoven', year_released: '1971' },
	{title: 'Paths of Glory', description: 'World War I, suicidal missions, Kirk Douglas\' chin', year_released: '1957' },
	{title: '2001: A Space Odyssey', description: 'Dave, maybe you should take a stress pill', year_released: '1968' },
	{title: 'Lolita', description: 'Humbert Humbert meets Clare Quilty', year_released: '1962' },
	{title: 'Barry Lyndon', description: 'Costume drama, bad behavior, duels', year_released: '1975' },
])
