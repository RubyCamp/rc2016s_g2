require_relative 'scene_utility'
require_relative 'plankton-game/director'
# require_relative 'scene1/director'
# require_relative 'scene2/director'
# require_relative 'ending/director'

Scene.add_scene(Planktongame::Director.new,  :planktongame)
# Scene.add_scene(Scene1::Director.new,  :scene1)
# Scene.add_scene(Scene2::Director.new,  :scene2)
# Scene.add_scene(Ending::Director.new,  :ending)
