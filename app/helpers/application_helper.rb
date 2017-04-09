module ApplicationHelper
  def full_title(page_title = '')
    base_title = "Ruby on Rails Tutorial Sample App"
    if page_title.empty?
      base_title
    else
      page_title + " | " + base_title
    end
  end

  def flash_application flash
    unless flash.empty?
      flash.each do |message_type, message|
        content_tag(:div, message, class: ["alert", "alert-#{message_type}"])
      end
    end
  end
end
