require 'rails_helper'

RSpec.describe 'Users', type: :request do
  describe 'Test Users Controller' do
    it 'get users' do
      get users_path
      expect(response).to have_http_status(200)
    end

    it 'correct template rendered' do
      get users_path
      expect(response).to render_template(:list_of_users)
    end

    it 'response body include placeholder text' do
      get users_path
      expect(response.body).to include('<h1>Here is the list of users!</h1>')
    end
  end

  describe 'Test Users Controller with specific id' do
    it 'get user by id' do
      get '/users/:id'
      expect(response).to have_http_status(200)
    end

    it 'correct template rendered user by id' do
      get '/users/:id'
      expect(response).to render_template(:posts_per_user)
    end

    it 'response body include placeholder text user by id' do
      get '/users/:id'
      expect(response.body).to include('<h1>Here is the lists of post per user</h1>')
    end
  end
end
