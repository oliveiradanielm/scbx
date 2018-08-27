ActionView::Base.field_error_proc = Proc.new do |html_tag, instance|
  html = %(<div class="field_with_errors">#{html_tag}</div>).html_safe

  form_fields = [
    'textarea',
    'input',
    'select'
  ]

  elements = Nokogiri::HTML::DocumentFragment.parse(html_tag).css "label, " + form_fields.join(', ')

  elements.each do |e|
    if e.node_name.eql? 'label'
      html = %(<div class="field error">#{e}</div>).html_safe
    elsif form_fields.include? e.node_name
      if instance.error_message.kind_of?(Array)
        # html = %(<div class="ui form field error">#{html_tag}<div class="ui error message"><p>#{instance.error_message&.first}</p></div></div>).html_safe
        html = %(<div class="ui form field error">#{html_tag}</div>).html_safe
      else
        # html = %(<div class="ui form field error">#{html_tag}<div class="ui error message"><p>#{instance.error_message&.first}</p></div></div>).html_safe
        html = %(<div class="ui form field error">#{html_tag}</div>).html_safe
      end
    end
  end
  html
end
