class Project < ActiveRecord::Base
  belongs_to :category
  has_many :notes
  has_many :tasks
  has_many :goals
end
