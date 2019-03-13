# == Schema Information
#
# Table name: likes
#
#  id         :integer          not null, primary key
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  photo_id   :integer
#  user_id    :integer
#

class Like < ApplicationRecord
    
    validates :user_id, :photo_id, presence: true
    validates :user_id, uniqueness: { scope: :photo_id }
    
    belongs_to :user
    belongs_to :photo
end
