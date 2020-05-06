class User < ActiveRecord::Base
  has_secure_password

  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :email, presence: true
  validates :password, presence: true
  validates :password, :length => { :minimum => 3 }
  validates :password_confirmation, presence: true

  def authenticate_with_credentials(email, password)
    if (email == user.email && password == user.password)
      user = User.find_by_email(params[:email])
    else
      nil
    end
  end 
end