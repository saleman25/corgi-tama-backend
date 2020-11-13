class CreateCorgis < ActiveRecord::Migration[6.0]
  def change
    create_table :corgis do |t|
      t.string :name
      t.belongs_to :user
      t.integer :hunger_meter, default: 75
      t.integer :lonlieness_meter, default: 75
      t.integer :happiness_meter, default: 50
      t.integer :evolution_countdown, default: 60
      t.string  :corgi_type

      t.timestamps
    end
  end
end
