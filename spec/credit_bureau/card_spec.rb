require "spec_helper"

module CreditBureau

  describe Card do

    let(:valid_card_number) { 4111111111111111 }
    let(:invalid_card_number) { 4417123456789112 }
    let(:unknown_card_type) { 9111111111111111 }

    class TestCard < CreditBureau::Card
      class << self
        def matches? number
          true if number == 4111111111111111
        end
      end
    end

    describe "class methods" do

      describe ".new" do

        context "factory instantiation via Card.new" do

          context "matching card type is found" do

            subject { Card.new(valid_card_number) }

            it { should be_instance_of TestCard }

          end

          context "no matching card type is found" do

            it "should raise an UnknownCardType error" do
              expect { Card.new(unknown_card_type) }.to raise_error(UnknownCardType)
            end

          end

        end

        context "direct instantiation via TestCard.new" do

          context "number matches card type being instantiated" do

            subject { TestCard.new(valid_card_number) }

            it { should be_instance_of TestCard }

          end

          context "number does not match the card type being instantiated" do

            it "should raise an InvalidCardNumberForType error" do
              expect { TestCard.new(invalid_card_number) }.to raise_error(InvalidCardNumberForType)
            end

          end

        end

      end

      describe ".matches?" do

        it "should raise a NotImplementedError" do
          expect { Card.matches?(valid_card_number) }.to raise_error(NotImplementedError)
        end

      end
    end

    describe "instance methods" do

      describe "#initialize" do

        subject { TestCard.new(valid_card_number) }

        its(:card_number) { should == valid_card_number }

      end

      describe "#valid?" do

        let(:luhn_number_double) { double(LuhnNumber, :valid? => true) }
        let(:test_card) { TestCard.new(valid_card_number) }

        before(:each) do
          LuhnNumber.stub(:new).and_return(luhn_number_double)
          test_card.valid?
        end

        it "delegates to a LuhnNumber object" do
          luhn_number_double.should have_received(:valid?)
        end

      end

      describe "#type" do

        let(:card) { Card.allocate }

        it "raises a NotImplementedError" do
          expect { card.type }.to raise_error(NotImplementedError)
        end

      end

    end

  end
end