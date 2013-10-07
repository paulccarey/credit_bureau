require "spec_helper"

module CreditBureau

  module Cards

    describe VisaCard do

      let(:valid_visa_number) { 4111111111111111 }
      let(:invalid_visa_number) { 378282246310005 }

      describe "class methods" do

        describe ".matches?" do

          subject { VisaCard.matches?(card_number) }

          context "card number is a valid amex number" do

            let(:card_number) { valid_visa_number }

            it { should be_true }

          end

          context "card number is NOT a valid amex number" do

            let(:card_number) { invalid_visa_number }

            it { should be_false }

          end

        end

      end

      describe "instance methods" do

        describe "#type" do

          subject { VisaCard.allocate.type }

          it { should == "VISA" }

        end

      end

    end

  end
end
