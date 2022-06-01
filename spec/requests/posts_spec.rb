require 'rails_helper'

RSpec.describe 'Posts', type: :request do
  describe 'GET /posts' do
    describe 'Test Posts Controller' do
      it 'get posts per user id' do
        get '/users/:user_id/posts'
        expect(response).to have_http_status(200)
      end

      it 'correct template rendered posts per user id' do
        get '/users/:user_id/posts'
        expect(response).to render_template(:list_of_posts)
      end

      it 'response body include placeholder text posts per user id' do
        get '/users/:user_id/posts'
        expect(response.body).to include('<h1>Here is the list of posts</h1>')
      end
    end

    describe 'Test Posts Controller per post id' do
      it 'get post' do
        get '/users/:user_id/posts/:id'
        expect(response).to have_http_status(200)
      end

      it 'correct template rendered post' do
        get '/users/:user_id/posts/:id'
        expect(response).to render_template(:post)
      end

      it 'response body include placeholder text post' do
        get '/users/:user_id/posts/:id'
        expect(response.body).to include('<h1>Here is specific post!</h1>')
      end
    end
  end
end
