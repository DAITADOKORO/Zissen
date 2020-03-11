class CreateReigais < ActiveRecord::Migration[5.2]
  def change
    create_table :reigais do |t|

      t.timestamps
    end
  end
end
