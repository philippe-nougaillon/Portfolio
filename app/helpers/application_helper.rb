module ApplicationHelper
  def navbar_item(action_name, path, label = nil)

    is_active = params[:action] == action_name

    render(inline: %{
        <li>
          <%= link_to '#{ url_for(path) }', 
                      class: 'flex gap-4 #{ "underline underline-offset-8" if is_active }' do %>
              <span class="flex-1">#{ label ? label : controller_name.humanize }</span>
          <% end %>
        </li>
    })
  end

  class CodeRayify < Redcarpet::Render::HTML
    def block_code(code, language)
      CodeRay.scan(code, language).div
    end
  end

  # Create a custom renderer that sets a custom class for block-quotes.
  class CustomRender < Redcarpet::Render::HTML
    def header(text, header_level)
      %(<h#{header_level} class="font-bold text-#{3 - header_level}xl my-6">#{text}</h#{header_level}>)
    end

    def block_code(code, language)
      %(<p class="bg-slate-100 p-3 my-3"><code>#{code}</code></p>)
    end

    def link(link, title, content)
      %(<a href="#{link}" class="underline" target="_blank">#{content}</a>)
    end

  end

  def markdown(text)
    coderayified = CodeRayify.new(:filter_html => true, :hard_wrap => true)
    options = {
      fenced_code_blocks: true,
      no_intra_emphasis: true,
      autolink: true,
      lax_html_blocks: true
    }
    # markdown_to_html = Redcarpet::Markdown.new(coderayified, options)
    # markdown_to_html.render(text).html_safe
    markdown_to_html = Redcarpet::Markdown.new(CustomRender, options)
    markdown_to_html.render(text).html_safe
  end
end
