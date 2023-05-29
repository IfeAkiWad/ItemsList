class Welcome < ApplicationRecord
    validates :content, presence: true
end
