module FlashHelper

  def flash_messages
    flash_messages = []
    flash.each do |type, message|
      # Skip empty messages, e.g. for devise messages set to nothing in a locale file.
      next if message.blank?
      
      type = type.to_sym
      type = :info if type == :notice
      type = :warning  if type == :alert
      type = :error  if type == :danger

      tag_options = {
        class: "ui small #{type} message"
      }

      close_button = content_tag(:i, nil, class: "close icon")

      Array(message).each do |msg|
        text = content_tag(:div, close_button + msg, tag_options)
        flash_messages << text if msg
      end
    end
    flash_messages.join("\n").html_safe
  end
end
