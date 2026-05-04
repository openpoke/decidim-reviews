# frozen_string_literal: true

# This migration comes from decidim_participatory_processes (originally 20201006072346)
<<<<<<< HEAD:db/migrate/20240522111418_fix_attachments_titles.decidim_participatory_processes.rb
=======
# This file has been modified by `decidim upgrade:migrations` task on 2026-05-04 13:34:57 UTC
>>>>>>> 2ae0386 (update files):db/migrate/20230208160799_fix_attachments_titles.decidim_participatory_processes.rb
class FixAttachmentsTitles < ActiveRecord::Migration[5.2]
  def up
    reset_column_information

    PaperTrail.request(enabled: false) do
      Decidim::Attachment.find_each do |attachment|
        next if attachment.title.is_a?(Hash) && attachment.description.is_a?(Hash)

        attached_to = attachment.attached_to
        locale = attached_to.try(:locale).presence ||
                 attached_to.try(:default_locale).presence ||
                 attached_to.try(:organization).try(:default_locale).presence ||
                 Decidim.default_locale

        # rubocop:disable Rails/SkipsModelValidations
        values = {}
        values[:title] = { locale => attachment.title } unless attachment.title.is_a?(Hash)
        values[:description] = { locale => attachment.description } unless attachment.description.is_a?(Hash)

        attachment.update_columns(values)
        # rubocop:enable Rails/SkipsModelValidations
      end
    end

    reset_column_information
  end

  def down; end

  def reset_column_information
    Decidim::Attachment.reset_column_information
  end
end
