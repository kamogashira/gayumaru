class InquiryController < ApplicationController
  def index
    @inquiry = Inquiry.new
  end

  def confirm
    # 入力値のチェック
    @inquiry = Inquiry.new(inquiry_params)
    # NG。入力画面を再表示
    if @inquiry.invalid?
      render 'index'
    end
  end

  def thanks
    # メール送信
    @inquiry = Inquiry.new(inquiry_params)
    InquiryMailer.received_email(@inquiry).deliver
  end

  private
  def inquiry_params
    params.require(:inquiry).permit(:name, :name_kana, :tel, :email, :message)
  end
end
