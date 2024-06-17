# == Schema Information
#
# Table name: visual_signals
#
#  id          :integer          not null, primary key
#  description :text
#  title       :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  column_id   :integer          not null
#
# Indexes
#
#  index_visual_signals_on_column_id  (column_id)
#
# Foreign Keys
#
#  column_id  (column_id => columns.id)
#
class VisualSignal < ApplicationRecord
  belongs_to :column
end
