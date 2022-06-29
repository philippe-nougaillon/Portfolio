module ApplicationHelper
  def navbar_item(controller_name, path, label = nil)
    is_active = params[:controller] == controller_name

    render(inline: %{
        <li>
          <%= link_to '#{ url_for(path) }', 
                      class: 'flex gap-4btn #{is_active ? "btn-outline btn-primary text-white" : "btn-ghost" }' do %>
              <span class="flex-1">#{ label ? label : controller_name.humanize }</span>
          <% end %>
        </li>
    })
  end
end
