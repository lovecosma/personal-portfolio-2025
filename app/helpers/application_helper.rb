module ApplicationHelper
  def page_title
    content_for(:title) || "Matthew Williams | Full Stack Software Engineer"
  end

  def page_description
    content_for(:description) || "Full-stack software engineer with 4+ years of experience building web applications with Ruby on Rails. Based in Colorado Springs, CO."
  end

  def inline_icon(filename, **attrs)
    path = Rails.root.join("app/assets/images/icons/#{filename}")
    svg = File.read(path)
    if attrs.any?
      attr_string = attrs.map { |k, v| "#{k}=\"#{v}\"" }.join(" ")
      svg = svg.sub("<svg", "<svg #{attr_string}")
    end
    svg.html_safe
  end

  def page_keywords
    content_for(:keywords) || "Matthew Williams, Software Engineer, Ruby on Rails, Full Stack Developer, Web Development, Colorado Springs, Rails Developer"
  end
end
