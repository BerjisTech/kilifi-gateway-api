# frozen_string_literal: true

module Api
  module V1
    class ApiController < ApplicationController
      before_action :authenticate

      private

      def authenticate
        authenticate_token || render_unauthorized
      end

      def authenticate_token
        authenticate_with_http_token do |token, _options|
          @api_key = ApiKey.find_by(access_token: token)
        end
      end

      def render_unauthorized
        render json: { error: 'Bad credentials' }, status: 401
      end
    end
  end
end
