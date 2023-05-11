import { Application } from "@hotwired/stimulus"
import 'angular'
import 'angular-resource'
import 'angular-rails-templates'
import 'angular-rails-csrf'

const application = Application.start()

// Configure Stimulus development experience
application.debug = false
window.Stimulus   = application

export { application }
