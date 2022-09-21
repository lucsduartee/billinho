module Api
  module V1
    class EnrollmentsController < ApplicationController
      def index
        enrollments = Enrollment.all
        
        render json: {
          status: 'SUCCESS',
          data: enrollments
        }, status: :ok
      end

      def show
        enrollment = Enrollment.find(params[:id])

        render json: {
          status: 'SUCCESS',
          data: enrollment
        }, status: :ok
      end

      def create
        enrollment = EnrollmentsService.create(enrollment_params)

        render json: {
          status: 'SUCCESS',
          data: enrollment
        }, status: :ok
      end
      
      def update
        render json: {
          status: 'NOT_IMPLEMENTED',
        }, status: :not_found
      end

      def destroy
        render json: {
          status: 'NOT_IMPLEMENTED',
        }, status: :not_found
      end

      private
      def enrollment_params
        params
          .require(:enrollment)
          .permit(:course_name, :total_value, :due_date, :bills_quantity, :institution_id, :student_id)
      end
    end
  end
end

