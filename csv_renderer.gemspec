# Provide a simple gemspec so you can easily use your enginex
# project in your rails apps through git.
Gem::Specification.new do |s|
  s.name = "csv_renderer"
  s.summary = "A Rails3 renderer for the Comma Seperated Value (CSV) format."
  s.description = "A Rails3 renderer for the Comma Seperated Value (CSV) format.  Thank-you to @josevalim for his excellent Crafting Rails3 Applications book which inspired this gem."
  s.files = Dir["lib/**/*"] + ["MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.version = "0.0.1"
end
