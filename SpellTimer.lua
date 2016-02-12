local enemy = GetEnemyHeroes()
local edlastMessage = 0
local eflastMessage = 0

function OnTick()
for i, enemy in ipairs(GetEnemyHeroes()) do 
local ed = enemy:GetSpellData(SUMMONER_1)
local ef = enemy:GetSpellData(SUMMONER_2)
-----------------------------------------------
local t = GetInGameTimer()
local ts = t
local tm = 0
local ts = math.floor(ts)

if ed.currentCd > 0 and os.clock() - edlastMessage > 60 then
ts = ts +ed.currentCd
local ts = math.floor(ts)
while ts >= 60 do
  tm = tm + 1
  ts = ts - 60
  end
  edlastMessage = os.clock()	
	if ed.name ~= summonerflash then
PrintChat("<font color=\"#A27AFE\"><b>"..enemy.charName.."<font color=\"#FF4848\"> FALSH ON:</font> </b><font color=\"#FFFFFF\">" .. tm .." : "..ts)
elseif ed.name ~= summonerdot then
PrintChat("<font color=\"#A27AFE\"><b>"..enemy.charName.."<font color=\"#FF4848\"> Ignite ON:</font> </b><font color=\"#FFFFFF\">" .. tm .." : "..ts)
else
PrintChat("<font color=\"#A27AFE\"><b>"..enemy.charName.."<font color=\"#FF4848\"> D ON:</font> </b><font color=\"#FFFFFF\">" .. tm .." : "..ts)
end

if ef.currentCd > 0 and os.clock() - eflastMessage > 60 then
ts = ts +ef.currentCd
local ts = math.floor(ts)
while ts >= 60 do
  tm = tm + 1
  ts = ts - 60
  end
eflastMessage = os.clock()	
	if ef.name ~= summonerflash then
PrintChat("<font color=\"#A27AFE\"><b>"..enemy.charName.."<font color=\"#FF4848\"> FALSH ON:</font> </b><font color=\"#FFFFFF\">" .. tm .." : "..ts)
elseif ef.name ~= summonerdot then
PrintChat("<font color=\"#A27AFE\"><b>"..enemy.charName.."<font color=\"#FF4848\"> Ignite ON:</font> </b><font color=\"#FFFFFF\">" .. tm .." : "..ts)
else
PrintChat("<font color=\"#A27AFE\"><b>"..enemy.charName.."<font color=\"#FF4848\"> F ON:</font> </b><font color=\"#FFFFFF\">" .. tm .." : "..ts)
end
end
end
end
end