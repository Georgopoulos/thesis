module ApplicationHelper

	def render_sidebar?
		satisfy_controller_action_conditions?(
			'pages' => [:home])
	end

	def satisfy_controller_action_conditions?(conditions)
	    conditions.any? do |controller, actions|
	      (controller == params[:controller]) && 
	        (actions == :all || actions.include?(params[:action]))
	    end
  end
end
