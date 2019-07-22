# frozen_string_literal: true

module MobileApi
  module V1
    class PlayerSerializer < ActiveModel::Serializer
      attributes :email, :name, :status
    end
  end
end
