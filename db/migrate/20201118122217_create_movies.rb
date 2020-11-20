class CreateMovies < ActiveRecord::Migration[6.0]
  def change
    create_table :movies do |t|
      t.string :title
      t.string :decription
      t.string :movie_lenght
      t.string :director
      t.string :rating

      t.timestamps
    end
  end
end
