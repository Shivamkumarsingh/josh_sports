# frozen_string_literal: true

module MobileApi
  module V1
    class TeamMemberSerializer < ActiveModel::Serializer
      attributes :name, :id
      belongs_to :team
    end
  end
end
