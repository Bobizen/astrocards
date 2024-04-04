class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_one_attached :avatar


  # Validation for mandatory acceptance of privacy statement
  validates :privacy_statement, acceptance: true


  # Custom validation for password complexity
  validate :password_complexity

  private

  def password_complexity
    return unless password.present? && !password.match(/^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[\W\_]).{8,}$/)

    errors.add :password, 'must include at least one lowercase letter, one uppercase letter, one digit, and one special character'
  end
end
