require 'action_view'

# == Schema Information
#
# Table name: cats
#
#  id          :bigint           not null, primary key
#  birth_date  :date             not null
#  color       :string           not null
#  name        :string           not null
#  sex         :string(1)        not null
#  description :text             not null
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#
class Cat < ApplicationRecord
    include ActionView::Helpers::DateHelper

    validates :birth_date, presence: true

    def age
        distance_of_time_in_words_to_now(birth_date)

        # today = Date.today
        # d = Date.new(today.year, dob.month, dob.day)
        # age = d.year - dob.year - (d > today ? 1 : 0)

        # now = Time.now.utc.to_date
        # now.year - dob.year - ((now.month > dob.month || (now.month == dob.month && now.day >= dob.day)) ? 0 : 1)
    end
end
