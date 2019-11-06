class NameValidator < ActiveModel::Validator
    def validate(record)
        unless record.name.valid
        record.errors[:name] << "This is not a valid name!"
        end
    end
end