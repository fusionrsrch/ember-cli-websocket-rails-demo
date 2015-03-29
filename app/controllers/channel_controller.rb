class ChannelController < ApplicationController

    def public

        WebsocketRails[:public_channel].trigger(:test_event, { message: 'This is a message from WebSocket Rails' } )

        channel = {}
        render json: channel, status: 200
    end

    def private

        WebsocketRails[:private_channel].trigger(:test_event, { message: 'This is a message from WebSocket Rails' } )

        channel = {}
        render json: channel, status: 200
    end
end
