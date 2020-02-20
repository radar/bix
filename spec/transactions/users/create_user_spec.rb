require 'spec_helper'

RSpec.describe Bix::Transactions::Users::CreateUser do
  let(:user_repo) { double(Bix::Repos::UserRepo) }
  let(:user) { Bix::User.new(id: 1, first_name: "Ryan") }

  subject { described_class.new(user_repo: user_repo) }

  context "with valid input" do
    let(:input) do
      {
        first_name: "Ryan",
        last_name: "Bigg",
        age: 32,
      }
    end

    it "creates a user" do
      expect(user_repo).to receive(:create) { user }
      result = subject.call(input)
      expect(result).to be_success
      expect(result.success).to eq(user)
    end
  end

  context "with invalid input" do
    let(:input) do
      {
        last_name: "Bigg",
        age: 32,
      }
    end

    it "does not create a user" do
      expect(user_repo).not_to receive(:create)
      result = subject.call(input)
      expect(result).to be_failure
      expect(result.failure.errors[:first_name]).to include("is missing")
    end
  end
end
