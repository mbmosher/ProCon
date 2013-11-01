class Dilema < ActiveRecord::Base

belongs_to :user
has_many :pros, dependent: :destroy
has_many :cons, dependent: :destroy

validates :decision, presence: true

end
