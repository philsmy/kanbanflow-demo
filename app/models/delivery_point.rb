# == Schema Information
#
# Table name: delivery_points
#
#  id         :integer          not null, primary key
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  board_id   :integer          not null
#
# Indexes
#
#  index_delivery_points_on_board_id  (board_id)
#
# Foreign Keys
#
#  board_id  (board_id => boards.id)
#
class DeliveryPoint < ApplicationRecord
  belongs_to :board
end
