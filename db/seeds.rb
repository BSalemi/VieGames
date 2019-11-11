 Game.destroy_all 
 System.destroy_all
 Company.destroy_all 



NINTENDO = Company.create(name: "Nintendo")
MICROSOFT = Company.create(name: "Microsoft")
SONY = Company.create(name: "Sony")
SWITCH = System.create(name: "Nintendo Switch", company: NINTENDO)
THREE_DS = System.create(name: "Nintendo 3DS", company: NINTENDO)
XBOX_ONE = System.create(name: "Xbox One", company: MICROSOFT)
PS4 = System.create(name: "Playstation 4", company: SONY)


call_of_duty = Game.create(title: "Call of Duty: Modern Warfare", content_rating: "Mature", company: MICROSOFT, system: XBOX_ONE);

star_wars = Game.create(title: "Star Wars Jedi: Fallen Order", content_rating: "Teen", company: MICROSOFT, system: XBOX_ONE);

nba = Game.create(title: "NBA 2K20", content_rating: "Everyone", company: MICROSOFT, system: XBOX_ONE);

red_dead = Game.create(title: "Red Dead Redemption 2", content_rating: "Mature", company: MICROSOFT, system: XBOX_ONE)

gta = Game.create(title: "Grand Theft Auto V", content_rating: "Mature", company: MICROSOFT, system: XBOX_ONE);

madden = Game.create(title: "Madden NFL 20", content_rating: "Everyone", company: MICROSOFT, system: XBOX_ONE);

need_speed = Game.create(title: "Need for Speed Heat", content_rating: "Teen", company: MICROSOFT, system: XBOX_ONE);

fortnite = Game.create(title: "Fortnite: Darkfire Bundle", content_rating: "Teen", company: MICROSOFT, system: XBOX_ONE);

rage = Game.create(title: "Rage 2", content_rating: "Mature", company: MICROSOFT, system: XBOX_ONE);

black_ops = Game.create(title: "Call of Duty: Black Ops 4", content_rating: "Mature", company: MICROSOFT, system: XBOX_ONE)

borderlands = Game.create(title: "Borderlands 3", content_rating: "Mature", company: MICROSOFT, system: XBOX_ONE);

fifa = Game.create(title: "FIFA 20", content_rating: "Everyone", company: MICROSOFT, system: XBOX_ONE);

sekiro = Game.create(title: "Sekiro: Shadows Die Twice", content_rating: "Mature", company: MICROSOFT, system: XBOX_ONE);

tom_clancy = Game.create(title: "Tom Clancy's Ghost Recon Breakpoint", content_rating: "Mature", company:MICROSOFT, system: XBOX_ONE);

gears = Game.create(title: "Gears 5", content_rating: "Mature", company: MICROSOFT, system: XBOX_ONE)

pokemon = Game.create(title: "Pokemon Sword", content_rating: "Everyone", company: NINTENDO, system: SWITCH);

luigi = Game.create(title: "Luigi's Mansion 3", content_rating: "Everyone", company: NINTENDO, system: SWITCH);

olympic = Game.create(title: "Mario and Sonic at the Olympic Games Tokyo 2020", content_rating: "Everyone", company: NINTENDO, system: SWITCH);

smash = Game.create(title: "Super Smash Bros. Ultimate", content_rating: "Everyone 10 & Up", company: NINTENDO, system: SWITCH);

ritual = Game.create(title: "Bloodstained: Ritual of the Night", content_rating: "Teen", company: NINTENDO, system: SWITCH);

botw = Game.create(title: "The Legend of Zelda: Breath of the Wild", content_rating: "Everyone 10 & Up", company: NINTENDO, system: SWITCH);

mario_kart = Game.create(title: "Mario Kart 8 Deluxe", content_rating: "Everyone", company: NINTENDO, system: SWITCH);

odyssey = Game.create(title: "Super Mario Odyssey", content_rating: "Everyone 10 & Up", company: NINTENDO, system: SWITCH);

pkmn = Game.create(title: "Pokemon Shield", content_rating: "Everyone", company: NINTENDO, system: SWITCH);

ring = Game.create(title: "Ring Fit Adventure", content_rating: "Everyone 10 & Up", company: NINTENDO, system: SWITCH);

mario_maker = Game.create(title: "Super Mario Maker 2", content_rating: "Everyone", company: NINTENDO, system: SWITCH);

fire_emblem = Game.create(title: "Fire Emblem: Three Houses", content_rating: "Teen", company: NINTENDO, system: SWITCH);

marvel = Game.create(title: "Marvel Ultimate Alliance 3: The Black Order", content_rating: "Teen", company: NINTENDO, system: SWITCH);

