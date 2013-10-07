require "spec_helper"

module CreditBureau

  module Cards

    describe AmexCard do

      let(:valid_amex_number) { 378282246310005 }
      let(:invalid_amex_number) { 4111111111111111 }

      describe "class methods" do

        describe ".matches?" do

          subject { AmexCard.matches?(card_number) }

          context "card number is a valid amex number" do

            let(:card_number) { valid_amex_number }

            it { should be_true }

          end

          context "card number is NOT a valid amex number" do

            let(:card_number) { invalid_amex_number }

            it { should be_false }

          end

        end

      end

      describe "instance methods" do

        describe "#type" do

          subject { AmexCard.allocate.type }

          it { should == "AMEX" }

        end

      end

    end

  end
end
