module MobileApi
  module V1
    class UsersController < ApiController
      def player_list
        service = MobileApi::V1::PlayerListService.new(params)
        service.call
        render json: {data: service.result}
      end
    end
  end
end
