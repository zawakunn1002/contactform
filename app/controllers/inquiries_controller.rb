class InquiriesController < ApplicationController
  def new
  	  @inquiry = Inquiry.new
  end

  def create
  	  @inquiry = Inquiry.new(inquiry_params)
  	  if @inquiry.save
  	  redirect_to root_path
      InquiryMailer.send_mail(@inquiry).deliver
      InquiryMailer.received_mail(@inquiry).deliver

      else
      render "new"

      end

  end

  def inquiry_params
  	  params.require(:inquiry).permit(:name, :email, :message)
  end
end
