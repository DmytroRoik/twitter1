class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :post
  validates :body, presence: true
  public
  def author
  	return User.find_by(id: self.user_id).username
  end
  
end
