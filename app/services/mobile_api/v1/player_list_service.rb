# frozen_string_literal: true

module MobileApi
  module V1
    class PlayerListService < BaseService
      attr_reader :result, :players

      def initialize(params = {})
        @params = params
      end

      def call
        load_players && set_result
      end

      private

      def set_result
        # binding.pry
        @result = ActiveModelSerializers::SerializableResource.new(players, 
          {each_serializer: MobileApi::V1::PlayerSerializer, root: nil} )
      end

      def serializer_class
        MobileApi::V1::PlayerSerializer 
      end

      def load_players
        @players = list_players
      end

      def list_players
        ::User.all.order(created_at: :desc)
      end
    end
  end
end
