# frozen_string_literal: true

module MobileApi
  module V1
    class DashboardService < BaseService
      attr_reader :result, :players

      def initialize(params = {})
        @params = params
        @team_ids = Game.last.team_ids
      end

      def call
        load_players && set_result
      end

      private

      def set_result
        @result = ActiveModelSerializers::SerializableResource.new(players, 
          {each_serializer: MobileApi::V1::TeamSerializer, root: nil} )
      end

      def load_players
        @players = list_team
      end

      def list_team
        ::Team.includes(:users).where(id: @team_ids)
      end
    end
  end
end
