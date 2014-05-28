class CreatePrograms < ActiveRecord::Migration
  def change
    create_table :programs do |t|
      t.text :when
      t.text :what
      t.references :detail, index: true

      t.timestamps
    end
  end
end
