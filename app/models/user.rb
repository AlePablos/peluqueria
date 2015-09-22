class User < ActiveRecord::Base

  belongs_to :profile
  has_secure_password

  enum sex: [:female, :male]
  enum profile: [:user, :admin]

  validates :first_name, presence: {message: "El nombre es obligatorio"}
  validates :last_name, presence: {message: "El apellido es obligatorio"}
  validates :phone, presence: {message: "El telefono es obligatorio"}
  validates :email, uniqueness: true, presence: {message: "Este mail ya esta siendo usado o el formato es erroneo"}
  validates :password_digest, presence: {message: "La contraseña es obligatoria"}

end
