require "spec_helper"

RSpec.describe Bix::Repos::UserRepo do
  context "#create" do
    it "creates a user" do
      user = subject.create(first_name: "Ryan", last_name: "Bigg", age: 32)
      expect(user).to be_a(Bix::User)
      expect(user.id).to eq(1)
      expect(user.created_at).not_to be_nil
      expect(user.updated_at).not_to be_nil
    end
  end

  context "#all" do
    before do
      subject.create(first_name: "Ryan", last_name: "Bigg", age: 32)
    end

    it "returns all users" do
      users = subject.all
      expect(users.count).to eq(1)
      expect(users.first).to be_a(Bix::User)
    end
  end
end
