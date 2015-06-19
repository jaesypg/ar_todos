require 'faker'
# require_relative ''

    5.times do
      Task.create :name => Faker::Lorem.sentence,
                  :completed => 0
    end