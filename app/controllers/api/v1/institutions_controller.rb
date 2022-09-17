require 'services/enrollments_service'

module Api
  module V1
    class InstitutionsController < ApplicationController
      def index
        institutions = Institution.all

        render json: {
          status: 'SUCCESS',
          data: institutions
        }, status: :ok
      end

      def show
        institution = Institution.find(params[:id])

        render json: {
          status: 'SUCCESS',
          data: institution
        }, status: :ok
      end

      def create
        institution = Institution.new(institution_params)

        if institution.save
          render json: {
            status: 'SUCCESS',
            data: institution
          }, status: :ok
        else
          render json: {
            status: 'ERROR',
            message: 'Cant create',
            data: institution
          }, status: :unprocessable_entity
        end
      end
      
      def update
        institution = Institution.find(params[:id])

        if institution.update(institution_params)
          render json: {
            status: 'SUCCESS',
            data: institution
          }, status: :ok
        else
          render json: {
            status: 'ERROR',
            message: 'Cant update'
          }, status: :unprocessable_entity
        end
      end

      def destroy
        institution = Institution.find(params[:id])

        institution.destroy

        render json: {
          status: 'SUCCESS',
          data: institution
        }, status: :ok
      end

      private
      def institution_params
        params.require(:institution).permit(:name, :cnpj, :kind)
      end
    end
  end
end