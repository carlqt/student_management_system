module ApplicationHelper
  def flash_messages(flash)
    key = flash.keys.first
    flash[key]
  end
end
