require "action_controller"

ActionController::Renderers.add :csv do |filename, options|
  content = options[:content]
  send_data(content, :filename => "#{filename}.csv", :type => "text/csv", :disposition => "attachment")
end
