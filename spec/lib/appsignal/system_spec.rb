describe Appsignal::System do
  describe ".heroku?" do
    subject { described_class.heroku? }

    context "when on Heroku" do
      around { |example| recognize_as_heroku { example.run } }

      it "returns true" do
        expect(subject).to be_truthy
      end
    end

    context "when not on Heroku" do
      it "returns false" do
        expect(subject).to be_falsy
      end
    end
  end
end
