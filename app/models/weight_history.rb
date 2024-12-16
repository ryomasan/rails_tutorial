class WeightHistory < ApplicationRecord
  belongs_to :user

  validates :user_id, presence: { message: "ユーザを入力してください" }, numericality: true
  validates :weight, presence: { message: "体重を入力してください" }, numericality: true
  validates :memo, length: { maximum: 255, too_long: "メモは最大%{cound}文字以内で入力してください" }
end
