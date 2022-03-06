class ParkMessagesController < ApplicationController
  def index
    @park = Park.find(params[:park_id])
    @park_messages = @park.park_messages.order(:created_at)
    @park_message = ParkMessage.new
  end

  def create
    @park = Park.find(params[:park_id])
    @message = ParkMessage.new(message_params)
    @message.park = @park
    @message.user = current_user
    if @message.save
      ChatroomChannel.broadcast_to(
        @park,
        render_to_string(partial: "message", locals: { message: @message })
      )
      head :ok
    else
      render "park_messages/index"
    end
  end

  private

  def message_params
    params.require(:park_message).permit(:message)
  end
end
