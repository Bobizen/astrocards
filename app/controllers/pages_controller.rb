class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home, :privacy_statement ]

  def home
    if user_signed_in?
      user = User.find(current_user.id)
      client = OpenAI::Client.new
      @response = client.chat(
        parameters: {
          model: "gpt-3.5-turbo",
          messages: [
            { role: "user", content: "can you tell me what happened in space exploration on #{user.birthdate}, which correspond to the date of birth of the user, who is a kid. Adapt the response according to kid of 10 year old and in no more than 40 words ?"}
          ],
          temperature: 0.7
        }
      ).dig("choices", 0, "message", "content")
    end
  end

  def privacy_statement
  end

end
