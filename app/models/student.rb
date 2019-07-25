class Student < ApplicationRecord
    belongs_to :instructor

    validates :name, presence: true
    validates :age, presence: true, numericality: { greater_than: 18 }
end
