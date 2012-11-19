module BillsHelper
  def total(bill)
    if(!bill.nil?)
      total = bill.house_rent + bill.gas_bill + bill.meal + bill.service + bill.extra
    else
      0
    end
  end
end
