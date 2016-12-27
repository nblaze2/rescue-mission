class AddFkToQidInAnswers < ActiveRecord::Migration[5.0]
  def change
    change_column :answers, :question_id, :integer, :null => false
  end
end
