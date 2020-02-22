class CreateHeros < ActiveRecord::Migration[5.2]
  def change
    create_table :heros do |t|

      t.timestamps
    end
  end
end
