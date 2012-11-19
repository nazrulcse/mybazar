module BillsHelper
  def total(bill)
    total = bill.house_rent + bill.gas_bill + bill.meal + bill.service + bill.extra
  end
end
