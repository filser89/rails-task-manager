class Task < ApplicationRecord
  validates :title, presence: true
  validates :details, presence: true

  def toggle_completed!
    completed ? self.completed = false : self.completed = true

  end

  def btn_color
    completed ? "success" : "warning"
  end

  def btn_text
    completed ? "Done" : "In progress"

  end
end
