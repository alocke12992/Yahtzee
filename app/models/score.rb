class Score < ApplicationRecord
  belongs_to :user

  #Score.all_scores 
  def self.all_scores
    select('Value, user_id, u.email, scores.id')
      joins('INNER JOIN users u ON u.id = sscores.user_id')
      .order(value: :desc)
  end 
end
