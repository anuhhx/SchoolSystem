class School < ApplicationRecord
  belongs_to :county
  has_many :reviews, dependent: :destroy
  validates :name, presence: true, length: {minimum:5}
  validates :address, presence: true
  validates :grade, presence: true
  validates :phone, presence: true, format: {with: /\d{3}-\d{3}-\d{4}/, message: "please format xxx-xxx-xxxx"}
  validates :website, presence: true, :format => URI::regexp(%w(http https))
  
end
