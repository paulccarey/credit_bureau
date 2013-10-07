require "spec_helper"

module CreditBureau

  describe LuhnNumber do

    describe "#instance methods" do

      let(:valid_number) { 4111111111111111 }
      let(:invalid_number) { 4417123456789112 }

      describe "#initialize" do

        subject { LuhnNumber.new(valid_number) }

        its(:value) { should == valid_number }

      end

      describe "#valid?" do

        subject { LuhnNumber.new(value).valid? }

        context "card number is valid" do

          let(:value) { valid_number }

          it { should be_true }

        end

        context "card number is invalid" do

          let(:value) { invalid_number }

          it { should be_false }

        end

      end

    end

  end

end