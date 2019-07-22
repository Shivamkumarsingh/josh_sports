module MobileApi
  module V1
    class DashboardController < ApiController
      def team_members
        service = MobileApi::V1::DashboardService.new(params)
        service.call
        render json: {data: service.result}
      end
    end
  end
end