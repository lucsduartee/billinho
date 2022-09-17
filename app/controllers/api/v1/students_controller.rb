module Api
  module V1
    class StudentsController < ApplicationController
      def index
        students = Student.all

        render json: {
          status: 'SUCCESS',
          data: students
        }, status: :ok
      end

      def show
        student = Student.find(params[:id])

        render json: {
          status: 'SUCCESS',
          data: student
        }, status: :ok        
      end

      def create
        student = Student.new(student_params)

        if student.save
          render json: {
            status: 'SUCCESS',
            data: student
          }, status: :ok
        else
          render json: {
            status: 'ERROR',
            message: 'Cant create'
          }, status: :unprocessable_entity
        end
      end
      
      def update
        student = Student.find(params[:id])

        if student.update(student_params)
          render json: {
            status: 'SUCCESS',
            data: student
          }, status: :ok
        else
          render json: {
            status: 'ERROR',
            message: 'Cant update'
          }, status: :unprocessable_entity
        end
      end

      def destroy
        student = Student.find(params[:id])

        student.destroy

        render json: {
          status: 'SUCCESS',
          data: student
        }, status: :ok
      end

      private
      def student_params
        params
          .require(:student)
          .permit(:name, :cpf, :gender, :payment_way, :birthday, :cellphone)
      end
    end
  end
end