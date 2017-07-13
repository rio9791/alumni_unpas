# == Schema Information
#
# Table name: news
#
#  id         :integer          not null, primary key
#  title      :string
#  content    :text
#  visibility :boolean
#  slug       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  cover      :string
#

class News < ActiveRecord::Base
  extend FriendlyId
  friendly_id :title, use: :slugged
  mount_uploader :cover, ImageUploader

  VISIBILITY = [['Ya', true], ['Tidak', false]]

  scope :displays, -> { where(visibility: true) }
end
