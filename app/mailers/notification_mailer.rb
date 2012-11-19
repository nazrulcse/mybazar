class NotificationMailer < ActionMailer::Base
  default from: "from@example.com"
  def new_bill(bill)
    user = bill.user
    @bill = bill
    date = Date.today
    month = date.strftime("%B")
    subject = "New Bill Have Generated For Month #{month}."
    mail(:to => user.email, :subject => subject)
  end
end
