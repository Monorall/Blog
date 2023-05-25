require 'rails_helper'

RSpec.describe Post, type: :model do
  describe "validations" do
    it "is valid with a title, description, and user" do
      user = User.create(email: "test@example.com", password: "password")
      post = Post.new(title: "My Post", description: "This is my post.", user: user)
      expect(post).to be_valid
    end

    it "is invalid without a title" do
      user = User.create(email: "test@example.com", password: "password")
      post = Post.new(description: "This is my post.", user: user)
      expect(post).to_not be_valid
    end

    it "is invalid without a description" do
      user = User.create(email: "test@example.com", password: "password")
      post = Post.new(title: "My Post", user: user)
      expect(post).to_not be_valid
    end
  end
end
