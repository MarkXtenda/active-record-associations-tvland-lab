class CreateActors < ActiveRecord::Migration[5.1]
    def change
        create_table :actors do |r|
            r.string :first_name
            r.string :last_name
        end
    end
end