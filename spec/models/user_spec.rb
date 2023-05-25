require 'rails_helper'

RSpec.describe User, type: :model do
  describe "validations" do
    it "is valid with a unique email and password" do
      user = User.new(email: "test@example.com", password: "password")
      expect(user).to be_valid
    end

    it "is invalid without an email" do
      user = User.new(password: "password")
      expect(user).to_not be_valid
    end

    it "is invalid without a password" do
      user = User.new(email: "test@example.com")
      expect(user).to_not be_valid
    end

    it "is invalid with a duplicate email" do
      User.create(email: "test@example.com", password: "password")
      user = User.new(email: "test@example.com", password: "password")
      expect(user).to_not be_valid
    end
  end
end
