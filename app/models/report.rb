class Report < ApplicationRecord
    belongs_to :user
    
    default_scope -> { order(entry_date: :desc) }
end
