require "spec_helper"

module CreditBureau

  module Cards

    describe UnknownCard do

      let(:card_number) { 378282246310005 }

      describe "class methods" do

        describe ".matches?" do

          subject { UnknownCard.matches?(card_number) }

            it { should be_false }

        end

      end

      describe "instance methods" do

        describe "#type" do

          subject { UnknownCard.allocate.type }

          it { should == "Unknown" }

        end

      end

    end

  end
end
