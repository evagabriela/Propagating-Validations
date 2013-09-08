class Event < ActiveRecord::Base
  validates :title, :presence => {:message => "must be present"}, uniqueness: true 
  validates :organizer_name, :presence => {:message => "must be present"}
   validate :date_is_valid, :email_is_valid

  # :organizer_email, format: { with: /\b[A-Z0-9._%+-]+@[A-Z0-9.-]+\.[A-Z]{2,4}\b/i }, :presence => {:message => "must be present"}
  

end


def date_is_valid
  if date.nil?
    errors.add(:date, "You need to add a date")
  end
end

def email_is_valid
  if organizer_email == " "
    errors.add(:organizer_email, "Cant be empty")
  end
end