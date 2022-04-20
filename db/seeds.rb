# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
require 'faker'

# Instruction.destroy_all
def seed_instructions 
    30.times do |count|
        instruction = Instruction.create(title: "Instruction: #{Faker::IDNumber.valid}")
    end 
    seed_repairs()
end

def seed_repairs
    Instruction.all.each_with_index do |element, index|
        7.times do |count|
            repair = element.repairs.create(title: "Repair: #{element.title} #{count + 1}", description: Faker::Lorem.paragraph(sentence_count: 2))
        end 
    end 
    seed_steps()
end 

def seed_steps 
    Repair.all.each_with_index do |element, index|
        5.times do |count|
            step = element.steps.create(title: "Step: #{element.title}.#{count + 1}", description: Faker::Lorem.paragraph(sentence_count: 2)) 
        end 
    end 
end 

seed_instructions()

# repair = instruction.repairs.create(title: instruction.title + " #{count}", description: Faker::Lorem.sentence)
# repair.steps.create(title: repair.title + " #{count}", description: Faker::Lorem.paragraph(sentence_count: 2) )

