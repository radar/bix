require "web_helper"

RSpec.describe "/users" do
  context "POST /" do
    context "with valid input" do
      let(:input) do
        {
          first_name: "Ryan",
          last_name: "Bigg",
          age: 32,
        }
      end

      it "succeeds" do
        post_json "/users", input
        expect(last_response.status).to eq(200)
        user = parsed_body
        expect(user["id"]).not_to be_nil
        expect(user["first_name"]).to eq("Ryan")
        expect(user["last_name"]).to eq("Bigg")
        expect(user["age"]).to eq(32)
      end
    end

    context "with invalid input" do
      let(:input) do
        {
          last_name: "Bigg",
          age: 32,
        }
      end

      it "returns an error" do
        post_json "/users", input
        expect(last_response.status).to eq(422)
        user = parsed_body
        expect(user["errors"]["first_name"]).to include("is missing")
      end
    end
  end
end
