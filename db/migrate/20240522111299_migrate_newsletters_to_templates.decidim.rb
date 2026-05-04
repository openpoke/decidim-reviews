# frozen_string_literal: true

# This migration comes from decidim (originally 20200327082257)
<<<<<<< HEAD:db/migrate/20240522111299_migrate_newsletters_to_templates.decidim.rb
=======
# This file has been modified by `decidim upgrade:migrations` task on 2026-05-04 13:34:56 UTC
>>>>>>> 2ae0386 (update files):db/migrate/20230208160694_migrate_newsletters_to_templates.decidim.rb
class MigrateNewslettersToTemplates < ActiveRecord::Migration[5.2]
  class ContentBlock < ApplicationRecord
    self.table_name = :decidim_content_blocks
  end

  class Newsletter < ApplicationRecord
    self.table_name = :decidim_newsletters
  end

  def change
    remove_index :decidim_content_blocks, name: "idx_dcdm_content_blocks_uniq_org_id_scope_manifest_name"

    Newsletter.find_each do |newsletter|
      existing_content_block = ContentBlock
                               .where(decidim_organization_id: newsletter.organization_id)
                               .where(scope_name: :newsletter_template)
                               .find_by(scoped_resource_id: newsletter.id)

      next if existing_content_block

      content_block = ContentBlock.new(
        decidim_organization_id: newsletter.organization_id,
        manifest_name: :basic_only_text,
        scope_name: :newsletter_template,
        scoped_resource_id: newsletter.id,
        settings: newsletter.body.transform_keys { |key| "body_#{key}" }
      )
      content_block.save!
    end
  end
end
