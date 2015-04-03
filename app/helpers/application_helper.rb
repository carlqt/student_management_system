module ApplicationHelper
  def flash_messages(flash)
    binding.pry
    key = flash.keys.first
    Array.wrap flash[key]
  end
end
