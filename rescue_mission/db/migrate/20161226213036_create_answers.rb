class CreateAnswers < ActiveRecord::Migration[5.0]
  def change
    create_table :answers do |t|
      t.string :title, null: false
      t.string :username, null: false
      t.text :body, null: false
      t.references :question
      
      t.timestamps null: false
    end
  end
end
