module SceneUtil
  private

  def set_timer(sec)
    @timer = sec * 60
  end

  def count_down(scene = nil)
    return false unless @timer
    @timer -= 1
    if @timer <= 0
      if scene
        Scene.set_current_scene(scene)
      else
        exit
      end
    end
  end

end
