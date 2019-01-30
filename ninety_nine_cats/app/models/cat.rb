# == Schema Information
#
# Table name: cats
#
#  id          :bigint(8)        not null, primary key
#  birth_date  :date             not null
#  color       :string           not null
#  name        :string           not null
#  sex         :string(1)        not null
#  description :text
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

require 'date'
class Cat < ApplicationRecord
    include ActionView::Helpers::DateHelper

    validates :birth_date, :color, :name, :sex, presence: true
    validates :color, inclusion: { in: %w(white black brown orange gray blue)}
    validates :sex, inclusion: { in: %w(M F)}

    def age
        Date.today.year - self.birth_date.year
    end
end
