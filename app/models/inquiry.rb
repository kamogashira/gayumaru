class Inquiry
  include ActiveModel::Model

  attr_accessor :name, :name_kana, :tel, :email, :message
  VALID_EMAIL_REGEX = /\A[a-zA-Z0-9.!#$%&'*+\/=?^_`{|}~-]+@[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,61}[a-zA-Z0-9])?(?:\.[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,61}[a-zA-Z0-9])?)*\Z/
  # 電話番号(ハイフンなし10桁or11桁)
  VALID_PHONE_REGEX = /\A\d{10,11}\z/

  validates :name, presence: {message: '名前を入力してください'}
  validates :name_kana, presence: {message: 'ふりがなを入力してください'}
  validates :email, presence: {message: 'メールアドレスを入力してください'}, 
                    format: { with: VALID_EMAIL_REGEX, message: '無効なメールアドレスです' }
  validates :tel, format: { with: VALID_PHONE_REGEX, message: '電話番号はハイフンなし10桁or11桁で入力してください', allow_blank: true  }
end