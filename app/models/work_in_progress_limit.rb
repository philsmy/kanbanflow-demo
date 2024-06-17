# == Schema Information
#
# Table name: work_in_progress_limits
#
#  id         :integer          not null, primary key
#  limit      :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  column_id  :integer          not null
#
# Indexes
#
#  index_work_in_progress_limits_on_column_id  (column_id)
#
# Foreign Keys
#
#  column_id  (column_id => columns.id)
#
class WorkInProgressLimit < ApplicationRecord
  belongs_to :column
end
