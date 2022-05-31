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

  describe 'Test Posts Controller' do
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
end
