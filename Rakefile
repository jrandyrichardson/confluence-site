require 'html-proofer'

task :test do
#  sh "bundle exec jekyll build"
  options = { :assume_extension => true, :disable_external => true, :file_ignore => [/download/] }
  HTMLProofer.check_directory("./_site", options).run
end
