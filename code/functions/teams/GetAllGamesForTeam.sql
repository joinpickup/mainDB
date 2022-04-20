select * 
from Activity 
inner join Game
on Game.ActivityID = Activity.ActivityID
inner join LeagueGame
on Game.GameID = LeagueGame.GameID
inner join GameTeam
on Game.GameID = teamID;