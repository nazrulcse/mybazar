class Account < ActiveRecord::Base
  attr_accessible :month, :paid, :user_id, :year, :bills_attributes
  belongs_to :user
  has_many :bills, :dependent => :destroy
  accepts_nested_attributes_for :bills #, :reject_if => lambda { |a| a[:content].blank? }, :allow_destroy => true
end