splatoon = Game.create(title: "Splatoon 2", content_rating: "Everyone 10 & Up", company: NINTENDO, system: SWITCH);

mk_11 = Game.create(title: "Mortal Kombat 11", content_rating: "Mature", company: NINTENDO, system: SWITCH);

skyrim = Game.create(title: "The Elder Scrolls V: Skyrim", content_rating: "Mature", company: NINTENDO, system: SWITCH);

diablo = Game.create(title: "Diablo III Eternal Collection", content_rating: "Mature", company: NINTENDO, system: SWITCH);

yoshi = Game.create(title: "Yoshi's Crafted World", content_rating: "Everyone", company: NINTENDO, system: SWITCH);

moon = Game.create(title: "Pokemon Ultra Moon", content_rating: "Everyone", company: NINTENDO, system: THREE_DS);

fates = Game.create(title: "Fire Emblem Fates: Conquest", content_rating: "Teen", company: NINTENDO, system: THREE_DS);

kirby = Game.create(title: "Kirby's Extra Epic Yarn", content_rating: "Everyone", company: NINTENDO, system: THREE_DS);

yokai = Game.create(title: "Yokai Watch 3", content_rating: "Teen", company: NINTENDO, system: THREE_DS);

etrian = Game.create(title: "Etrian Odyssey Nexus", content_rating: "Teen", company: NINTENDO, system: THREE_DS);

super_mario = Game.create(title: "Super Mario 3D Land", content_rating: "Everyone", company: NINTENDO, system: THREE_DS);

animal_crossing = Game.create(title: "Animal Crossing: New Leaf", content_rating: "Everyone", company: NINTENDO, system: THREE_DS);

tomodatchi = Game.create(title: "Tomodatchi Life", content_rating: "Everyone", company: NINTENDO, system: THREE_DS);

metroid = Game.create(title: "Metroid: Samus Returns", content_rating: "Everyone 10 & Up", company: NINTENDO, system: THREE_DS);

persona = Game.create(title: "Persona Q2: New Cinema Labyrinth", content_rating: "Mature", company: NINTENDO, system: THREE_DS);

jake_hunter = Game.create(title: "Jake Hunter Detective Story: Ghost of the Dusk", content_rating: "Teen", company: NINTENDO, system: THREE_DS);

wario = Game.create(title: "WarioWare Gold", content_rating: "Everyone 10 & Up", company: NINTENDO, system: THREE_DS);

toad = Game.create(title: "Captain Toad: Treasure Tracker", content_rating: "Everyone", company: NINTENDO, system: THREE_DS);

radiant = Game.create(title: "Radiant Historia: Perfect Chronology", content_rating: "Teen", company: NINTENDO, system: THREE_DS);

the_alliance = Game.create(title: "The Alliance Alive", content_rating: "Everyone 10 & Up", company: NINTENDO, system: THREE_DS);

control = Game.create(title: "Control", content_rating: "Mature", company: SONY, system: PS4);

persona_5 = Game.create(title: "Persona 5", content_rating:"Mature", company: SONY, system: PS4);

nier = Game.create(title: "NieR Automata: Game of the Yohra", content_rating: "Mature", company: SONY, system: PS4);

we_happy = Game.create(title: "We Happy Few", content_rating: "Mature", company: SONY, system: PS4);

dead_cells = Game.create(title: "Dead Cells", content_rating: "Mature", company: SONY, system: PS4);

no_mans = Game.create(title: "No Man's Sky", content_rating: "Teen", company: SONY, system: PS4);

bendy = Game.create(title: "Bendy and the Ink Machine", content_rating: "Teen", company: SONY, system: PS4);

shadow = Game.create(title: "Shadow of the Colossus", content_rating: "Teen", company: SONY, system: PS4);

ac_odyssey = Game.create(title: "Assassin's Creed Odyssey", content_rating: "Mature", company: SONY, system: PS4);

pillars = Game.create(title: "Pillars of Eternity II: Deadfire", content_rating: "Mature", company: SONY, system: PS4);

rpg_maker = Game.create(title: "RPG Maker MV", content_rating: "Everyone 10 & Up", company: SONY, system: PS4);

doom = Game.create(title: "Doom Eternal", content_rating: "Mature", company: SONY, system: PS4);

mlb = Game.create(title: "MLB The Show 20", content_rating: "Everyone", company: SONY, system: PS4);

darksiders = Game.create(title: "Darksiders: Genesis", content_rating: "Teen", company: SONY, system: PS4);

life_is_strange = Game.create(title: "Life is Strange 2", content_rating: "Mature", company: SONY, system: PS4)




