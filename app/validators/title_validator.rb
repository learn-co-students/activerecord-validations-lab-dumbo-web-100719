class TitleValidator < ActiveModel::Validator
    def validate(record)
        if !title.nil? && (!record[:title].include?("Won\'t Believe" || "Secret" || "Top" || "Guess"))
            record.errors[:title] << "Your title is not click-bait. Please try again."
        end  
    end
end