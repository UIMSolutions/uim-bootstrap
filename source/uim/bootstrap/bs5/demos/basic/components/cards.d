module uim.bootstrap.bs5.demos.components.cards;

import uim.bootstrap;

static this() {
	demoBS5.pages("basic/components/cards", new class DH5AppPage {
		this() { 
			super(); 
			this
			.created(DateTime(2020, 12, 20, 10, 10, 0))
			.changed(timeLastModified(__FILE_FULL_PATH__))
			.parameters([
					"pageTitle": "Cards - Bootstrap 5 Demo",
          ]);
		} 
			
    override string content() { 
auto textExample = demoBs5Example("text", "Text",  
  H5Div(
    H5H6("Source: Immanuel Kant - What  is  Enlightenment?"),
    BS5Card(["w-50"], 
      BS5CardBody(
        BS5CardText("Enlightenment is the departure of the human being from its self-incurred minority."),
        BS5CardText("Minority is the inability to make use of one's understanding without direction of another.")
      )),
    H5Br,
    BS5Card( 
      BS5CardBody(
        BS5CardText("This minority is self-incurred when the cause of it lies not in the lack of understanding but of resolution and of courage to make use of it without direction of another."),
        BS5CardText("Have courage to make use of your own understanding! is thus the motto of enlightenment.")
      ))
  ), 
  `BS5Card(["w-50"], 
  BS5CardBody(
    BS5CardText("..."),
    BS5CardText("...")
  )),
BS5Card( 
  BS5CardBody(
    BS5CardText("..."),
    BS5CardText("...")
  ))`, `<div class="card w-50">
  <div class="card-body">
    <p class="card-text">...</p>
    <p class="card-text">...</p>
  </div>
</div>
<div class="card">
  <div class="card-body">
    <p class="card-text">...</p>
    <p class="card-text">...</p>
  </div>
</div>`);

auto titleExample = demoBs5Example("title", "Title",  
  H5Div(
    BS5Card(["w-50"], 
      BS5CardBody(
        BS5CardTitle("This is a Card title"))),
    H5Br,
    BS5Card( 
      BS5CardBody(
        BS5CardTitle("This is a long Card title")))
  ), 
  `BS5Card(["w-50"], 
  BS5CardBody(
    BS5CardTitle("..."))),
BS5Card( 
  BS5CardBody(
    BS5CardTitle("...")))
`, `<div class="card w-50">
  <div class="card-body">
    <h4 class="card-title">...</h4>
  </div>
</div>
<div class="card">
  <div class="card-body">
    <h4 class="card-title">...</h4>
  </div>
</div>`);

auto subtitleExample = demoBs5Example("subtitle", "Subtitle",
  H5Div(
    BS5Card(["w-50"], 
      BS5CardBody(
        BS5CardSubtitle("Card subtitle"))),
    H5Br,
    BS5Card( 
      BS5CardBody(
        BS5CardSubtitle("Longer card subtitle")))
  ), 
  `BS5Card(["w-50"], 
  BS5CardBody(
    BS5CardSubtitle("Card subtitle"))),
BS5Card( 
  BS5CardBody(
    BS5CardSubtitle("Longer card subtitle")))
`, ``);

auto buttonExample = demoBs5Example("button", "Button",
  H5Div(
    BS5Card(["w-50"], 
      BS5CardBody(
        BS5ButtonLink(["btn-primary"], "Button"))),
    H5Br,
    BS5Card( 
      BS5CardBody(
        BS5ButtonLink(["btn-primary"], "Long Button")))
  ), 
  `BS5Card(["w-50"], 
  BS5CardBody(
    BS5ButtonLink(["btn-primary"], "Button"))),
BS5Card( 
  BS5CardBody(
    BS5ButtonLink(["btn-primary"], "Long Button")))`, 
`<div class="card w-50">
  <div class="card-body">
    <a class="btn btn-primary" type="button">Button</a>
  </div>
</div>
<div class="card">
  <div class="card-body">
    <a class="btn btn-primary" type="button">Long Button</a>
  </div>
</div>`);

auto linksExample = demoBs5Example("links", "Links",
  H5Div(
    BS5CardBody(
      BS5CardLink(["href":"#"], "Card link 1"),
      BS5CardLink(["href":"#"], "Card link 2"),
      BS5CardLink(["href":"#"], "Card link 3"))
  ), 
  `BS5CardBody(
  BS5CardLink(["href":"#"], "Card link 1"),
  BS5CardLink(["href":"#"], "Card link 2"),
  BS5CardLink(["href":"#"], "Card link 3"))`, 
  `<div class="card-body">
  <a class="card-link" href="#">Card link 1</a>
  <a class="card-link" href="#">Card link 2</a>
  <a class="card-link" href="#">Card link 3</a>
</div>`);

auto lgExample = demoBs5Example("listgroup", "List Group",
  H5Div(
    BS5Card(["w-50"], 
      BS5List(["list-group-flush"],
        BS5ListItem("List group item 1"),
        BS5ListItem("List group item 2"),
        BS5ListItem("List group item 3"))),
    H5Br,
    BS5Card(
      BS5List(["list-group-flush"],
        BS5ListItem("List group item 1"),
        BS5ListItem("List group item 2"),
        BS5ListItem("List group item 3")))          
  ), 
  `BS5Card(["w-50"], 
  BS5List(["list-group-flush"],
    BS5ListItem("List group item 1"),
    BS5ListItem("List group item 2"),
    BS5ListItem("List group item 3"))),
BS5Card( 
  BS5List(["list-group-flush"],
    BS5ListItem("List group item 1"),
    BS5ListItem("List group item 2"),
    BS5ListItem("List group item 3")))`, 
  ``);

auto headerExample = demoBs5Example("header", "Header",
  H5Div(
    BS5Card(["w-50"], 
      BS5CardHeader("Card header")),
    H5Br,
    BS5Card( 
      BS5CardHeader("Card header"))
  ), 
  `BS5Card(["w-50"], 
  BS5CardHeader("Card header")),
BS5Card(
  BS5CardHeader("Long card header"))
`, ``);

auto footerExample = demoBs5Example("footer", "Footer",
  H5Div(
    BS5Card(["w-50"], 
      BS5CardFooter("Created DD-MM-YYYY")),
    H5Br,
    BS5Card(
      BS5CardFooter("Long Footer"))
    ), 
    `BS5Card(["w-50"], 
  BS5CardFooter("Created DD-MM-YYYY")),
BS5Card(["w-50"], 
  BS5CardFooter("Long Footer"))`, 
``);

auto imagesExample = demoBs5Example("images", "Cards with images", 
  H5Div(
    H5H5(["text-muted", "mt-3"], "Top"), 
    BS5Card(["w-50"], 
      BS5CardImage(["src":"/img/400x200.png", "alt":"Card image in the top"]),
      BS5CardBody(
        BS5CardTitle("Card title"), 
        BS5CardText("Lorem ipsum dolor sit amet, consectetur adipiscing elit. In laoreet pellentesque lorem sed elementum. Suspendisse maximus convallis ex. Etiam eleifend velit leo.")
      )),
    H5H5(["text-muted", "mt-3"], "Bottom"), 
    BS5Card(["w-50"], 
      BS5CardBody(
        BS5CardTitle("Card title"), 
        BS5CardText("Lorem ipsum dolor sit amet, consectetur adipiscing elit. In laoreet pellentesque lorem sed elementum. Suspendisse maximus convallis ex. Etiam eleifend velit leo.")),
      BS5CardImage(["card-img-bottom"], ["src":"/img/400x200.png", "alt":"Card image in the bottom"])
    ),
    H5H5(["text-muted", "mt-3"], "Overlay"), 
    BS5Card(["w-50"], 
      BS5CardImage(["src":"/img/400x200.png", "alt":"Card image as an overlay"],
        BS5CardOverlay(
          BS5CardTitle("Card title"), 
          BS5CardText("Lorem ipsum dolor sit amet, consectetur adipiscing elit. In laoreet pellentesque lorem sed elementum. Suspendisse maximus convallis ex. Etiam eleifend velit leo.")
        )))),``, ``);

auto tabsExample = demoBs5Example("tabs", "Tab navigation",
  H5Div(
    BS5Card(["w-50"], 
      BS5CardHeader(
        BS5Nav(["nav-tabs", "card-header-tabs"],
          BS5NavItem(
            BS5NavLink(["active"], ["href":"#"], "Active")),
          BS5NavItem(
            BS5NavLink(["href":"#"], "Link")),
          BS5NavItem(
            BS5NavLink(["disabled"], ["href":"#"], "Disabled")))),
      BS5CardBody(
        BS5CardTitle("Card title"), 
        BS5CardText("Lorem ipsum dolor sit amet, consectetur adipiscing elit. In laoreet pellentesque lorem sed elementum. Suspendisse maximus convallis ex. Etiam eleifend velit leo.")
      ))), ``, ``);

      /*

demoBs5Example("pills", "Pill Navigation",
  H5Div(
    BS5Card(["w-50"], 
      BS5CardHeader(
        BS5Nav(["nav-pills", "card-header-pills"],
          BS5NavItem(
            BS5NavLink(["active"], ["href":"#"], "Active")),
          BS5NavItem(
            BS5NavLink(["href":"#"], "Link")),
          BS5NavItem(
            BS5NavLink(["disabled"], ["href":"#"], "Disabled")))),
      BS5CardBody(
        BS5CardTitle("Card title"), 
        BS5CardText("Lorem ipsum dolor sit amet, consectetur adipiscing elit. In laoreet pellentesque lorem sed elementum. Suspendisse maximus convallis ex. Etiam eleifend velit leo.")
      ))), ``, ``),

demoBs5Example("every", "Everything",
  H5Div(
    BS5Card(["w-50"], 
      BS5CardHeader(
        BS5Nav(["nav-pills", "card-header-pills"],
          BS5NavItem(
            BS5NavLink(["active"], ["href":"#"], "Active")),
          BS5NavItem(
            BS5NavLink(["href":"#"], "Link")),
          BS5NavItem(
            BS5NavLink(["disabled"], ["href":"#"], "Disabled")))),
      BS5CardImage(["src":"/img/400x200.png", "alt":"Card image"]),
      BS5CardBody(
        BS5CardTitle("Card title"), 
        BS5CardSubtitle("Card subtitle"),
        BS5CardText("Lorem ipsum dolor sit amet, consectetur adipiscing elit. In laoreet pellentesque lorem sed elementum. Suspendisse maximus convallis ex. Etiam eleifend velit leo."),
        BS5CardLink(["href":"#"], "Card link"),
        BS5CardLink(["href":"#"], "Card link"),
        BS5CardLink(["href":"#"], "Card link"),
        BS5List(["list-group-flush"],
          BS5ListItem("List group item"),
          BS5ListItem("List group item"),
          BS5ListItem("List group item"))),
      BS5CardFooter("Created DD-MM-YYYY"))), ``, ``),

demoBs5Example("background", "Hintergrundfarben",
  H5Div(
    BS5Card(["text-white bg-primary w-50 mb-4"],
      BS5CardBody(
        BS5CardTitle("Card title"), 
        BS5CardText("Lorem ipsum dolor sit amet, consectetur adipiscing elit. In laoreet pellentesque lorem sed elementum. Suspendisse maximus convallis ex. Etiam eleifend velit leo."),
        BS5ButtonLink(["btn-primary"], "Button"))),
    BS5Card(["text-white", "bg-secondary", "w-50 mb-4"],
      BS5CardBody(
        BS5CardTitle("Card title"), 
        BS5CardText("Lorem ipsum dolor sit amet, consectetur adipiscing elit. In laoreet pellentesque lorem sed elementum. Suspendisse maximus convallis ex. Etiam eleifend velit leo."),
        BS5ButtonLink(["btn-primary"], "Button"))),
    BS5Card(["text-white bg-success w-50 mb-4"],
      BS5CardBody(
        BS5CardTitle("Card title"), 
        BS5CardText("Lorem ipsum dolor sit amet, consectetur adipiscing elit. In laoreet pellentesque lorem sed elementum. Suspendisse maximus convallis ex. Etiam eleifend velit leo."),
        BS5ButtonLink(["btn-primary"], "Button"))),
    BS5Card(["text-white bg-danger w-50 mb-4"],
      BS5CardBody(
        BS5CardTitle("Card title"), 
        BS5CardText("Lorem ipsum dolor sit amet, consectetur adipiscing elit. In laoreet pellentesque lorem sed elementum. Suspendisse maximus convallis ex. Etiam eleifend velit leo."),
        BS5ButtonLink(["btn-primary"], "Button"))),
    BS5Card(["text-white bg-warning w-50 mb-4"],
      BS5CardBody(
        BS5CardTitle("Card title"), 
        BS5CardText("Lorem ipsum dolor sit amet, consectetur adipiscing elit. In laoreet pellentesque lorem sed elementum. Suspendisse maximus convallis ex. Etiam eleifend velit leo."),
        BS5ButtonLink(["btn-primary"], "Button"))),
    BS5Card(["text-white bg-info w-50 mb-4"],
      BS5CardBody(
        BS5CardTitle("Card title"), 
        BS5CardText("Lorem ipsum dolor sit amet, consectetur adipiscing elit. In laoreet pellentesque lorem sed elementum. Suspendisse maximus convallis ex. Etiam eleifend velit leo."),
        BS5ButtonLink(["btn-primary"], "Button"))),
    BS5Card(["bg-light w-50 mb-4"],
      BS5CardBody(
        BS5CardTitle("Card title"), 
        BS5CardText("Lorem ipsum dolor sit amet, consectetur adipiscing elit. In laoreet pellentesque lorem sed elementum. Suspendisse maximus convallis ex. Etiam eleifend velit leo."),
        BS5ButtonLink(["btn-primary"], "Button"))),
    BS5Card(["text-white bg-dark w-50"],
      BS5CardBody(
        BS5CardTitle("Card title"), 
        BS5CardText("Lorem ipsum dolor sit amet, consectetur adipiscing elit. In laoreet pellentesque lorem sed elementum. Suspendisse maximus convallis ex. Etiam eleifend velit leo."),
        BS5ButtonLink(["btn-primary"], "Button")))), ``, ``),

demoBs5Example("bordertext", "Rahmen- und Textfarben",
  H5Div(
    BS5Card(["border-primary w-50 mb-4"],
      BS5CardBody(["text-primary"],
        BS5CardTitle("Card title"), 
        BS5CardText("Lorem ipsum dolor sit amet, consectetur adipiscing elit. In laoreet pellentesque lorem sed elementum. Suspendisse maximus convallis ex. Etiam eleifend velit leo."),
        BS5ButtonLink(["btn-primary"], "Button"))),
    BS5Card(["border-secondary w-50 mb-4"],
      BS5CardBody(["text-secondary"],
        BS5CardTitle("Card title"), 
        BS5CardText("Lorem ipsum dolor sit amet, consectetur adipiscing elit. In laoreet pellentesque lorem sed elementum. Suspendisse maximus convallis ex. Etiam eleifend velit leo."),
        BS5ButtonLink(["btn-secondary"], "Button"))),
    BS5Card(["border-success w-50 mb-4"],
      BS5CardBody(["text-success"],
        BS5CardTitle("Card title"), 
        BS5CardText("Lorem ipsum dolor sit amet, consectetur adipiscing elit. In laoreet pellentesque lorem sed elementum. Suspendisse maximus convallis ex. Etiam eleifend velit leo."),
        BS5ButtonLink(["btn-success"], "Button"))),
    BS5Card(["border-danger w-50 mb-4"],
      BS5CardBody(["text-danger"],
        BS5CardTitle("Card title"), 
        BS5CardText("Lorem ipsum dolor sit amet, consectetur adipiscing elit. In laoreet pellentesque lorem sed elementum. Suspendisse maximus convallis ex. Etiam eleifend velit leo."),
        BS5ButtonLink(["btn-danger"], "Button"))),
    BS5Card(["border-warning w-50 mb-4"],
      BS5CardBody(["text-warning"],
        BS5CardTitle("Card title"), 
        BS5CardText("Lorem ipsum dolor sit amet, consectetur adipiscing elit. In laoreet pellentesque lorem sed elementum. Suspendisse maximus convallis ex. Etiam eleifend velit leo."),
        BS5ButtonLink(["btn-warning"], "Button"))),
    BS5Card(["border-info w-50 mb-4"],
      BS5CardBody(["text-info"],
        BS5CardTitle("Card title"), 
        BS5CardText("Lorem ipsum dolor sit amet, consectetur adipiscing elit. In laoreet pellentesque lorem sed elementum. Suspendisse maximus convallis ex. Etiam eleifend velit leo."),
        BS5ButtonLink(["btn-info"], "Button"))),
    BS5Card(["border-light w-50 mb-4"],
      BS5CardBody(["bg-dark text-light"],
        BS5CardTitle("Card title"), 
        BS5CardText("Lorem ipsum dolor sit amet, consectetur adipiscing elit. In laoreet pellentesque lorem sed elementum. Suspendisse maximus convallis ex. Etiam eleifend velit leo."),
        BS5ButtonLink(["btn-light"], "Button"))),
    BS5Card(["border-dark w-50"],
      BS5CardBody(["text-dark"],
        BS5CardTitle("Card title"), 
        BS5CardText("Lorem ipsum dolor sit amet, consectetur adipiscing elit. In laoreet pellentesque lorem sed elementum. Suspendisse maximus convallis ex. Etiam eleifend velit leo."),
        BS5ButtonLink(["btn-dark"], "Button")))), ``, ``),

demoBs5Example("bordertext", "Header- und Footerfarben",
  H5Div(
    BS5Card(["border-info w-50"],
      BS5CardHeader(["border-info", "bg-transparent"], "Card header"),
      BS5CardBody(
        BS5CardTitle("Card title"), 
        BS5CardText("Lorem ipsum dolor sit amet, consectetur adipiscing elit. In laoreet pellentesque lorem sed elementum. Suspendisse maximus convallis ex. Etiam eleifend velit leo."),
        BS5ButtonLink(["btn-info"], "Button")),
      BS5CardFooter(["border-info", "bg-transparent"], "Created DD-MM-YYYY"))), ``, ``)~

demoBs5Example("groups", "Kartengruppen",
  H5Div(
    BS5CardGroup(["mb-4"],
      BS5Card(
        BS5CardImage(["src":"/img/300x150.png", "alt":"Card image"]),
        BS5CardBody(
          BS5CardTitle("Card title"), 
          BS5CardText("Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec mattis posuere consequat."))),
      BS5Card(
        BS5CardImage(["src":"/img/300x150.png", "alt":"Card image"]),
        BS5CardBody(
          BS5CardTitle("Card title"), 
          BS5CardText("Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec mattis posuere consequat. 
          Nulla fermentum sodales augue, vitae ornare eros ornare quis. Donec lectus est, congue eu risus quis, tempus sagittis nunc. Donec blandit accumsan augue eu bibendum. 
          Suspendisse pretium facilisis sapien, ac dignissim leo. Phasellus fermentum nulla eget quam congue sagittis. Donec volutpat vel sapien sit amet lobortis. Aenean non vulputate nunc, eu luctus libero."))),
      BS5Card(
        BS5CardImage(["src":"/img/300x150.png", "alt":"Card image"]),
        BS5CardBody(
          BS5CardTitle("Card title"), 
          BS5CardText("Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec mattis posuere consequat. Nulla fermentum sodales augue, vitae ornare eros ornare quis. Donec lectus est, congue eu risus quis, tempus sagittis nunc.")))),
    BS5CardGroup(["mb-4"],
      BS5Card(
        BS5CardImage(["src":"/img/300x150.png", "alt":"Card image"]),
        BS5CardBody(
          BS5CardTitle("Card title"), 
          BS5CardText("Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec mattis posuere consequat.")),
        BS5CardFooter("Created DD-MM-YYYY")), 
      BS5Card(
        BS5CardImage(["src":"/img/300x150.png", "alt":"Card image"]),
        BS5CardBody(
          BS5CardTitle("Card title"), 
          BS5CardText("Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec mattis posuere consequat. Nulla fermentum sodales augue, vitae ornare eros ornare quis. Donec lectus est, congue eu risus quis, tempus sagittis nunc. Donec blandit accumsan augue eu bibendum. Suspendisse pretium facilisis sapien, ac dignissim leo. Phasellus fermentum nulla eget quam congue sagittis. Donec volutpat vel sapien sit amet lobortis. Aenean non vulputate nunc, eu luctus libero.")),
        BS5CardFooter("Created DD-MM-YYYY")),
    BS5Card(
      BS5CardImage(["src":"/img/300x150.png", "alt":"Card image"]),
      BS5CardBody(
        BS5CardTitle("Card title"), 
        BS5CardText("Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec mattis posuere consequat. Nulla fermentum sodales augue, vitae ornare eros ornare quis. Donec lectus est, congue eu risus quis, tempus sagittis nunc.")),
      BS5CardFooter("Created DD-MM-YYYY")))), ``, ``),

demoBs5Example("grid", "Grids Cards",
  H5Div(
    H5H5(["text-muted", "mt-3"], "Default"), 
    BS5Row(["row-cols-1", "row-cols-md-2", "row-cols-xl-3", "row-cols-xxl-4", "g-4 mb-4"],
      BS5Col(
        BS5Card(
          BS5CardImage(["src":"/img/300x150.png", "alt":"Card image"]),
          BS5CardBody(
            BS5CardTitle("Card title"), 
            BS5CardText("Lorem ipsum dolor sit amet, consectetur adipiscing elit. 
            Maecenas feugiat, urna ut pharetra ultricies, augue tellus euismod turpis, vitae semper ipsum augue a velit. 
            Pellentesque id finibus velit. Ut sagittis maximus maximus. In aliquet enim sed turpis mollis ornare. 
            Suspendisse elementum a magna eu luctus. Etiam tincidunt mattis mauris, non lobortis nulla tempor in. 
            Sed lacinia metus viverra, scelerisque enim sed, sollicitudin magna. Sed non augue sit amet nisl tincidunt ultrices. 
            Praesent nec lacus eget tortor ultricies pulvinar. Praesent euismod ut lorem sit amet bibendum.")))),
      BS5Col(
        BS5Card(
          BS5CardImage(["src":"/img/300x150.png", "alt":"Card image"]),
          BS5CardBody(
            BS5CardTitle("Card title"), 
            BS5CardText("Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas feugiat, urna ut pharetra ultricies, augue tellus euismod turpis, vitae semper ipsum augue a velit. 
            Pellentesque id finibus velit. Ut sagittis maximus maximus. In aliquet enim sed turpis mollis ornare. Suspendisse elementum a magna eu luctus. Etiam tincidunt mattis mauris, non lobortis nulla tempor in.")))),
      BS5Col(
        BS5Card(
          BS5CardImage(["src":"/img/300x150.png", "alt":"Card image"]),
          BS5CardBody(
            BS5CardTitle("Card title"), 
            BS5CardText("Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas feugiat, urna ut pharetra ultricies, augue tellus euismod turpis, vitae semper ipsum augue a velit. Pellentesque id finibus velit.")))),
      BS5Col(
        BS5Card(
          BS5CardImage(["src":"/img/300x150.png", "alt":"Card image"]),
          BS5CardBody(
            BS5CardTitle("Card title"), 
            BS5CardText("Lorem ipsum dolor sit amet, consectetur adipiscing elit.")))))), ``, ``),

demoBs5Example("equal", "Gleichohe Karten",
  BS5Row(["row-cols-1 row-cols-md-2 row-cols-xl-3 row-cols-xxl-4 g-4 mb-4"],
    BS5Col(
      BS5Card(["h-100"],
        BS5CardImage(["src":"/img/300x150.png", "alt":"Card image"]),
        BS5CardBody(
          BS5CardTitle("Card title"), 
          BS5CardText("Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas feugiat, urna ut pharetra ultricies, augue tellus euismod turpis, vitae semper ipsum augue a velit. Pellentesque id finibus velit. Ut sagittis maximus maximus. In aliquet enim sed turpis mollis ornare. Suspendisse elementum a magna eu luctus. Etiam tincidunt mattis mauris, non lobortis nulla tempor in. Sed lacinia metus viverra, scelerisque enim sed, sollicitudin magna. 
          Sed non augue sit amet nisl tincidunt ultrices. Praesent nec lacus eget tortor ultricies pulvinar. Praesent euismod ut lorem sit amet bibendum.")))), 
    BS5Col(
      BS5Card(["h-100"],
        BS5CardImage(["src":"/img/300x150.png", "alt":"Card image"]),
        BS5CardBody(
          BS5CardTitle("Card title"), 
          BS5CardText("Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas feugiat, urna ut pharetra ultricies, augue tellus euismod turpis, vitae semper ipsum augue a velit. 
          Pellentesque id finibus velit. Ut sagittis maximus maximus. In aliquet enim sed turpis mollis ornare. Suspendisse elementum a magna eu luctus. Etiam tincidunt mattis mauris, non lobortis nulla tempor in.")))),
    BS5Col(
      BS5Card(["h-100"],
        BS5CardImage(["src":"/img/300x150.png", "alt":"Card image"]),
        BS5CardBody(
          BS5CardTitle("Card title"), 
          BS5CardText("Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas feugiat, urna ut pharetra ultricies, augue tellus euismod turpis, vitae semper ipsum augue a velit. Pellentesque id finibus velit.")))),
    BS5Col(
      BS5Card(["h-100"],
        BS5CardImage(["src":"/img/300x150.png", "alt":"Card image"]),
        BS5CardBody(
          BS5CardTitle("Card title"), 
          BS5CardText("Lorem ipsum dolor sit amet, consectetur adipiscing elit."))))), ``, ``),

demoBs5Example("footer", "Mit Footer",
  BS5Row(["row-cols-1 row-cols-md-2 row-cols-xl-3 row-cols-xxl-4 g-4 mb-4"],
    BS5Col(
      BS5Card(["h-100"],
        BS5CardImage(["src":"/img/300x150.png", "alt":"Card image"]),
        BS5CardBody(
          BS5CardTitle("Card title"), 
          BS5CardText("Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas feugiat, urna ut pharetra ultricies, augue tellus euismod turpis, vitae semper ipsum augue a velit. 
          Pellentesque id finibus velit. Ut sagittis maximus maximus. In aliquet enim sed turpis mollis ornare. 
          Suspendisse elementum a magna eu luctus. Etiam tincidunt mattis mauris, non lobortis nulla tempor in. 
          Sed lacinia metus viverra, scelerisque enim sed, sollicitudin magna. Sed non augue sit amet nisl tincidunt ultrices. Praesent nec lacus eget tortor ultricies pulvinar. Praesent euismod ut lorem sit amet bibendum.")),
        BS5CardFooter("Created DD-MM-YYYY"))),
    BS5Col(
      BS5Card(["h-100"],
        BS5CardImage(["src":"/img/300x150.png", "alt":"Card image"]),
        BS5CardBody(
          BS5CardTitle("Card title"), 
          BS5CardText("Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas feugiat, urna ut pharetra ultricies, augue tellus euismod turpis, vitae semper ipsum augue a velit. 
          Pellentesque id finibus velit. Ut sagittis maximus maximus. In aliquet enim sed turpis mollis ornare. Suspendisse elementum a magna eu luctus. Etiam tincidunt mattis mauris, non lobortis nulla tempor in.")),
        BS5CardFooter("Created DD-MM-YYYY"))),
    BS5Col(
      BS5Card(["h-100"],
        BS5CardImage(["src":"/img/300x150.png", "alt":"Card image"]),
        BS5CardBody(
          BS5CardTitle("Card title"), 
          BS5CardText("Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas feugiat, urna ut pharetra ultricies, augue tellus euismod turpis, vitae semper ipsum augue a velit. Pellentesque id finibus velit.")),
        BS5CardFooter("Created DD-MM-YYYY"))),
    BS5Col(
      BS5Card(["h-100"],
        BS5CardImage(["src":"/img/300x150.png", "alt":"Card image"]),
        BS5CardBody(
          BS5CardTitle("Card title"), 
          BS5CardText("Lorem ipsum dolor sit amet, consectetur adipiscing elit.")),
        BS5CardFooter("Created DD-MM-YYYY")))), ``, ``)
          ),
          H5Div(["col-12", "col-lg-2"]) */
      return 
H5Main(["style":"margin-top:70px;"], 
  H5Div(["container-fluid", "mt-3", "bg-light"],
    bs5Breadcrumbs(["/", "/demos", "/demos/uim-bootstrap", "/demos/uim-bootstrap/5/", "/demos/uim-bootstrap/5/basic/", "/demos/uim-bootstrap/5/basic/components"], 
    ["UI Manufaktur", "Demos", "uim-bootstrap", "Bootstrap 5", "Basic", "Components"], "Cards")),
  BS5Container(["mt-3"]).row(
    H5Div(["col-12", "col-lg-2"], 
      listLevels("basic"),
      listAreas("basic", "components"),
      listSections("basic", "components", "cards")),
    H5Div(["col-12", "col-lg-8"], 
      dateInfo(this),
      H5H2(H5Small("Bootstrap 5 Demo "), H5String("Using Cards")),
      H5Hr,
      
      textExample,
      titleExample,
      subtitleExample,
      buttonExample,
      linksExample,
      lgExample,
      headerExample,
      footerExample,
      imagesExample,
      tabsExample

    ),
    H5Div(["col-12", "col-lg-2"]))).toString;
    }
  });
}  
 

