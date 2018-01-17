class CreateUsersAnswersQuestions < ActiveRecord::Migration[5.1]
    def up
      create_table :answers do |t|
        t.belongs_to :user, null: false, index: true
        t.belongs_to :question, null: false, index: true
        t.text :body, null: false
        t.integer :rating

        t.timestamps
      end

      create_table :questions do |t|
        t.belongs_to :user, null: false
        t.string :title, null: false
        t.text :body

        t.timestamps
      end
      create_table :users do |t|
        t.string :first_name, null: false
        t.string :last_name, null: false
        t.string :email, null: false, unique: true

        t.timestamps
      end
    end
    def down
      drop_table :users
      drop_table :questions
      drop_table :answers
    end
end
