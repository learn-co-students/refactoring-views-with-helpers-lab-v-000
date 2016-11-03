require 'pry'

module ApplicationHelper
 
  def last_updated(object)
    object.updated_at.strftime("Last updated %A, %b %e, at %l:%M %p")
  end
end