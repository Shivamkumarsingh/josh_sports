# frozen_string_literal: true

module MobileApi
  module V1
    class BaseService
      include ActiveModel::Validations
      attr_reader :result
    end
  end
end
