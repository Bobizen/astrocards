class UpdateUserJob < ApplicationJob
  queue_as :default

  def perform
    puts "user.update"
    User.all.each do
      puts "user.update in 1"
    end
  end
end
