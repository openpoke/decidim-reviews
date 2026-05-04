# frozen_string_literal: true

# This migration comes from decidim_comments (originally 20210402124534)
<<<<<<< HEAD:db/migrate/20240522111469_add_participatory_process_to_comments.decidim_comments.rb
=======
# This file has been modified by `decidim upgrade:migrations` task on 2026-05-04 13:34:56 UTC
>>>>>>> 2ae0386 (update files):db/migrate/20230208160849_add_participatory_process_to_comments.decidim_comments.rb
class AddParticipatoryProcessToComments < ActiveRecord::Migration[5.2]
  def change
    add_column :decidim_comments_comments, :decidim_participatory_space_type, :string
    add_column :decidim_comments_comments, :decidim_participatory_space_id, :integer

    add_index :decidim_comments_comments,
              [:decidim_participatory_space_id, :decidim_participatory_space_type],
              name: "index_decidim_comments_on_decidim_participatory_space"
  end
end
