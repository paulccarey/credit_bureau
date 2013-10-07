require "spec_helper"

module CreditBureau

  module Cards

    describe MasterCard do

      let(:valid_mastercard_number) { 5105105105105100 }
      let(:invalid_mastercard_number) { 4111111111111111 }

      describe "class methods" do

        describe ".matches?" do

          subject { MasterCard.matches?(card_number) }

          context "card number is a valid amex number" do

            let(:card_number) { valid_mastercard_number }

            it { should be_true }

          end

          context "card number is NOT a valid amex number" do

            let(:card_number) { invalid_mastercard_number }

            it { should be_false }

          end

        end

      end

      describe "instance methods" do

        describe "#type" do

          subject { MasterCard.allocate.type }

          it { should == "MasterCard" }

        end

      end

    end

  end
end
