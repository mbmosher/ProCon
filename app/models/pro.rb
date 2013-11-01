class Pro < ActiveRecord::Base

belongs_to :dilema

validates :name, presence: true
validates :value, presence: true
end
