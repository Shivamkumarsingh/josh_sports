# frozen_string_literal: true

module MobileApi
  module V1
    class TeamSerializer < ActiveModel::Serializer
      attributes :name, :players


      def players
        object.users.map do |player|
          TeamMemberSerializer.new(player).attributes
        end
      end
    end
  end
end
