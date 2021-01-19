module uim.bootstrap.bs5.demos.components.carousels;

import uim.bootstrap;

static this() {
	demoBS5.pages("components/carousels", new class DH5AppPage {
		this() { 
			super(); 
			this
			.created(DateTime(2020, 12, 20, 10, 10, 0))
			.changed(timeLastModified(__FILE_FULL_PATH__))
			.parameters([
					"pageTitle": "Carousels - Bootstrap 5 Demo",
          ]);
		} 
			
    override string content() { 
      return 
H5Main(
  H5Div(["container-fluid", "mt-3", "bg-light"],
    bs5Breadcrumbs(["/", "/demos", "/demos/uim-bootstrap", "/demos/uim-bootstrap/5", "/demos/uim-bootstrap/5/components"], 
    ["UI Manufaktur", "Demos", "uim-bootstrap", "Bootstrap 5", "Components"], "Carousels")),
  BS5Container(["mt-3"]).row(
    H5Div(["col-12", "col-lg-2"]),
    H5Div(["col-12", "col-lg-8"], 
      H5H2(["display-4"], "Carousels"),
      H5Hr,

demoBs5Example("slidesonly", "Slides Only",  
  H5Div(
    BS5Carousel("carouselSlidesOnly", ["slide"], ["data-bs-ride":"carousel"], 
      BS5CarouselInner(
        BS5CarouselItem(["active"], 
          H5Image(["d-block", "w-100"], ["src":"../img/1200x600-success.png", "alt":"First slide"])), 
        BS5CarouselItem( 
          H5Image(["d-block", "w-100"], ["src":"../img/1200x600-danger.png", "alt":"Second slide"])),
        BS5CarouselItem(          
          H5Image(["d-block", "w-100"], ["src":"../img/1200x600-warning.png", "alt":"Third slide"])), 
        BS5CarouselItem( 
          H5Image(["d-block", "w-100"], ["src":"../img/1200x600-info.png", "alt":"Fourth slide"]))
      ))), ``, ``),

demoBs5Example("controls", "Controls",  
  H5Div(
    BS5Carousel("carouselControls", ["slide"], ["data-bs-ride":"carousel"], 
      BS5CarouselInner(
        BS5CarouselItem(["active"], 
          H5Image(["d-block", "w-100"], ["src":"../img/1200x600-success.png", "alt":"First slide"])),
        BS5CarouselItem( 
          H5Image(["d-block", "w-100"], ["src":"../img/1200x600-danger.png", "alt":"Second slide"])),
        BS5CarouselItem(          
          H5Image(["d-block", "w-100"], ["src":"../img/1200x600-warning.png", "alt":"Third slide"])), 
        BS5CarouselItem( 
          H5Image(["d-block", "w-100"], ["src":"../img/1200x600-info.png", "alt":"Fourth slide"]))),
      BS5CarouselControlPrev(["href":"#carouselControls", "role":"button", "data-bs-slide":"prev"], 
        H5Span(["carousel-control-prev-icon"], ["aria-hidden":"true"]), 
        H5Span(["visually-hidden"], "Previous")),
      BS5CarouselControlNext(["href":"#carouselControls", "role":"button", "data-bs-slide":"next"],
        H5Span(["carousel-control-next-icon"], ["aria-hidden":"true"]), 
        H5Span(["visually-hidden"], "Previous"))
    )), ``, ``), 

demoBs5Example("indicators", "Indicators",  
  H5Div(
    BS5Carousel("carouselIndicators", ["slide"], ["data-bs-ride":"carousel"], 
      BS5CarouselIndicators(
        BS5CarouselIndicator(["active"], ["data-bs-target":"#carouselIndicators", "data-bs-slide-to":"0"]),
        BS5CarouselIndicator(["data-bs-target":"#carouselIndicators", "data-bs-slide-to":"1"]),
        BS5CarouselIndicator(["data-bs-target":"#carouselIndicators", "data-bs-slide-to":"2"]),
        BS5CarouselIndicator(["data-bs-target":"#carouselIndicators", "data-bs-slide-to":"3"])
      ),
      BS5CarouselInner(
        BS5CarouselItem(["active"], 
          H5Image(["d-block", "w-100"], ["src":"../img/1200x600-success.png", "alt":"First slide"])),
        BS5CarouselItem( 
          H5Image(["d-block", "w-100"], ["src":"../img/1200x600-danger.png", "alt":"Second slide"])),
        BS5CarouselItem(          
          H5Image(["d-block", "w-100"], ["src":"../img/1200x600-warning.png", "alt":"Third slide"])), 
        BS5CarouselItem( 
          H5Image(["d-block", "w-100"], ["src":"../img/1200x600-info.png", "alt":"Fourth slide"])))
    )), ``, ``),

demoBs5Example("captions", "Captions",  
  H5Div(
    BS5Carousel("carouselCaptions", ["slide"], ["data-bs-ride":"carousel"], 
      BS5CarouselInner(
        BS5CarouselItem(["active"], 
          H5Image(["d-block", "w-100"], ["src":"../img/1200x600-success.png", "alt":"First slide"]),
          H5Div(["carousel-caption"], 
            H5H3("Caption"),
            H5P("This text describes the first slide")
          )
        ),
        BS5CarouselItem( 
          H5Image(["d-block", "w-100"], ["src":"../img/1200x600-success.png", "alt":"Second slide"]),
          H5Div(["carousel-caption"], 
            H5H3("Caption"),
            H5P("This text describes the second slide")
          )
        ),
        BS5CarouselItem( 
          H5Image(["d-block", "w-100"], ["src":"../img/1200x600-success.png", "alt":"Third slide"]),
          H5Div(["carousel-caption"], 
            H5H3("Caption"),
            H5P("This text describes the third slide")
          )
        ),
        BS5CarouselItem( 
          H5Image(["d-block", "w-100"], ["src":"../img/1200x600-success.png", "alt":"Fourth slide"]),
          H5Div(["carousel-caption"], 
            H5H3("Caption"),
            H5P("This text describes the fourth slide")
          )
        )
      )
    )
  ), ``, ``),

demoBs5Example("every", "Everything<p>Carousel with controls, indicators and captions</p>",  
  H5Div(
    BS5Carousel("carouselCaptions", ["slide"], ["data-bs-ride":"carousel"], 
       BS5CarouselIndicators(
        BS5CarouselIndicator(["active"], ["data-bs-target":"#carouselIndicators", "data-bs-slide-to":"0"]),
        BS5CarouselIndicator(["data-bs-target":"#carouselIndicators", "data-bs-slide-to":"1"]),
        BS5CarouselIndicator(["data-bs-target":"#carouselIndicators", "data-bs-slide-to":"2"]),
        BS5CarouselIndicator(["data-bs-target":"#carouselIndicators", "data-bs-slide-to":"3"])
      ),
      BS5CarouselInner(
        BS5CarouselItem(["active"], 
          H5Image(["d-block", "w-100"], ["src":"../img/1200x600-success.png", "alt":"First slide"]),
          H5Div(["carousel-caption"], 
            H5H3("Caption"),
            H5P("This text describes the first slide")
          )
        ),
        BS5CarouselItem( 
          H5Image(["d-block", "w-100"], ["src":"../img/1200x600-success.png", "alt":"Second slide"]),
          H5Div(["carousel-caption"], 
            H5H3("Caption"),
            H5P("This text describes the second slide")
          )
        ),
        BS5CarouselItem( 
          H5Image(["d-block", "w-100"], ["src":"../img/1200x600-success.png", "alt":"Third slide"]),
          H5Div(["carousel-caption"], 
            H5H3("Caption"),
            H5P("This text describes the third slide")
          )
        ),
        BS5CarouselItem( 
          H5Image(["d-block", "w-100"], ["src":"../img/1200x600-success.png", "alt":"Fourth slide"]),
          H5Div(["carousel-caption"], 
            H5H3("Caption"),
            H5P("This text describes the fourth slide")
          )
        )
      ),
      BS5CarouselControlPrev(["href":"#carouselControls", "role":"button", "data-bs-slide":"prev"], 
        H5Span(["carousel-control-prev-icon"], ["aria-hidden":"true"]), 
        H5Span(["visually-hidden"], "Previous")),
      BS5CarouselControlNext(["href":"#carouselControls", "role":"button", "data-bs-slide":"next"],
        H5Span(["carousel-control-next-icon"], ["aria-hidden":"true"]), 
        H5Span(["visually-hidden"], "Previous"))
    )), ``, ``), 

demoBs5Example("dark", "Dark<p>Carousel with dark controls, indicators and captions</p>",  
  H5Div(
    BS5Carousel("carouselDark", ["slide"], ["data-bs-ride":"carousel"], 
      BS5CarouselIndicators(
        BS5CarouselIndicator(["active"], ["data-bs-target":"#carouselIndicators", "data-bs-slide-to":"0"]),
        BS5CarouselIndicator(["data-bs-target":"#carouselIndicators", "data-bs-slide-to":"1"]),
        BS5CarouselIndicator(["data-bs-target":"#carouselIndicators", "data-bs-slide-to":"2"]),
        BS5CarouselIndicator(["data-bs-target":"#carouselIndicators", "data-bs-slide-to":"3"])
      ),
      BS5CarouselInner(
        BS5CarouselItem(["active"], 
          H5Image(["d-block", "w-100"], ["src":"../img/1200x600-success.png", "alt":"First slide"]),
          H5Div(["carousel-caption"], 
            H5H3("Caption"),
            H5P("This text describes the first slide")
          )
        ),
        BS5CarouselItem( 
          H5Image(["d-block", "w-100"], ["src":"../img/1200x600-success.png", "alt":"Second slide"]),
          H5Div(["carousel-caption"], 
            H5H3("Caption"),
            H5P("This text describes the second slide")
          )
        ),
        BS5CarouselItem( 
          H5Image(["d-block", "w-100"], ["src":"../img/1200x600-success.png", "alt":"Third slide"]),
          H5Div(["carousel-caption"], 
            H5H3("Caption"),
            H5P("This text describes the third slide")
          )
        ),
        BS5CarouselItem( 
          H5Image(["d-block", "w-100"], ["src":"../img/1200x600-success.png", "alt":"Fourth slide"]),
          H5Div(["carousel-caption"], 
            H5H3("Caption"),
            H5P("This text describes the fourth slide")
          )
        )
      ),
      BS5CarouselControlPrev(["href":"#carouselControls", "role":"button", "data-bs-slide":"prev"], 
        H5Span(["carousel-control-prev-icon"], ["aria-hidden":"true"]), 
        H5Span(["visually-hidden"], "Previous")),
      BS5CarouselControlNext(["href":"#carouselControls", "role":"button", "data-bs-slide":"next"],
        H5Span(["carousel-control-next-icon"], ["aria-hidden":"true"]), 
        H5Span(["visually-hidden"], "Previous"))
    )), ``, ``), 

demoBs5Example("fade", "Crossfade",  
  H5Div(
    BS5Carousel("carouselFade", ["slide"], ["data-bs-ride":"carousel"], 
      BS5CarouselInner(
        BS5CarouselItem(["active"], 
          H5Image(["d-block", "w-100"], ["src":"../img/1200x600-success.png", "alt":"First slide"])), 
        BS5CarouselItem( 
          H5Image(["d-block", "w-100"], ["src":"../img/1200x600-danger.png", "alt":"Second slide"])),
        BS5CarouselItem(          
          H5Image(["d-block", "w-100"], ["src":"../img/1200x600-warning.png", "alt":"Third slide"])), 
        BS5CarouselItem( 
          H5Image(["d-block", "w-100"], ["src":"../img/1200x600-info.png", "alt":"Fourth slide"]))
      ))), ``, ``),

demoBs5Example("options", "Options<p>Carousel with options defined with data attributes</p>",  
  H5Div(
    BS5Carousel("carouselOptions", ["slide"], ["data-bs-ride":"carousel", "data-bs-pause":"false", "data-bs-wrap":"false", "data-bs-interval":"2000", "data-bs-keyboard":"false"], 
      BS5CarouselIndicators(
        BS5CarouselIndicator(["active"], ["data-bs-target":"#carouselIndicators", "data-bs-slide-to":"0"]),
        BS5CarouselIndicator(["data-bs-target":"#carouselIndicators", "data-bs-slide-to":"1"]),
        BS5CarouselIndicator(["data-bs-target":"#carouselIndicators", "data-bs-slide-to":"2"]),
        BS5CarouselIndicator(["data-bs-target":"#carouselIndicators", "data-bs-slide-to":"3"])
      ),
      BS5CarouselInner(
        BS5CarouselItem(["active"], 
          H5Image(["d-block", "w-100"], ["src":"../img/1200x600-success.png", "alt":"First slide"])), 
        BS5CarouselItem( 
          H5Image(["d-block", "w-100"], ["src":"../img/1200x600-danger.png", "alt":"Second slide"])),
        BS5CarouselItem(          
          H5Image(["d-block", "w-100"], ["src":"../img/1200x600-warning.png", "alt":"Third slide"])), 
        BS5CarouselItem( 
          H5Image(["d-block", "w-100"], ["src":"../img/1200x600-info.png", "alt":"Fourth slide"]))),
      BS5CarouselControlPrev(["href":"#carouselControls", "role":"button", "data-bs-slide":"prev"], 
        H5Span(["carousel-control-prev-icon"], ["aria-hidden":"true"]), 
        H5Span(["visually-hidden"], "Previous")),
      BS5CarouselControlNext(["href":"#carouselControls", "role":"button", "data-bs-slide":"next"],
        H5Span(["carousel-control-next-icon"], ["aria-hidden":"true"]), 
        H5Span(["visually-hidden"], "Previous"))
      )), ``, ``)

     ),
    H5Div(["col-12", "col-lg-2"]))).toString;
    }
  });
}