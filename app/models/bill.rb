class Bill < ActiveRecord::Base
 attr_accessible :account_id, :house_rent, :gas_bill, :meal, :service, :extra
 MONTH = {"1" => "January", "2" => "January", "3" => "January", "4" => "January", "5" => "January", "6" => "January", "7" => "January", "8" => "January", "9" => "January", "10" => "January", "11" => "January", "12" => "January" }
 belongs_to :account
end
