# frozen_string_literal: true

# This migration comes from decidim_debates (originally 20180122090505)
<<<<<<< HEAD:db/migrate/20240522111654_add_user_group_author_to_debates.decidim_debates.rb
=======
# This file has been modified by `decidim upgrade:migrations` task on 2026-05-04 13:34:57 UTC
>>>>>>> 2ae0386 (update files):db/migrate/20230208161022_add_user_group_author_to_debates.decidim_debates.rb
class AddUserGroupAuthorToDebates < ActiveRecord::Migration[5.1]
  def change
    add_column :decidim_debates_debates, :decidim_user_group_id, :integer
  end
end
