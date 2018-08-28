class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  validates :auth_token, uniqueness: true
  
  before_create :generate_authentication_token

  def generate_authentication_token
    loop do
      self.auth_token = SecureRandom.base64(64)
      break unless User.find_by(auth_token: auth_token)
    end
  end

  def self.renew_authentication_token(current_user)
    auth_token = ""
    loop do
      auth_token = SecureRandom.base64(64)
      break unless User.find_by(auth_token: auth_token)
    end
    puts('auth token', auth_token)
    current_user.update_attributes(:auth_token => auth_token)
  end
end
