# frozen_string_literal: true

# Crud module
module Crud
  require 'bcrypt'

  def create_hash(password)
    BCrypt::Password.create(password)
  end

  def verify_hash(password)
    BCrypt::Password.new(password)
  end

  def create_secure_users(users_record)
    users_record.each do |user|
      user[:password] = create_hash(user[:password])
    end
    users_record
  end

  def authenticate_user(user_name, password, secure_record)
    secure_record.each do |user|
      return user if verify_hash(user[:password]) == password && user_name == user[:name]
    end
    'Credentials not found'
  end
end
