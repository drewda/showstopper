module ApplicationHelper
  # borrowed from https://github.com/jellybob/activo-rails/blob/master/lib/activo/rails/helper.rb
  def page_title(title)
    title
  end
  
  # Display an icon
  # 
  # name - The icon to display
  # size - One of :small or :large (optional)
  # options - A hash to be passed to the image_tag helper (optional)
  # 
  # Example:
  #   icon("add")
  #   # => image_tag("/images/icons/16x16/add.png", :alt => "Add")
  #   icon("new_item", :large)
  #   # => image_tag("/images/icons/32x32/new_item.png, :alt => "New Item")
  #   
  # Returns an image tag, ready to be displayed in a template.
  def icon(name, size = :small, options = {})
    return "" if name.nil?
    
    dimension = ( (size == :small) ? "16" : "32" ).html_safe
    options[:alt] ||= name.capitalize.gsub("_", " ")
    
    image_tag("/images/activo/icons/#{dimension}x#{dimension}/#{name}.png", {
      :alt => options[:alt]
    })
  end
end
