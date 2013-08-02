class User < ActiveRecord::Base
  has_secure_password

  has_many :people
  has_many :timers

  belongs_to :person, dependent: :destroy

end
