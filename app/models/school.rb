class School < ApplicationRecord
  belongs_to :county
  has_many :reviews
  end
