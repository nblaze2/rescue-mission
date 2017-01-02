class AddColumnToAnswers < ActiveRecord::Migration[5.0]
  def change
    add_column :answers, :chosen, :boolean, default: false
  end
end
