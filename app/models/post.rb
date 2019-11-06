class Post < ActiveRecord::Base
    validates :title, presence: true
    validates :content, presence: true, length: {minimum: 25}
    validates :summary, presence: true, length: {maximum: 25}
    validates :category, presence:true, inclusion: {in:["Fiction", "Non-Fiction"]}
    validate :clickbait

    def clickbait
        if !title.nil? && !title.include?("Won't Believe" || "Secret" ||"Top"||"Secret")
            errors.add(:clickbait, "This is not clickbait")
        end
    end

end
