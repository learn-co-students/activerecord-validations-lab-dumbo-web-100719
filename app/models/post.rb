class Post < ActiveRecord::Base

    validates :title, presence: true 
    validates :content, length: {minimum: 10}
    validates :summary, length: {in: 2..10}
    validates :category, inclusion: {in: ["Fiction", "Non-Fiction"] }
    validate  :clickbait

   def clickbait
       if title.present? && !title.include?("Won't Believe" || "Secret"|| "Top"|| "Guess")
           errors.add(:clickbait, "Title not clickbait!")
       end
   end
end


