# frozen_string_literal: true

# This migration comes from decidim_sortitions (originally 20180104143054)
<<<<<<< HEAD:db/migrate/20240522111678_make_sortition_reference_nullable.decidim_sortitions.rb
=======
# This file has been modified by `decidim upgrade:migrations` task on 2026-05-04 13:34:57 UTC
>>>>>>> 2ae0386 (update files):db/migrate/20230208161046_make_sortition_reference_nullable.decidim_sortitions.rb
class MakeSortitionReferenceNullable < ActiveRecord::Migration[5.1]
  def change
    change_column_null :decidim_module_sortitions_sortitions, :reference, true
  end
end
