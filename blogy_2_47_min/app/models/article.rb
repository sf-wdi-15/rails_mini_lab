class Article < ActiveRecord::Base

  belongs_to :user

  validates_presence_of :title
  validates_presence_of :content
  
  def author
   "#{user[:last_name]}, #{user[:first_name]}"
  end
end
