class House < ActiveRecord::Base
  # def cats
  #   Cat.where(house_id: self.id)
  # end

  has_many :demos,
    primary_key: :id,
    foreign_key: :house_id,
    class_name: 'Demo'
end
