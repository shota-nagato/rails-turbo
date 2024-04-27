module ApplicationHelper
  def sidebar_link_to(path, emoji, text)
    classes = %w[my-1 text-white font-bold flex rounded py-2]
    classes << "bg-blue-600" if current_page?(path)

    link_to(path, class: classes) do
      tag.span(class: "mx-2") { emoji } + tag.span { text }
    end
  end
end
