# require_relative 'scene_util'
# require_relative 'title/director'
#require_relative 'fishGame/director'
# require_relative 'scene2/director'
# require_relative 'ending/director'

# Scene.add_scene(Title::Director.new,  :title)
#Scene.add_scene(FishGame::Director.new,  :fishgame)
require_relative 'scene_utility'
require_relative 'planktonGame/director'
# require_relative 'scene1/director'
# require_relative 'scene2/director'
# require_relative 'ending/director'

Scene.add_scene(Planktongame::Director.new,  :planktongame)
# Scene.add_scene(Scene1::Director.new,  :scene1)
# Scene.add_scene(Scene2::Director.new,  :scene2)
# Scene.add_scene(Ending::Director.new,  :ending)
