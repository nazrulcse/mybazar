class Bazar < ActiveRecord::Base
  attr_accessible :date, :description, :month, :total, :year
  belongs_to :user
end
