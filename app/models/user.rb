class User < ApplicationRecord
  belongs_to :code_school
  has_one :profile
  has_many :projects


##named scopes
  # def self.active
  #   where(active: true)
  # end
  scope :active, -> {where(active:true)}

  ##named scopes
  # def self.cohort(cohort_num)
  #   where(cohort: cohort_num)
  # end
# scope :active do
#   where(active: true)
# end
# scope :active {
#   where(active:true)
# }
# end


  def self.active_cohort(cohort_num)
    # where(active:true, cohort: cohort_num)
    active.cohort(cohort_num)
  end
    # scope :cohort, -> {where(active:true)}


end
