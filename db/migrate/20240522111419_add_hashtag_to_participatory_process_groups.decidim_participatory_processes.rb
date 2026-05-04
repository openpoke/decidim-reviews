# frozen_string_literal: true

# This migration comes from decidim_participatory_processes (originally 20201007215105)
<<<<<<< HEAD:db/migrate/20240522111419_add_hashtag_to_participatory_process_groups.decidim_participatory_processes.rb
=======
# This file has been modified by `decidim upgrade:migrations` task on 2026-05-04 13:34:57 UTC
>>>>>>> 2ae0386 (update files):db/migrate/20230208160800_add_hashtag_to_participatory_process_groups.decidim_participatory_processes.rb
class AddHashtagToParticipatoryProcessGroups < ActiveRecord::Migration[5.2]
  def change
    add_column :decidim_participatory_process_groups, :hashtag, :string
  end
end
