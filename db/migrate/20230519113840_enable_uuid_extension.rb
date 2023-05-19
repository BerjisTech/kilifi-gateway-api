class EnableUuidExtension < ActiveRecord::Migration[6.1]
  def change
    enable_extension 'pgcrypto' # preferred over 'uuid-ossp'
  end
end
