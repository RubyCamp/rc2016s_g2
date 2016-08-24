require_relative 'scene_utility'
require_relative 'opening/director'
require_relative 'fish-game-before/director'
require_relative 'fishGame/director'
require_relative 'bird-game-before/director'
require_relative 'ending/director'
require_relative 'planktonGame/director'

Scene.add_scene(Title::Director.new,  :title)
Scene.add_scene(Planktongame::Director.new,  :planktongame)
Scene.add_scene(Scene1::Director.new,  :scene1)
Scene.add_scene(FishGame::Director.new,  :fishgame)
Scene.add_scene(Scene2::Director.new,  :scene2)
#bard
Scene.add_scene(Ending::Director.new,  :ending)
