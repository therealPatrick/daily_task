// Configure your import map in config/importmap.rb. Read more: https://github.com/rails/importmap-rails
import { Application } from "@hotwired/stimulus"
import Dropdown from 'stimulus-dropdown'


const application = Application.start()
application.register('dropdown', Dropdown)