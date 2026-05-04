# frozen_string_literal: true

# This migration comes from decidim_assemblies (originally 20180426162405)
<<<<<<< HEAD:db/migrate/20240522111437_assembly_member_belongs_to_user.decidim_assemblies.rb
=======
# This file has been modified by `decidim upgrade:migrations` task on 2026-05-04 13:34:56 UTC
>>>>>>> 2ae0386 (update files):db/migrate/20230208160817_assembly_member_belongs_to_user.decidim_assemblies.rb
class AssemblyMemberBelongsToUser < ActiveRecord::Migration[5.1]
  def change
    add_reference :decidim_assembly_members, :decidim_user, index: { name: "index_decidim_assembly_members_on_decidim_user_id" }
  end
end
