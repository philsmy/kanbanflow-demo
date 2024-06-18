# == Schema Information
#
# Table name: boards
#
#  id         :integer          not null, primary key
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Board < ApplicationRecord
  has_many :columns, dependent: :destroy
  has_one :commitment_point, dependent: :destroy
  has_one :delivery_point, dependent: :destroy

  broadcasts_refreshes
end
