class User < ApplicationRecord
    
  validates :email, uniqueness: true, presence: true
  validate :valid_email_format?
  validates :password_digest, presence:true
  validates :password, length: {minimum: 6, allow_nil:true}
  after_initialize :ensure_session_token

  has_many :profiles,
    foreign_key: :user_id,
    class_name: :Profile

  def self.find_by_credentials(email, password)
      user = User.find_by(email: email)
      if user && user.is_password?(password)
          return user
      else
          return nil
      end
  end

  def is_password?(password)
      password_object = BCrypt::Password.new(self.password_digest)
      password_object.is_password?(password)
  end

  def password
      @password
  end

  def password=(password)
      @password = password
      self.password_digest = BCrypt::Password.create(password)
  end

  def ensure_session_token
      self.session_token ||= SecureRandom::urlsafe_base64
  end

  def reset_session_token!
      self.session_token = SecureRandom::urlsafe_base64
      self.save!
      return self.session_token
  end

  private

  def valid_email_format?
    errors.add(:email, 'is invalid') unless /[a-z][a-z._]*@[a-z]+\.[a-z]{2,4}/.match(email)
  end

end
