require 'rails_helper'
require 'swagger_helper'

RSpec.describe "Api::V1::Books", type: :request do

  describe 'Book' do
    path '/api/v1/books' do
      get 'books list' do
        tags 'Books'
        consumes 'application/json'
        # parameter name: :book, in: :query, style: :deepObject, schema: {
        #   type: :object,
        #   properties: {
        #     title: { type: :string },
        #     description: { type: :string },
        #   },
        #   example: {
        #     title: 'Harry Porter',
        #     description: 'The best seller'
        #   }
        # }
        # parameter name: :user, in: :query,style: :deepObject, schema: {
        #   type: :object,
        #   properties: {
        #     name: { type: :string }
        #   },
        #   example: {
        #     name: 'David'
        #   }
        # }
        # response '200', 'success' do
        #   let(:book) { { title: 'Harry Porter', description: 'The best seller'}}
        #   let(:user) {{ name: 'David' }}

        #   run_test! do |response|
        #     body = JSON.parse(response.body)
        #   end
        # end
        parameter name: :'book[title]', in: :query, type: :string
        parameter name: :'book[description]', in: :query, type: :string
        parameter name: :'user[name]', in: :query, type: :string
        parameter name: :'query', in: :query, type: :string

        response '200', 'success' do
          schema type: :object,
            properties: {
              data: {
                type: :array,
                items: {
                  properties: {
                    id: { type: :string},
                    type: { type: :strin },
                    attributes: {
                      type: :object,
                      properties: {
                        title: {
                          type: :string
                        },
                        description: {
                          type: :string
                        },
                        name: {
                          type: :string
                        },
                        query: {
                          type: :string
                        }
                      }
                    }
                  }
                }
              }
            }
          FactoryBot.create(:book)
          FactoryBot.create(:user)
          let(:'book[title]') {'Harry Porter'}
          let(:'book[description]') { 'The best seller' }
          let(:'user[name]') { 'David' }
          let(:query) { nil }

          run_test!
        end
      end
    end
  end
end
