control 'check_website' do

# This seems to fail due to rate limiting
#  describe http('https://api.github.com/repos/VisitBG/example-bananas') do

  describe http('https://github.com/VisitBG/example-bananas') do
    its('status') { should cmp 200 }
    its('body') { should match 'My awesome codebase' }
  end

end
