# frozen_string_literal: true

# This migration comes from decidim_debates (originally 20200930145546)
<<<<<<< HEAD:db/migrate/20240522111665_add_scope_to_debates_debate.decidim_debates.rb
=======
# This file has been modified by `decidim upgrade:migrations` task on 2026-05-04 13:34:57 UTC
>>>>>>> 2ae0386 (update files):db/migrate/20230208161033_add_scope_to_debates_debate.decidim_debates.rb
class AddScopeToDebatesDebate < ActiveRecord::Migration[5.2]
  def change
    add_reference :decidim_debates_debates, :decidim_scope, foreign_key: true, index: true
  end
end
