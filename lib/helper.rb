class Helper

  def render_line
    puts "~"*80
  end
  
  def render_message(message)
    render_line
    puts message
    render_line
  end

  def render_techno_error
      render_message(Rainbow("/!\\ You have to puts technologie prefixed by @").background("#EA1B00"))
  end

  def render_action_error
      render_message(Rainbow("/!\\ Unknow :action").background("#EA1B00"))
  end
end