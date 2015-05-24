class Helper

  def render_line
    puts "~"*80
  end
  
  def render_message(message)
    render_line
    puts message
    render_line
  end

  def render_success_message(message)
    render_message(Rainbow(message).background("#046831"))
  end

  def render_question_message(message)
    render_message(Rainbow(message).background("#CE4900"))
  end

  def render_inform_message(message)
    render_message(Rainbow(message).background("#065AB9"))
  end

  def render_alert_message(message)
    render_message(Rainbow(message).background("#EA1B00"))
  end

  def render_techno_error
      render_alert_message("/!\\ You have to puts technologie prefixed by @")
  end

  def render_action_error
      render_alert_message("/!\\ Unknow :action")
  end

  def render_keyword_error
    render_alert_message("/!\\ Unknown Keyword")
  end
end