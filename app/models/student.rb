class Student < ActiveRecord::Base
  after_create :defaults
  
  def to_s
    self.first_name + " " + self.last_name
  end

  def defaults
    self.update(active: false)
  end 

  def activate
    if self.active
      self.update(active: false)
    else
      self.update(active: true)
    end 
  end 
end