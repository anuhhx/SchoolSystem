class County < ApplicationRecord
    validates :name, presence: true
end
