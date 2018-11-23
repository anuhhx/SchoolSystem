class School < ApplicationRecord
  belongs_to :county
  validates :name, presence: true, length: {minimum:5}
  validates :address, presence: true
  validates :grade, presence: true, lenth: {minimum:4}
  validates :phone, presence: true, format: {with: /\d{3}-\d{3}-\d{4}/, message: "please format xxx-xxx-xxxx"}
  validates :website, presence: true, :format => URI::regexp(%w(http https))
end
