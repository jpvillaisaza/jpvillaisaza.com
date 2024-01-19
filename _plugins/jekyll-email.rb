module JekyllEmail
  class Generator < Jekyll::Generator
    def generate(site)
      email = site.config['email']
      site.config['email'] = ENV['EMAIL'] || email
    end
  end
end
