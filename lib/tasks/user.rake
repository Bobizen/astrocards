namespace :user do
  desc "Enrich all users with Clearbit (async)"
  task update_all: :environment do
    puts "Enqueuing update of #{users.size} users..."
      UpdateUserJob.perform_later

    # rake task will return when all jobs are _enqueued_ (not done).
  end
end
