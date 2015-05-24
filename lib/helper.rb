class Helper
  
  def render_message(message)
      puts ""
      puts message
      puts ""
  end

  def render_techno_error
      render_message(Rainbow("/!\\ You have to puts technologie prefixed by @").background("#EA1B00"))
  end

  def render_action_error
      render_message(Rainbow("/!\\ Unknow :action").background("#EA1B00"))
  end
  
end