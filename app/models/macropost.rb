class Macropost < ActiveRecord::Base
  attr_accessible :content, :title, :location_id
  
  belongs_to :user
  
  validates :title , :presence => true , :length => { :maximum => 140 }
  validates :user_id, :presence => true
  validates :location_id, :presence => true
  validates :content, :presence => true
  
  def self.page_feed(location)
    self.where('location_id = ?', location).order('created_at DESC')
  end
end
