module ApplicationHelper
  def navbar_item(action_name, path, label = nil)

    is_active = params[:action] == action_name

    render(inline: %{
        <li>
          <%= link_to '#{ url_for(path) }', 
                      class: 'flex gap-4 #{ "underline" if is_active }' do %>
              <span class="flex-1">#{ label ? label : controller_name.humanize }</span>
          <% end %>
        </li>
    })
  end
end
