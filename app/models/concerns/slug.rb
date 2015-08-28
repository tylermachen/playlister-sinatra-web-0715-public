module Slug
  module ClassMethods
    def find_by_slug(slug)
      name = slug.gsub('-', ' ')
      where('lower(name) = ?', name).first
    end
  end

  module InstanceMethods
    def slug
      name.split.join('-').downcase
    end
  end
end
