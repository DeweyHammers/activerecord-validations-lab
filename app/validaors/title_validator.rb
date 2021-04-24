class TitleValidator < ActiveModel::Validator
  def validate(record)
    if record.title != nil
      unless record.title.match?(/Won't Believe/)
        record.errors[:title] << "There was a Error"
      end
    end
  end
end