# frozen_string_literal: true

module MobileApi
  module V1
    class ApiController < ApplicationController
      before_action :authenticate_v1_user!
    end
  end
end
