class Bill < ActiveRecord::Base
 attr_accessible :account_id, :house_rent, :gas_bill, :meal, :service, :extra
  belongs_to :account
end
