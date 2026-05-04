# frozen_string_literal: true

# This migration comes from decidim_debates (originally 20180119150434)
<<<<<<< HEAD:db/migrate/20240522111653_add_reference_to_debates.decidim_debates.rb
=======
# This file has been modified by `decidim upgrade:migrations` task on 2026-05-04 13:34:57 UTC
>>>>>>> 2ae0386 (update files):db/migrate/20230208161021_add_reference_to_debates.decidim_debates.rb
class AddReferenceToDebates < ActiveRecord::Migration[5.1]
  class Debate < ApplicationRecord
    self.table_name = :decidim_debates_debates
  end

  def change
    add_column :decidim_debates_debates, :reference, :string
    Debate.find_each(&:touch)
  end
end
