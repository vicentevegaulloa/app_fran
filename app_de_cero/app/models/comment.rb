class Comment < ApplicationRecord
  belongs_to :match_user
  belongs_to :local
end
