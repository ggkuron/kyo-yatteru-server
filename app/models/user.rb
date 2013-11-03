class User < ActiveRecord::Base
  attr_accessible :email, :name, :password, :password_confirmation
  has_secure_password
  has_many :relations, foreign_key: "user_id", dependent: :destroy
  has_many :followed_shops, through: :relations, source: :followed

  #before_save{|user| user.email = email.downcase}
  before_save{email.downcase!}
  before_save :create_remember_token
  before_validation :set_dummy_password
  validates :name, presence: true, length:{maximum: 50}
  VALID_EMAIL_REGEX= /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence:true, format:{with:VALID_EMAIL_REGEX},
            uniqueness:{case_sensitive: false}
  validates :password, presence: true, length:{minimum:6}

  validates :password_confirmation, presence:true

  DUMMY_PASSWORD = 'DUMMY'
  def set_dummy_password
    if self.password_digest.blank?
      self.password_digest = DUMMY_PASSWORD
    end
  end


  private
  def create_remember_token
    self.remember_token = SecureRandom.urlsafe_base64
  end
end