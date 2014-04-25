module ApplicationHelper
  
  def flash_class(type)
    case type
    when :alert
      "alert-error"
    when :notice
      "alert-success"
      else
        "type"
    end
  end 
end
