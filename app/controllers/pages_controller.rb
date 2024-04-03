class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home, :privacy_statement ]

  def home
    client = OpenAI::Client.new
    @response = client.chat(
      parameters: {
        model: "gpt-3.5-turbo",
        messages: [
          { role: "user", content: "can you tell me what happened in space exploration on August 12, 1981, it the user's birthday date, user is a kid, adapt the response according to kid of 10years old ?" }
        ],
        temperature: 0.7
      }
    ).dig("choices", 0, "message", "content")
  end

  def privacy_statement
  end

end
