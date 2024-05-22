class Phrase < ApplicationRecord
  def self.search(search)
    if search
      where('id LIKE ?', "%#{search}%")
    else
      Phrase.all
    end
  end
end
