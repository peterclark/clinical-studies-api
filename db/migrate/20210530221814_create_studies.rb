class CreateStudies < ActiveRecord::Migration[6.1]
  def change
    create_table :studies do |t|
      t.text :title

      t.timestamps
    end
  end
end
