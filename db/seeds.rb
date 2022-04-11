Game.destroy_all

Game.create(:title => 'Final Fantasy VII', :release_date => '31-1-1997', :genre => 'RPG', :platforms => 'PlayStation, Nintendo Switch, PlayStation 4, Android, PlayStation Portable, Xbox One, iOS, Microsoft Windows', :average_game_time => '83', :image => ''  )

Game.create(:title => 'Kingdom Hearts', :release_date => '28-03-2002', :genre => 'RPG', :platforms => 'PlayStaion 2', :average_game_time => '62', :image => '' )

Game.create(:title => 'God Of War', :release_date => '20-4-2018', :genre => 'Action-adventure', :platforms => 'PlayStation 4, Microsoft Windows', :average_game_time => '51', :image => '' )

Game.create(:title => 'The Legend of Zelda: Ocarina of Time', :release_date => '21-11-1998', :genre => 'Action-adventure game, Puzzle Video Game', :platforms => 'Nintendo Switch, Nintendo 64, GameCube, Wii, Wii U, iQue Player', :average_game_time => '38', :image => '' )

Game.create(:title => 'Castlevania: Lords of Shadow', :release_date => '5-10-2010', :genre => 'Action-adventure game, Hack and slash', :platforms => 'PlayStation 3, Microsoft Windows, Xbox 360', :average_game_time => '38', :image => '' )

Game.create(:title => 'Battletoads', :release_date => '01-06-1991', :genre => 'Beat em up, platform game', :platforms => 'Microsoft Windows, Xbox One, Nintendo Entertainment System, Sega Genesis, Game Boy, Game Gear, Amiga', :average_game_time => '8', :image => '' )

puts "#{ Game.count } Games Created"
