class User < ApplicationRecord
  validates_presence_of :name, :email, :password

  def self.authenticate(email, password)
    if User.find_by(email: email) && User.find_by(password: password)
      session[:current_user_id] = user.id
      redirect_to("/login")
    else
      nil
  end
end
