class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  has_many :attempts
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  def user_name
  	self.email.split('@').first
  end

  def max_score
  	self.attempts.maximum(:score)
  end

  def attempt_count
  	self.attempts.length
  end

  def mean_score
  	self.attempts.average(:score).to_f.round(2)
  end
end
