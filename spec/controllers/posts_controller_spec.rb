require 'rails_helper'

RSpec.describe PostsController, type: :controller do
  describe "GET #index" do
    it "returns a success response" do
      get :index
      expect(response).to be_successful
    end

    it "assigns all posts to @posts" do
      user = User.create(email: "test@example.com", password: "password")
      post1 = Post.create(title: "Post 1", description: "Description 1", user_id: user.id)
      post2 = Post.create(title: "Post 2", description: "Description 2", user_id: user.id)

      get :index
      expect(assigns(:posts).to_a).to eq([post1, post2])
    end
  end

  describe "GET #show" do
    it "returns a success response" do
      user = User.create(email: "test@example.com", password: "password")
      post = Post.create(title: "Post", description: "Description", user_id: user.id)

      get :show, params: { id: post.id }
      expect(response).to be_successful
    end
  end
end
