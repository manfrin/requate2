class Payment < ActiveRecord::Base
  belongs_to :user
  belongs_to :group

  after_create :notify_group

  def notify_group
    group.users.each{|u| u.notify_of_payment(self)}
  end
end
