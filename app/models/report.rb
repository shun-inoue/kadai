class Report < ApplicationRecord
    belongs_to :user

    scope :name_like, -> name {
        where('name like ?', "%#{name}%") if name.present?
    }
    
    scope :date_between, -> from, to {
        if from.present? && to.present?
            where(date: from..to)
        elsif from.present?
            where('entry_date >= ?', from)
        elsif to.present?
            where('entry_date <= ?', to)
        end
    }
    scope :match, -> cond {
    name_like(cond.name).date_between(cond.entry_date_from, cond.entry_date_to)
  }
    
end
