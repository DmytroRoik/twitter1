class Post < ApplicationRecord
  belongs_to :user
  has_many :comments, :dependent => :delete_all
  validates :body, presence: true

public

  # def addGrade(grade,current_user_id)
  # 	com=self.comments.find_by(user_id: current_user_id)
  # 	if(com.size==0)
  # 		com=Comment.create(user_id: current_user_id, post_id: self.id, status: grade);
  # 		return;
  # 	else
  # 		if (grade==1&&com.first.status==0||grade==-1&&com.first.status==0)
  # 			com.each do |c|
  # 				c.status=grade;
  # 			end
  # 		else
  # 			com.each do |c|
  # 				c.status=0;
  # 			end
  # 		end
  # 	end
  # end
  # def likeCount
  # 	com=self.comments.all.sort_by { |e| e.user_id }
  # 	i=0
  # 	count=0
  # 	while(i<com.length-1)
  # 		temp=com[i];
  # 		if(temp.user_id!=com[i+1].user_id)
  # 			count+=1
  # 		end
  # 		i+=1;
  # 	end
  # 	return count;
  # end
end