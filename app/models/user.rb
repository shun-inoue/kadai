class User < ApplicationRecord
    belongs_to :division
    has_many :report
end
