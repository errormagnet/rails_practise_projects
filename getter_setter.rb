# frozen_string_literal: true
require_relative 'crud'
# Class of pets
class Pets
  include Crud
  attr_accessor :animal, :breed, :name, :weight, :password

  def initialize(animal, breed, name, weight, password)
    @animal = animal
    @breed = breed
    @name = name
    @weight = weight
    @password = password
  end

  def to_s
    "Animal: #{@animal}, Breed: #{@breed}, Pet Name: #{@name}, Weight: #{@weight}"
  end
end

dobo = Pets.new('Dog', 'Golden Retriever', 'Dobo', '40kg', 'i am groot')

hashed_dobo = dobo.create_hash(dobo.password)
puts hashed_dobo
