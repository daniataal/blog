class User < ApplicationRecord
  enum role: { User: 0, Admin: 1 }
  
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :articles

  def username
    return self.email.split('@')[0].capitalize
end
end