class FarmingStudent < ApplicationRecord
  belongs_to :user
  belongs_to :farming
end
