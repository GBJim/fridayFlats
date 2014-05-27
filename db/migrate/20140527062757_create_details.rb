class CreateDetails < ActiveRecord::Migration
  def change
    create_table :details do |t|
      t.boolean :public
      t.string :title
      t.text :description
      t.integer :priceNumber
      t.string :pricePer
      t.text :whatInclude
      t.text :whatExclude
      t.integer :durationTime
      t.boolean :durationDayOrHour
      t.integer :groupSize
      t.text :availability
      t.text :additionalInfo

      t.timestamps
    end
  end
end
