# frozen_string_literal: true

class ApplicationMailer < ActionMailer::Base
  default from: 'subhams914@gmail.com'
  layout 'mailer'
  def send_payslip
    attachments['payslip.pdf'] = File.read('public/payslip.pdf')
    mail(to: 'nik@complitech.us', subject: 'Payslip')
  end
end
