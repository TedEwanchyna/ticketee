class Notifier < ActionMailer::Base
  #default from: "ticketee@gmail.com"
  #default from: "solicadmi@gmail.com"

  def comment_updated(comment, user)
    @comment = comment
    @user = user
#    mail(:to => user.email, :from => "solicadmi+#{comment.project.id}+#{comment.ticket_id}@gmail.com",
#         :subject => "[ticketee] #{comment.ticket.project.name} - #{comment.ticket.title}")
#    mail(:to => user.email, :from => "Ticketee <solicadmi+#{comment.project.id}+#{comment.ticket_id}@gmail.com>",
    from = "solicadmi+#{comment.project.id}+#{comment.ticket_id}@gmail.com"
    reply_to = "Ticketee <solicadmi+#{comment.project.id}+#{comment.ticket_id}@gmail.com>"

    mail(:to => user.email, :reply_to => reply_to, :from => from,
         :subject => "[ticketee] #{comment.ticket.project.name} - #{comment.ticket.title}")
    end

end
