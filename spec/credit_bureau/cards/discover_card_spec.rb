require "spec_helper"

module CreditBureau

  module Cards

    describe DiscoverCard do

      let(:valid_discover_number) { 6011111111111117 }
      let(:invalid_discover_number) { 4111111111111111 }

      describe "class methods" do

        describe ".matches?" do

          subject { DiscoverCard.matches?(card_number) }

          context "card number is a valid amex number" do

            let(:card_number) { valid_discover_number }

            it { should be_true }

          end

          context "card number is NOT a valid amex number" do

            let(:card_number) { invalid_discover_number }

            it { should be_false }

          end

        end

      end

      describe "instance methods" do

        describe "#type" do

          subject { DiscoverCard.allocate.type }

          it { should == "Discover" }

        end

      end

    end

  end
end
