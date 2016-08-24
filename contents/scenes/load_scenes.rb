require_relative 'scene_utility'
require_relative 'opening/director'
require_relative 'fishGameBefore/director'
require_relative 'fishGame/director'
require_relative 'birdGameBefore/director'
require_relative 'ending/director'
require_relative 'planktonGame/director'
require_relative 'planktonGame/eating'
require_relative 'birdGame/director'

Scene.add_scene(Title::Director.new,  :title)
Scene.add_scene(PlanktonGame::Director.new,  :planktongame)
Scene.add_scene(Eating::Director.new,  :eating)
Scene.add_scene(Scene1::Director.new,  :scene1)
Scene.add_scene(FishGame::Director.new,  :fishgame)
Scene.add_scene(Scene2::Director.new,  :scene2)
Scene.add_scene(BirdGame::Director.new,  :birdgame)
Scene.add_scene(Ending::Director.new,  :ending)
