# == Schema Information
#
# Table name: users
#
#  id                      :integer          not null, primary key
#  name                    :string
#  avatar_url              :string
#  created_at              :datetime         not null
#  updated_at              :datetime         not null
#  attachment_file_name    :string
#  attachment_content_type :string
#  attachment_file_size    :integer
#  attachment_updated_at   :datetime
#
require "open-uri"

class User < ActiveRecord::Base
  has_attached_file :attachment,
                    styles: { :large => "1920x1080>", thumb: '160x160#' }
  do_not_validate_attachment_file_type :attachment
  def attachment_from_url(url)
    self.attachment = open(url)
  end
  
end
