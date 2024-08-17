module UrlHelper
  def self.path(context, relative_path, action)
    "#{context}/application/controllers/#{relative_path}##{action}"
  end
end
