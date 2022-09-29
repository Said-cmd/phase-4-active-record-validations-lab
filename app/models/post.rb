class Post < ApplicationRecord
    validates :title, presence: true
    validates :content, length: { minimum: 250}
    validates :summary, length: { maximum: 250}
    validates :category, inclusion: ["Fiction", "Non-Fiction"]
    validate :reject_true_facts

    def reject_true_facts
        if title == "True Facts"
        errors.add(:title, "Sorry the title can't be true facts")
        end
    end

end
