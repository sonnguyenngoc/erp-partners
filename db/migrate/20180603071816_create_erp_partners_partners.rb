class CreateErpPartnersPartners < ActiveRecord::Migration[5.1]
  def change
    create_table :erp_partners_partners do |t|
      t.string :image_list_url
      t.string :image_detail_url
      t.string :alias
      t.string :name
      t.datetime :birth
      t.string :owner
      t.string :address
      t.string :website
      t.text :short_description
      t.text :letter
      t.references :creator, index: true, references: :erp_users

      t.timestamps
    end
  end
end
