class Task < ActiveRecord::Base
  validates :name, :presence => true, :length => { :in => 3..100 }, :uniqueness => true
  before_save :downcase_name  
  belongs_to :list
  

  private
  

  def downcase_name
    self.name = self.name.downcase
  end


end