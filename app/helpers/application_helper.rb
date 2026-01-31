module ApplicationHelper
  def default_meta_tags
    {
      site: "Matthew Williams - Software Engineer",
      title: "Matthew Williams | Full Stack Software Engineer",
      description: "Full-stack software engineer with 4+ years of experience building web applications with Ruby on Rails. Based in Colorado Springs, CO.",
      keywords: "Matthew Williams, Software Engineer, Ruby on Rails, Full Stack Developer, Web Development, Colorado Springs, Rails Developer",
      og: {
        title: :title,
        description: :description,
        type: "website",
        url: request.original_url,
        image: request.base_url + "/icon.png",
        site_name: "Matthew Williams Portfolio"
      },
      twitter: {
        card: "summary",
        title: :title,
        description: :description,
        image: request.base_url + "/icon.png"
      }
    }
  end

  def page_title
    content_for(:title) || "Matthew Williams | Full Stack Software Engineer"
  end

  def page_description
    content_for(:description) || "Full-stack software engineer with 4+ years of experience building web applications with Ruby on Rails. Based in Colorado Springs, CO."
  end

  def page_keywords
    content_for(:keywords) || "Matthew Williams, Software Engineer, Ruby on Rails, Full Stack Developer, Web Development, Colorado Springs, Rails Developer"
  end
end
