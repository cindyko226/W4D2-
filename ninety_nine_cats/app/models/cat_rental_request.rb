# == Schema Information
#
# Table name: cat_rental_requests
#
#  id         :bigint(8)        not null, primary key
#  cat_id     :integer          not null
#  start_date :date             not null
#  end_date   :date             not null
#  status     :string           default("PENDING")
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class CatRentalRequest < ApplicationRecord
    validates :cat_id, :start_date, :end_date, :status, presence: true
    validates :status, inclusion: { in: %w(PENDING APPROVED DENIED)}

    belongs_to :cat, dependent: :destroy,
      primary_key: :id,
      foreign_key: :cat_id,
      class_name: :Cat
    
    def overlapping_requests 
        
    end 
    
end
