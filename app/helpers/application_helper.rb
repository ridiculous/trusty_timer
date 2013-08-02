module ApplicationHelper

  def flash_box(the_type, the_prefix, msg)
    Array(msg).concat(Array("<b>#{the_prefix}</b>")).reverse.join(' ').html_safe
  end

  def flash_message_helper
    if request.flash.any?
      flash_type = request.flash.to_hash.keep_if { |key, val| val.present? }.keys.first
      flash_body = request.flash.discard.collect { |k, msg| msg }
      flash_prefix = if flash_body.first.is_a?(Array)
                       flash_body.first.shift
                     elsif flash_type == :notice
                       'Success!'
                     else
                       'Oops!'
                     end
      flash_box(flash_type, flash_prefix, flash_body)
    end
  end

  def app_links
    links = []
    if current_user
      links << ['Timers', timers_path]
      links << [current_user.person.name, edit_person_path(current_user.person)]
      links << ['Log out', bye_path, method: :delete]
    else
      links << ['Sign up', new_user_path]
    end
    links
  end

end
