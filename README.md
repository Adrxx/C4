# C4
### Version 0.1.1 Beta

This project rocks and uses MIT-LICENSE.

RECENTLY ADDED
* Fixed roles setup bug
* Fast Contact display partial ;)
* Contact Mailer too!
* Text-only buttons
* Contact Module
* Morphed Skeleton framework
* Only ES language


TO-DO
* Titles on /admin/auth...
* Maybe 404.html pages?
* ES EN language selection


LONG TERM TO-DO
* Deeper module customization

### Some tools to import:
* SASS (Last one required for Mailer Behaivior)
```sass
@import "normalize.css/normalize";
@import "animate.css/animate";
@import "bourbon/app/assets/stylesheets/bourbon";
@import "neat/app/assets/stylesheets/neat";
@import "c4/_morphed-skeleton";
@import "c4/_c4";
```
* CoffeeScript with sprockets (Required for Mailer Behaivior)
```coffeescript
//= require c4/c4
```

#Useful commands
```erb
<%= c4_queries_test %>
<%= c4_contact_data %>
<%= c4_contact_mailer %>
```
