class InquiryMailer < ApplicationMailer

	def send_mail(inquiry)
	  @inquiry = inquiry
	  mail(
	    from: 'liefe123456@gmail.com',
	    to:   @inquiry.email,
	    subject: 'お問い合わせありがとうございます'
	  )
	end

	def received_mail(inquiry)
		@inquiry = inquiry
		mail(from: 'liefe123456@gmail.com',to: 'bumpk1002@gmail.com',subject: 'お問い合わせがありました')
	end
end
