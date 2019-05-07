class EventmailerMailer < ApplicationMailer
	  default from: 'no-reply@monsite.fr'
 
  def eventmail(attendance)
    #on récupère l'instance user pour ensuite pouvoir la passer à la view en @user
    @attendance = attendance

    #on définit une variable @url qu'on utilisera dans la view d’e-mail
    @url  = 'http://monsite.fr/login' 
    @user = User.find(@attendance.user_id)
    @event = Event.find(@attendance.event_id)
    @creator = User.find(@event.user_id)
    # c'est cet appel à mail() qui permet d'envoyer l’e-mail en définissant destinataire et sujet.
    mail(to: @creator.email, subject: 'bon rencard ! ;) ') 
  end
end
