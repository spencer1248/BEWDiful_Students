class PhotosController < ApplicationController
  def tag
    @tag = params[:tag]

    tag_recent_media = Instagram.tag_recent_media(@tag)

    @image_urls = tag_recent_media.map { |media_item| media_item.images.thumbnail.url }
  end

  def twilio
    last_text_message = TextMessage.order('created_at DESC').first

    @tag = last_text_message.body
   
    tag_recent_media = Instagram.tag_recent_media(@tag)

    @image_urls = tag_recent_media.map { |media_item| media_item.images.thumbnail.url }

    render 'tag'
  end
end