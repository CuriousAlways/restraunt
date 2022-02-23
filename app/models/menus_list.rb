class MenusList < ApplicationRecord
  belongs_to :menu 
  belongs_to :listable, polymorphic: true

  def mark_available
    upadate(available: true)
  end

  def mark_unavailable
    upadate(available: false)
  end
end
