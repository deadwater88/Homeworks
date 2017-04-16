class Demos < ActiveRecord::Base
  belongs_to :house, {
    primary_key: :id,
    foreing_key: :house_id,
    class_name: 'House'
  }
  # def house
  #   House.find(self.id)
  # end
end
