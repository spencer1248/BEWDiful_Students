class TwilioController < ApplicationController
  def sms
    body = params["Body"]

    TextMessage.create(body: body)

    render nothing: true
  end
end