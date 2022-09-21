module Api
  module V1
    class BillsController < ApplicationController
      def index
        bills = Bill.all

        render json: {
          status: 'SUCCESS',
          data: bills
        }, status: :ok
      end

      def show
        bill = Bill.find(params[:id])

        render json: {
          status: 'SUCCESS',
          data: bill
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
      def bill_params
        params.require(:bill).permit(:value, :due_date)
      end
    end
  end
end