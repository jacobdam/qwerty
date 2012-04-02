class Menu < ActiveRecord::Base
  validates :name, :presence => true, :uniqueness => true
  
  class << self
    def [](name)
      menu = Menu.find_by_name(name)
      menu or raise ActiveRecord::RecordNotFound
    end
  end
end
