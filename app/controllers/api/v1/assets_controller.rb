module Api
  module V1
    class AssetsController < ApplicationController
      def create
        @asset = current_user.assets.create!(asset_params.slice(:name, :file))
        render 'show'
      end

      def show
        @asset = Asset.find(asset_params['id'])
      end

      def index
        @assets = Asset.all
      end

      private

      def asset_params
        params.permit(:id, :name, :file)
      end
    end
  end
end