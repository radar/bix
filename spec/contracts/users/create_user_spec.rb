require 'spec_helper'

RSpec.describe Bix::Contracts::Users::CreateUser do
  context "given valid parameters" do
    let(:input) do
      {
        first_name: "Ryan",
        last_name: "Bigg",
        age: 32
      }
    end

    let(:result) { subject.call(input) }

    it "is valid" do
      expect(result).to be_success
    end
  end

  context "requires first_name" do
    let(:input) do
      {
        last_name: "Bigg",
        age: 32
      }
    end

    let(:result) { subject.call(input) }

    it "is invalid" do
      expect(result).to be_failure
      expect(result.errors[:first_name]).to include("is missing")
    end
  end

  context "requires last_name" do
    let(:input) do
      {
        first_name: "Ryan",
        age: 32
      }
    end

    let(:result) { subject.call(input) }

    it "is invalid" do
      expect(result).to be_failure
      expect(result.errors[:last_name]).to include("is missing")
    end
  end
end
