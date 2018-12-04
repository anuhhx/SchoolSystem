class County < ApplicationRecord
    has_many :schools, dependent: :destroy
    validates :name, presence: true, length: {minimum:5}
    
end
