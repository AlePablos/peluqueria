class User < ActiveRecord::Base
  has_many :appointments
  has_secure_password

  enum sex: [:female, :male]
  enum profile: [:user, :admin]

  validates :first_name, presence: {message: "El nombre es obligatorio"}
  validates :last_name, presence: {message: "El apellido es obligatorio"}
  validates :phone, presence: {message: "El telefono es obligatorio"}
  validates :email, uniqueness: true, presence: {message: "Este mail ya esta siendo usado o el formato es erroneo"}
  validates :password_digest, presence: {message: "La contraseña es obligatoria"}

  before_save :ensure_has_logged_time

  def ensure_has_logged_time
    self.last_logged ||= DateTime.now
  end

  def full_name
    "#{first_name} #{last_name}"
  end

  def reset_pass
    update_attributes(password: "1234")
  end

  def self.clean
    User.where("last_logged < ?", DateTime.now - 1.year).destroy_all
  end
end
