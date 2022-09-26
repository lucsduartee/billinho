require 'swagger_helper'

RSpec.describe 'api/v1/bills', type: :request do

  path '/api/v1/bills' do

    get('Lista as faturas') do
      tags 'Faturas'
      produces 'application/json'

      response(200, 'successful') do
        schema type: :object,
        properties: {
          status: { type: :string },
          data: { type: :array },
        }
        run_test!
      end
    end
  end

  path '/api/v1/bills/{id}' do
    # You'll want to customize the parameter types...
    parameter name: 'id', in: :path, type: :string, description: 'id'

    get('show bill') do
      response(200, 'successful') do
        let(:id) { '123' }

        after do |example|
          example.metadata[:response][:content] = {
            'application/json' => {
              example: JSON.parse(response.body, symbolize_names: true)
            }
          }
        end
        run_test!
      end
    end
  end
end
