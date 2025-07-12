class EnablePgExtensions < ActiveRecord::Migration[8.0]
  def change
    enable_extension 'pg_stat_statements'
    enable_extension 'plpgsql'
  end
end
