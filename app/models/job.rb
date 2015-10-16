class Job < ActiveRecord::Base
  validates :company, presence: true
  validates :description, presence: true
  validates :title, presence: true
  validates :url, presence: true
end
