class AddIpv4ToDevices < ActiveRecord::Migration
  def change
    add_column :devices, :ipv4_address, :string
  end
end
