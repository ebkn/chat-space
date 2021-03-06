require "rails_helper"

describe Message do
  describe "#create" do
    it "is invalid without body" do
      message = build(:message, body: nil)
      message.valid?
      expect(message.errors[:body]).to include("を入力してください。")
    end

    it "is valid with a body, image" do
      message = build(:message)
      expect(message).to be_valid
    end

    it "is valid with a body" do
      message = build(:message, image: "")
      expect(message).to be_valid
    end
  end
end
