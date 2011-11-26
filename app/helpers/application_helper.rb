module ApplicationHelper
  # Return a title on a per-page basis.
  def title
    base_title = "Daria Kronberg "
    if @title.nil?
      base_title
    else
      "#{base_title} | #{@title}"
    end
  end

  def mainmenu
    pages = {
      "Work" => root_path,
      "About" => about_path,
      "Photo" => photo_path,
      "Follow" => follow_path,
      "Contacts" => contacts_path
    }
    pages.map do |key, value|
      classnames = "selected" if current_page?(value)
      link_to value, :class => classnames do
        raw "<span>#{key}</span>"
      end
    end
  end
end
