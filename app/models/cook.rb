class Cook < ApplicationRecord
  belongs_to :shopping, optional: true
end
