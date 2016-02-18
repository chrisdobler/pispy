class AddFriendlyNameToDevices < ActiveRecord::Migration
  def change
    add_column :devices, :friendly_name, :string
  end
end
