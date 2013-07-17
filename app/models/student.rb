# == Schema Information
#
# Table name: students
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  house_id   :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Student < ActiveRecord::Base
  attr_accessible :name, :house_id, :spell_ids, :password, :password_confirmation
  belongs_to :house
  # has_secure_password
  has_and_belongs_to_many :spells
  attr_accessor :password
  before_save :encrypt_password
    validates :password, confirmation: true
    validates :password, presence: true, on: :create
    validates :name, presence: true
    validates :name, uniqueness: true

  #   # Allows mass assignment of these

  #   # I can only call this with
  #   # u = User.first
  #   # u.encrypt_password
    def encrypt_password
      if password.present?
        # This generates a random string that helps me encrypt the password
        self.password_salt = BCrypt::Engine.generate_salt

        # This encrypts the password, using the salt we just created
        self.password_hash = BCrypt::Engine.hash_secret(password, password_salt)
      end
    end

  #   # I can call this with User.authenticate(l,p)
    def self.authenticate(name, password)
      # This will auth a user
      student = Student.find_by_name(name)
      if student && student.password_hash == BCrypt::Engine.hash_secret(password, student.password_salt)
        student
      else
        nil
      end
    end
end
