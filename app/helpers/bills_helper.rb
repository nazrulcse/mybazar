module BillsHelper
  def total(bill)
    if(!bill.nil?)
      total = bill.house_rent.to_i + bill.gas_bill.to_i + bill.meal.to_i + bill.service.to_i + bill.extra.to_i
    else
      0
    end
  end
end
