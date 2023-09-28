import { Application } from "@hotwired/stimulus"
import Notification from 'stimulus-notification'
import AnimatedNumber from 'stimulus-animated-number'

const application = Application.start()
application.register('notification', Notification)
application.register('animated-number', AnimatedNumber)



// Configure Stimulus development experience
application.debug = false
window.Stimulus   = application

export { application }

