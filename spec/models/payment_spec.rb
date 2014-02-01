require 'spec_helper'

describe Payment do

  let(:group)   { FactoryGirl.create :group }
  let(:payment) { FactoryGirl.create :payment, group: group }
  let(:user1)   { FactoryGirl.create :user }
  let(:user2)   { FactoryGirl.create :user }

  context "new payment" do
    it "notifies the group on Payment creation" do
      payment = Payment.new(cent_amount: 100, group: group)

      expect(payment).to receive(:notify_group)

      payment.save!
    end
  end

  describe "#notify_household" do
    it "calls notify_of_payment for each user in the group" do
      group.users = [user1, user2]
      group.save!

      expect(user1).to receive(:notify_of_payment)
      expect(user2).to receive(:notify_of_payment)

      payment
    end
  end
  
end