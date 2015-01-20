class Article < ActiveRecord::Base

  @@alchemy_url ||= ENV["ALCHEMY_URL"]

  belongs_to :user
  
  attr_accessor :keywords
  
  validates_presence_of :title
  
  validates_presence_of :content
  
  def author
   "#{user[:last_name]}, #{user[:first_name]}"
  end


  def owned_by?(user)
    self.user_id == user.id
  end

  def get_keywords
    # res = Typhoeus.get(@@alchemy_url, params: {
    #   apikey: ENV["ALCHEMY_APIKEY"],
    #   text: content,
    #   maxRetrieve: 10,
    #   outputMode: "json"
    # })
    # words = JSON.parse(res.body)["keywords"].map do |w|
    #   w['text']
    # end
    # @keywords = words.join(" | ")
    @keywords = "not yet implemented"
  end

end
