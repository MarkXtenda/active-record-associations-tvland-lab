class CreateCharacters < ActiveRecord::Migration[5.1]
    def change
        create_table :characters do |r|
            r.string :name
            r.integer :actor_id
            r.integer :show_id
        end
    end
end