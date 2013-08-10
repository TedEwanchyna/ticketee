Given /^"([^"]*)" can view the "([^"]*)" project$/ do |user, project|
  Permission.create!(:user => User.find_by_email!(user),
                    :thing => Project.find_by_name!(project),
                    :action => "view")
  # note:must add ':user, :thing' to models's attributes or pass ids as below ...
  #uid = User.find_by_email!(user).id
  #pid =  Project.find_by_name!(project).id
  #Permission.create!(:user_id => uid,
  #                  :thing_id => pid,
  #                  :action => "view")
end

