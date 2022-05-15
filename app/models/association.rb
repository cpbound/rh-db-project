class Association < ApplicationRecord
  belongs_to :album
  belongs_to :track
end
