# == Schema Information
#
# Table name: columns
#
#  id         :integer          not null, primary key
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  board_id   :integer          not null
#
# Indexes
#
#  index_columns_on_board_id  (board_id)
#
# Foreign Keys
#
#  board_id  (board_id => boards.id)
#
class Column < ApplicationRecord
  belongs_to :board
  has_many :visual_signals, dependent: :destroy
  has_one :work_in_progress_limit, dependent: :destroy
end
