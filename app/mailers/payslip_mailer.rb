# frozen_string_literal: true

class PayslipMailer < ApplicationMailer
  default from: 'subhams914@gmail.com'
  layout 'mailer'

  def send_payslip(pdf, file_name)
    attachments[file_name] = pdf
    mail(to: 'shubham.singh@complitech.net', subject: 'Payslip')
  end
end
