# == Schema Information
#
# Table name: aiports
#
#  id         :integer          not null, primary key
#  code       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
# Indexes
#
#  index_aiports_on_code  (code) UNIQUE
#
class Aiport < ApplicationRecord
end
