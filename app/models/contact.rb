class Contact < ApplicationRecord
  
validates :first_name, presence: true
validates :last_name, presence: true
belongs_to :user


  def friendly_created_at
    created_at.strftime("%m/%d/%Y")
  end

  def full_name
    "#{first_name} #{middle_name} #{last_name}"
  end

  def japanese_phone_number
    "+81 #{phone_number}"
  end


end
