class Stadium < ApplicationRecord
  has_many :teams

  def self.order_by
    self.order(created_at: :desc)
  end
  
end