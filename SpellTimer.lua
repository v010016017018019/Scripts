--[[ 개발
function OnLoad()
print(myHero:GetSpellData(SUMMONER_1).name)
print(myHero:GetSpellData(SUMMONER_2).name)
end

function OnTick()
local t = GetInGameTimer()
local ts = t
local tm = 0
if d.currentCd > 0 and os.clock() - dlastMessage > 3 then
ts = ts +d.currentCd
while ts >= 60 do
  tm = tm + 1
  ts = ts - 60
end
local ts = math.floor(ts)
dlastMessage = os.clock()
if d.name == "summonerflash" then
print("<font color=\"#A27AFE\"><b>"..myHero.charName.."<font color=\"#FF4848\"> FALSH ON:</font> </b><font color=\"#FFFFFF\">" .. tm .." : "..ts)
elseif d.name == "summonerdot" then
print("<font color=\"#A27AFE\"><b>"..myHero.charName.."<font color=\"#FF4848\"> Ignite ON:</font> </b><font color=\"#FFFFFF\">" .. tm .." : "..ts)
elseif d.name == "summonerteleport" then
print("<font color=\"#A27AFE\"><b>"..myHero.charName.."<font color=\"#FF4848\"> Teleport ON:</font> </b><font color=\"#FFFFFF\">" .. tm .." : "..ts)
elseif d.name == "summonerheal" then
print("<font color=\"#A27AFE\"><b>"..myHero.charName.."<font color=\"#FF4848\"> HEAL ON:</font> </b><font color=\"#FFFFFF\">" .. tm .." : "..ts)
elseif d.name == "summonerhaste" then
print("<font color=\"#A27AFE\"><b>"..myHero.charName.."<font color=\"#FF4848\"> HASTE ON:</font> </b><font color=\"#FFFFFF\">" .. tm .." : "..ts)
else
print("<font color=\"#A27AFE\"><b>"..myHero.charName.."<font color=\"#FF4848\"> D ON:</font> </b><font color=\"#FFFFFF\">" .. tm .." : "..ts)
end
end
end
--]]

local edlastMessage = 0
local eflastMessage = 0
function OnTick()
for i, enemy in ipairs(GetEnemyHeroes()) do
local ed = enemy:GetSpellData(SUMMONER_1)
local ef = enemy:GetSpellData(SUMMONER_2)
local t = GetInGameTimer()
local ts = t
local tm = 0

if ed.currentCd > 0 and os.clock() - edlastMessage > 3 then
while ts >= 60 do
  tm = tm + 1
  ts = ts - 60
  end
  local ts = math.floor(ts)
  edlastMessage = os.clock()
  if ed.name == "summonerflash" then
print("<font color=\"#A27AFE\"><b>"..enemy.charName.."<font color=\"#FF4848\"> FALSH ON:</font> </b><font color=\"#FFFFFF\">" .. tm .." : "..ts)
elseif ed.name == "summonerdot" then
print("<font color=\"#A27AFE\"><b>"..enemy.charName.."<font color=\"#FF4848\"> Ignite ON:</font> </b><font color=\"#FFFFFF\">" .. tm .." : "..ts)
elseif ed.name == "summonerteleport" then
print("<font color=\"#A27AFE\"><b>"..enemy.charName.."<font color=\"#FF4848\"> Teleport ON:</font> </b><font color=\"#FFFFFF\">" .. tm .." : "..ts)
elseif ed.name == "summonerheal" then
print("<font color=\"#A27AFE\"><b>"..enemy.charName.."<font color=\"#FF4848\"> HEAL ON:</font> </b><font color=\"#FFFFFF\">" .. tm .." : "..ts)
elseif ed.name == "summonerhaste" then
print("<font color=\"#A27AFE\"><b>"..enemy.charName.."<font color=\"#FF4848\"> HASTE ON:</font> </b><font color=\"#FFFFFF\">" .. tm .." : "..ts)
else
print("<font color=\"#A27AFE\"><b>"..enemy.charName.."<font color=\"#FF4848\"> D ON:</font> </b><font color=\"#FFFFFF\">" .. tm .." : "..ts)
end
end

if ef.currentCd > 0 and os.clock() - eflastMessage > 3 then
while ts >= 60 do
  tm = tm + 1
  ts = ts - 60
  end
  local ts = math.floor(ts)
  eflastMessage = os.clock()
  if ef.name == "summonerflash" then
print("<font color=\"#A27AFE\"><b>"..enemy.charName.."<font color=\"#FF4848\"> FALSH ON:</font> </b><font color=\"#FFFFFF\">" .. tm .." : "..ts)
elseif ef.name == "summonerdot" then
print("<font color=\"#A27AFE\"><b>"..enemy.charName.."<font color=\"#FF4848\"> Ignite ON:</font> </b><font color=\"#FFFFFF\">" .. tm .." : "..ts)
elseif ef.name == "summonerteleport" then
print("<font color=\"#A27AFE\"><b>"..enemy.charName.."<font color=\"#FF4848\"> Teleport ON:</font> </b><font color=\"#FFFFFF\">" .. tm .." : "..ts)
elseif ef.name == "summonerheal" then
print("<font color=\"#A27AFE\"><b>"..enemy.charName.."<font color=\"#FF4848\"> HEAL ON:</font> </b><font color=\"#FFFFFF\">" .. tm .." : "..ts)
elseif ef.name == "summonerhaste" then
print("<font color=\"#A27AFE\"><b>"..enemy.charName.."<font color=\"#FF4848\"> HASTE ON:</font> </b><font color=\"#FFFFFF\">" .. tm .." : "..ts)
else
print("<font color=\"#A27AFE\"><b>"..enemy.charName.."<font color=\"#FF4848\"> D ON:</font> </b><font color=\"#FFFFFF\">" .. tm .." : "..ts)
end
end
end
end

  