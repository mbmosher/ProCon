class Dilema < ActiveRecord::Base

belongs_to :user
has_many :pros, dependent: :destroy
has_many :cons, dependent: :destroy

validates :decision, presence: true

def addPro(p)
  self.pro_total = self.pro_total + p
  self.result = self.pro_total - self.con_total
  self.save
end

def addCon(c)
  self.con_total = self.con_total + c
  self.result = self.pro_total - self.con_total
  self.save
end

def resultPrefix
  if self.result > 0
	  return "PRO "
  end
  if self.result < 0
    return "CON "
  end
  if self.result == 0
    return "??? "
  end
end


end