/*
Cards, ein Element für viele Anlässe
Wenn Sie in diesem Bereich bestimmte Zeilen im Transkript auswählen, wird die zugehörige Zeitmarke im Video angesteuert.
Cards sind ein Element innerhalb von Bootstrap, um genau zu sein eine Komponente, die in sich jetzt eine größere Anzahl an ehemaligen Komponenten vereint und dementsprechend umfangreich ist das Thema Card in Wirklichkeit. Ich habe jetzt hier in einer älteren Version einen Bereich auf meiner Seite, wo einfach drei Absätze jetzt im Moment noch untereinander liegen, die ich in Cards umbaue, beziehungsweise die ich schon in Cards umgebaut habe, um Ihnen die Funktionsweise von Cards in Aktion zu zeigen. Wenn sie selbst sich über Cards schlau machen wollen, dann finden sie unter den Komponenten, „Components“ den Eintrag „Card“ und dadurch, dass die Cards sich eben eine größere Anzahl anderer Elemente ersetzt haben, finden Sie auf der rechten Seite diese Menge an Möglichkeiten, die sie mit Cards ausführen können. Sie können in Ruhe sich es durchschauen und durchscrollen. Meine momentane Lösung sieht auf jeden Fall so aus. Das heißt, aus diesen drei Absätzen sind jetzt drei nebeneinanderliegende Karten geworden. Und das einzige was ich jetzt noch bei allen drei Karten hinzufügen möchte ist ein Bild im Kopfbereich, das über die gesamte Länge geht. Aber zuerst sehen wir uns mal an, was überhaupt da ist und abgesehen jetzt von dem umfassenden Container, der das Row-Element in sich beherbergt und den einzelnen Spalten-Einträgen haben wir jetzt eben einen zusätzlichen Behälter der die Klasse „card“ trägt und der für diesen Rahmen und diesen abgerundeten Rand zuständig ist und dann haben wir einen „card-body“, der seinerseits jetzt für ein gewisses Padding gegenüber dem übergeordneten Element zuständig ist und dann haben wir noch einen eigenen kleinen Absatz der „card-title“ heißt, ich habe hier jetzt eben keine Überschriftsebene mehr, sondern ich verwende nur den „card-title“, der nichts anderes tut als etwas Abstand zwischen dem Titel und dem normalen Fließtext zu schaffen und im Fließtext könnte ich jetzt noch die Klasse „card-text“ mitgeben, was ich jetzt aber nicht mache, weil es für meinen Bedarf hier nicht notwendig ist. Und das habe ich bei allen drei Absätzen gemacht, womit ich jetzt eben zum gerade gezeigten Ergebnis gekommen bin. Wenn ich jetzt noch ein Bild einfügen möchte, so hier auf dieser Ebene, so ist das einzige was ich beim Einfügen des Bilds beachten muss, die Art wo ich es einfüge. Und zwar das Bild, ich hole mir das jetzt als Vorlage mit „Strg+C“ in meine Zwischenablage, muss aber oberhalb vom „card-body“ zu liegen kommen, damit es nicht ebenfalls mit diesem Padding versehen wird, das eben die Aufgabe des „card-body“ ist. Okay, ich habe das schon in der Zwischenablage, das heißt ich wechsle jetzt zurück zu meiner höchst eigenen Karte und werde genau hier jetzt dieses Image einfügen. Das Image hat eine eigene Klasse „card-img-top“, das dafür sorgt, dass das Bild sich dann auch passend verhält und ich muss jetzt eigentlich nur noch in mein Bildverzeichnis gehen und ein passendes Bild aussuchen. Und vielleicht hier auch noch den Alternativtext ändern. Okay, und dasselbe mache ich jetzt noch mal hier mit der zweiten Karte, indem ich wieder ein Bild einfüge und dieses Mal verzichte ich jetzt auf den Alternativtext. Wir wissen, dass er wichtig ist und ein drittes Mal auch noch hier. Mit meinem Treppenbild, das Feld C. So, und einfach nur durch dieses Verwenden der Klasse „card-img-top“ und mit der Positionierung oberhalb vom „card-body“, wenn ich das Ganze speichere und mir jetzt meine Karten wieder ausgeben lasse, sorgt dafür, dass die Bilder sich perfekt eingliedern in diese Karte und die Karte so gesehen auch ziemlich gut aufpeppen. Und so können Sie mit etwas mehr Markup aber trotzdem recht wenig Aufwand mit Hilfe von Cards, in sich abgeschlossene Informationseinheiten erzeugen.
*/