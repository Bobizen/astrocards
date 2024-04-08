class UpdateUserJob < ApplicationJob
  queue_as :default

  def perform
    puts "user.update"
    User.all.each do |user|
      puts "user.update in 1 #{user.email}"
    end
  end
end
