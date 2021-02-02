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
          H5Image(["d-block", "w-100"], ["src":"/img/libs/uim-bootstrap/slide1.jpg", "alt":"First slide"])), 
        BS5CarouselItem( 
          H5Image(["d-block", "w-100"], ["src":"/img/libs/uim-bootstrap/slide2.jpg", "alt":"Second slide"])),
        BS5CarouselItem(          
          H5Image(["d-block", "w-100"], ["src":"/img/libs/uim-bootstrap/slide3.jpg", "alt":"Third slide"])), 
        BS5CarouselItem( 
          H5Image(["d-block", "w-100"], ["src":"/img/libs/uim-bootstrap/slide4.jpg", "alt":"Fourth slide"]))))
  ), 
  `BS5Carousel("carouselSlidesOnly", ["slide"], ["data-bs-ride":"carousel"], 
  BS5CarouselInner(
    BS5CarouselItem(["active"], 
      H5Image(["d-block", "w-100"], ["src":"/img/libs/uim-bootstrap/slide1.jpg", "alt":"First slide"])), 
    BS5CarouselItem( 
      H5Image(["d-block", "w-100"], ["src":"/img/libs/uim-bootstrap/slide2.jpg", "alt":"Second slide"])),
    BS5CarouselItem(          
      H5Image(["d-block", "w-100"], ["src":"/img/libs/uim-bootstrap/slide3.jpg", "alt":"Third slide"])), 
    BS5CarouselItem( 
      H5Image(["d-block", "w-100"], ["src":"/img/libs/uim-bootstrap/slide4.jpg", "alt":"Fourth slide"]))))`, 
      `<div id="carouselSlidesOnly" ["carousel slide" data-bs-ride="carousel"]
  H5Div(["carousel-inner"]
    H5Div(["carousel-item active"]
      H5Img(["src":"/img/libs/uim-bootstrap/slide1.jpg" "alt":"First slide" ["d-block w-100"]
    )
    H5Div(["carousel-item"]
      H5Img(["src":"/img/libs/uim-bootstrap/slide2.jpg" "alt":"Second slide" ["d-block w-100"]
    )
    H5Div(["carousel-item"]
      H5Img(["src":"/img/libs/uim-bootstrap/slide3.jpg" "alt":"Third slide" ["d-block w-100"]
    )
    H5Div(["carousel-item"]
      H5Img(["src":"/img/libs/uim-bootstrap/slide4.jpg" "alt":"Fourth slide" ["d-block w-100"]
    )
  )
)`),

demoBs5Example("controls", "Controls",  
  H5Div(
    BS5Carousel("carouselControls", ["slide"], ["data-bs-ride":"carousel"], 
      BS5CarouselInner(
        BS5CarouselItem(["active"], 
          H5Image(["d-block", "w-100"], ["src":"/img/libs/uim-bootstrap/slide1.jpg", "alt":"First slide"])),
        BS5CarouselItem( 
          H5Image(["d-block", "w-100"], ["src":"/img/libs/uim-bootstrap/slide2.jpg", "alt":"Second slide"])),
        BS5CarouselItem(          
          H5Image(["d-block", "w-100"], ["src":"/img/libs/uim-bootstrap/slide3.jpg", "alt":"Third slide"])), 
        BS5CarouselItem( 
          H5Image(["d-block", "w-100"], ["src":"/img/libs/uim-bootstrap/slide4.jpg", "alt":"Fourth slide"]))),
      BS5CarouselControlPrev(["href":"#carouselControls", "role":"button", "data-bs-slide":"prev"], 
        H5Span(["carousel-control-prev-icon"], ["aria-hidden":"true"]), 
        H5Span(["visually-hidden"], "Previous")),
      BS5CarouselControlNext(["href":"#carouselControls", "role":"button", "data-bs-slide":"next"],
        H5Span(["carousel-control-next-icon"], ["aria-hidden":"true"]), 
        H5Span(["visually-hidden"], "Previous")))
  ), 
  `BS5Carousel("carouselControls", ["slide"], ["data-bs-ride":"carousel"], 
  BS5CarouselInner(
    BS5CarouselItem(["active"], 
      H5Image(["d-block", "w-100"], ["src":"/img/libs/uim-bootstrap/slide1.jpg", "alt":"First slide"])),
    BS5CarouselItem( 
      H5Image(["d-block", "w-100"], ["src":"/img/libs/uim-bootstrap/slide2.jpg", "alt":"Second slide"])),
    BS5CarouselItem(          
      H5Image(["d-block", "w-100"], ["src":"/img/libs/uim-bootstrap/slide3.jpg", "alt":"Third slide"])), 
    BS5CarouselItem( 
      H5Image(["d-block", "w-100"], ["src":"/img/libs/uim-bootstrap/slide4.jpg", "alt":"Fourth slide"]))),
  BS5CarouselControlPrev(["href":"#carouselControls", "role":"button", "data-bs-slide":"prev"], 
    H5Span(["carousel-control-prev-icon"], ["aria-hidden":"true"]), 
    H5Span(["visually-hidden"], "Previous")),
  BS5CarouselControlNext(["href":"#carouselControls", "role":"button", "data-bs-slide":"next"],
    H5Span(["carousel-control-next-icon"], ["aria-hidden":"true"]), 
    H5Span(["visually-hidden"], "Previous")))`, 
    `<div id="carouselControls" ["carousel slide" data-bs-ride="carousel"]
  H5Div(["carousel-inner"]
    H5Div(["carousel-item active"]
      H5Img(["src":"/img/libs/uim-bootstrap/slide1.jpg" "alt":"First slide" ["d-block w-100"]
    )
    H5Div(["carousel-item"]
      H5Img(["src":"/img/libs/uim-bootstrap/slide2.jpg" "alt":"Second slide" ["d-block w-100"]
    )
    H5Div(["carousel-item"]
      H5Img(["src":"/img/libs/uim-bootstrap/slide3.jpg" "alt":"Third slide" ["d-block w-100"]
    )
    H5Div(["carousel-item"]
      H5Img(["src":"/img/libs/uim-bootstrap/slide1.jpg" "alt":"Fourth slide" ["d-block w-100"]
    )
  )
  <a href="#carouselControls" ["carousel-control-prev" role="button" data-bs-slide="prev"]
    <span ["carousel-control-prev-icon" aria-hidden="true"]</span>
    <span ["visually-hidden"]Previous</span>
  </a>
  <a href="#carouselControls" ["carousel-control-next" role="button" data-bs-slide="next"]
    <span ["carousel-control-next-icon" aria-hidden="true"]</span>
    <span ["visually-hidden"]Next</span>
  </a>
)`), 

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
          H5Image(["d-block", "w-100"], ["src":"/img/libs/uim-bootstrap/slide1.jpg", "alt":"First slide"])),
        BS5CarouselItem( 
          H5Image(["d-block", "w-100"], ["src":"/img/libs/uim-bootstrap/slide2.jpg", "alt":"Second slide"])),
        BS5CarouselItem(          
          H5Image(["d-block", "w-100"], ["src":"/img/libs/uim-bootstrap/slide3.jpg", "alt":"Third slide"])), 
        BS5CarouselItem( 
          H5Image(["d-block", "w-100"], ["src":"/img/libs/uim-bootstrap/slide4.jpg", "alt":"Fourth slide"]))))
  ), 
  `BS5Carousel("carouselIndicators", ["slide"], ["data-bs-ride":"carousel"], 
  BS5CarouselIndicators(
    BS5CarouselIndicator(["active"], ["data-bs-target":"#carouselIndicators", "data-bs-slide-to":"0"]),
    BS5CarouselIndicator(["data-bs-target":"#carouselIndicators", "data-bs-slide-to":"1"]),
    BS5CarouselIndicator(["data-bs-target":"#carouselIndicators", "data-bs-slide-to":"2"]),
    BS5CarouselIndicator(["data-bs-target":"#carouselIndicators", "data-bs-slide-to":"3"])
  ),
  BS5CarouselInner(
    BS5CarouselItem(["active"], 
      H5Image(["d-block", "w-100"], ["src":"/img/libs/uim-bootstrap/slide1.jpg", "alt":"First slide"])),
    BS5CarouselItem( 
      H5Image(["d-block", "w-100"], ["src":"/img/libs/uim-bootstrap/slide2.jpg", "alt":"Second slide"])),
    BS5CarouselItem(          
      H5Image(["d-block", "w-100"], ["src":"/img/libs/uim-bootstrap/slide3.jpg", "alt":"Third slide"])), 
    BS5CarouselItem( 
      H5Image(["d-block", "w-100"], ["src":"/img/libs/uim-bootstrap/slide4.jpg", "alt":"Fourth slide"]))))`, 
`<div id="carouselIndicators" ["carousel slide" data-bs-ride="carousel"]
  <ol ["carousel-indicators"]
    <li data-bs-target="#carouselIndicators" data-bs-slide-to="0" ["active"]</li>
    <li data-bs-target="#carouselIndicators" data-bs-slide-to="1"]</li>
    <li data-bs-target="#carouselIndicators" data-bs-slide-to="2"]</li>
    <li data-bs-target="#carouselIndicators" data-bs-slide-to="3"]</li>
  </ol>
  H5Div(["carousel-inner"]
    H5Div(["carousel-item active"]
      H5Img(["src":"/img/libs/uim-bootstrap/slide1.jpg" "alt":"First slide" ["d-block w-100"]
    )
    H5Div(["carousel-item"]
      H5Img(["src":"/img/libs/uim-bootstrap/slide2.jpg" "alt":"Second slide" ["d-block w-100"]
    )
    H5Div(["carousel-item"]
      H5Img(["src":"/img/libs/uim-bootstrap/slide3.jpg" "alt":"Third slide" ["d-block w-100"]
    )
    H5Div(["carousel-item"]
      H5Img(["src":"/img/1200x600-info.png" "alt":"Fourth slide" ["d-block w-100"]
    )
  )
)`),

demoBs5Example("captions", "Captions",  
  H5Div(
    BS5Carousel("carouselCaptions", ["slide"], ["data-bs-ride":"carousel"], 
      BS5CarouselInner(
        BS5CarouselItem(["active"], 
          H5Image(["d-block", "w-100"], ["src":"/img/libs/uim-bootstrap/slide1.jpg", "alt":"First slide"]),
          H5Div(["carousel-caption"], 
            H5H3("Caption"),
            H5P("This text describes the first slide"))),
        BS5CarouselItem( 
          H5Image(["d-block", "w-100"], ["src":"/img/libs/uim-bootstrap/slide2.jpg", "alt":"Second slide"]),
          H5Div(["carousel-caption"], 
            H5H3("Caption"),
            H5P("This text describes the second slide"))),
        BS5CarouselItem( 
          H5Image(["d-block", "w-100"], ["src":"/img/libs/uim-bootstrap/slide3.jpg", "alt":"Third slide"]),
          H5Div(["carousel-caption"], 
            H5H3("Caption"),
            H5P("This text describes the third slide"))),
        BS5CarouselItem( 
          H5Image(["d-block", "w-100"], ["src":"/img/libs/uim-bootstrap/slide4.jpg", "alt":"Fourth slide"]),
          H5Div(["carousel-caption"], 
            H5H3("Caption"),
            H5P("This text describes the fourth slide")))))
  ), 
  `BS5Carousel("carouselCaptions", ["slide"], ["data-bs-ride":"carousel"], 
  BS5CarouselInner(
    BS5CarouselItem(["active"], 
      H5Image(["d-block", "w-100"], ["src":"/img/libs/uim-bootstrap/slide1.jpg", "alt":"First slide"]),
      H5Div(["carousel-caption"], 
        H5H3("Caption"),
        H5P("This text describes the first slide"))),
    BS5CarouselItem( 
      H5Image(["d-block", "w-100"], ["src":"/img/libs/uim-bootstrap/slide2.jpg", "alt":"Second slide"]),
      H5Div(["carousel-caption"], 
        H5H3("Caption"),
        H5P("This text describes the second slide"))),
    BS5CarouselItem( 
      H5Image(["d-block", "w-100"], ["src":"/img/libs/uim-bootstrap/slide3.jpg", "alt":"Third slide"]),
      H5Div(["carousel-caption"], 
        H5H3("Caption"),
        H5P("This text describes the third slide"))),
    BS5CarouselItem( 
      H5Image(["d-block", "w-100"], ["src":"/img/libs/uim-bootstrap/slide4.jpg", "alt":"Fourth slide"]),
      H5Div(["carousel-caption"], 
        H5H3("Caption"),
        H5P("This text describes the fourth slide")))))`, 
        `<div id="carouselCaptions" ["carousel slide" data-bs-ride="carousel"]
  H5Div(["carousel-inner"]
    H5Div(["carousel-item active"]
      H5Img(["src":"/img/libs/uim-bootstrap/slide1.jpg" "alt":"First slide" ["d-block w-100"]
      H5Div(["carousel-caption"]
        <h3>Caption</h3>
        <p>This text describes the first slide</p>
      )
    )
    H5Div(["carousel-item"]
      H5Img(["src":"/img/libs/uim-bootstrap/slide2.jpg" "alt":"Second slide" ["d-block w-100"]
      H5Div(["carousel-caption"]
        <h3>Caption</h3>
        <p>This text describes the second slide</p>
      )
    )
    H5Div(["carousel-item"]
      H5Img(["src":"/img/libs/uim-bootstrap/slide3.jpg" "alt":"Third slide" ["d-block w-100"]
      H5Div(["carousel-caption"]
        <h3>Caption</h3>
        <p>This text describes the third slide</p>
      )
    )
    H5Div(["carousel-item"]
      H5Img(["src":"/img/libs/uim-bootstrap/slide4.jpg" "alt":"Fourth slide" ["d-block w-100"]
      H5Div(["carousel-caption"]
        <h3>Caption</h3>
        <p>This text describes the fourth slide</p>
      )
    )
  )
)`),

demoBs5Example("every", "Everything<p>Carousel with controls, indicators and captions</p>",  
  H5Div(
    BS5Carousel("carouselCaptions", ["slide"], ["data-bs-ride":"carousel"], 
       BS5CarouselIndicators(
        BS5CarouselIndicator(["active"], ["data-bs-target":"#carouselIndicators", "data-bs-slide-to":"0"]),
        BS5CarouselIndicator(["data-bs-target":"#carouselIndicators", "data-bs-slide-to":"1"]),
        BS5CarouselIndicator(["data-bs-target":"#carouselIndicators", "data-bs-slide-to":"2"]),
        BS5CarouselIndicator(["data-bs-target":"#carouselIndicators", "data-bs-slide-to":"3"])),
      BS5CarouselInner(
        BS5CarouselItem(["active"], 
          H5Image(["d-block", "w-100"], ["src":"/img/libs/uim-bootstrap/slide1.jpg", "alt":"First slide"]),
          H5Div(["carousel-caption"], 
            H5H3("Caption"),
            H5P("This text describes the first slide"))),
        BS5CarouselItem( 
          H5Image(["d-block", "w-100"], ["src":"/img/libs/uim-bootstrap/slide2.jpg", "alt":"Second slide"]),
          H5Div(["carousel-caption"], 
            H5H3("Caption"),
            H5P("This text describes the second slide"))),
        BS5CarouselItem( 
          H5Image(["d-block", "w-100"], ["src":"/img/libs/uim-bootstrap/slide3.jpg", "alt":"Third slide"]),
          H5Div(["carousel-caption"], 
            H5H3("Caption"),
            H5P("This text describes the third slide"))),
        BS5CarouselItem( 
          H5Image(["d-block", "w-100"], ["src":"/img/libs/uim-bootstrap/slide4.jpg", "alt":"Fourth slide"]),
          H5Div(["carousel-caption"], 
            H5H3("Caption"),
            H5P("This text describes the fourth slide")))),
      BS5CarouselControlPrev(["href":"#carouselControls", "role":"button", "data-bs-slide":"prev"], 
        H5Span(["carousel-control-prev-icon"], ["aria-hidden":"true"]), 
        H5Span(["visually-hidden"], "Previous")),
      BS5CarouselControlNext(["href":"#carouselControls", "role":"button", "data-bs-slide":"next"],
        H5Span(["carousel-control-next-icon"], ["aria-hidden":"true"]), 
        H5Span(["visually-hidden"], "Previous")))
  ), 
  `BS5Carousel("carouselCaptions", ["slide"], ["data-bs-ride":"carousel"], 
  BS5CarouselIndicators(
    BS5CarouselIndicator(["active"], ["data-bs-target":"#carouselIndicators", "data-bs-slide-to":"0"]),
    BS5CarouselIndicator(["data-bs-target":"#carouselIndicators", "data-bs-slide-to":"1"]),
    BS5CarouselIndicator(["data-bs-target":"#carouselIndicators", "data-bs-slide-to":"2"]),
    BS5CarouselIndicator(["data-bs-target":"#carouselIndicators", "data-bs-slide-to":"3"])),
  BS5CarouselInner(
    BS5CarouselItem(["active"], 
      H5Image(["d-block", "w-100"], ["src":"/img/libs/uim-bootstrap/slide1.jpg", "alt":"First slide"]),
      H5Div(["carousel-caption"], 
        H5H3("Caption"),
        H5P("This text describes the first slide"))),
    BS5CarouselItem( 
      H5Image(["d-block", "w-100"], ["src":"/img/libs/uim-bootstrap/slide2.jpg", "alt":"Second slide"]),
      H5Div(["carousel-caption"], 
        H5H3("Caption"),
        H5P("This text describes the second slide"))),
    BS5CarouselItem( 
      H5Image(["d-block", "w-100"], ["src":"/img/libs/uim-bootstrap/slide3.jpg", "alt":"Third slide"]),
      H5Div(["carousel-caption"], 
        H5H3("Caption"),
        H5P("This text describes the third slide"))),
    BS5CarouselItem( 
      H5Image(["d-block", "w-100"], ["src":"/img/libs/uim-bootstrap/slide4.jpg", "alt":"Fourth slide"]),
      H5Div(["carousel-caption"], 
        H5H3("Caption"),
        H5P("This text describes the fourth slide")))),
  BS5CarouselControlPrev(["href":"#carouselControls", "role":"button", "data-bs-slide":"prev"], 
    H5Span(["carousel-control-prev-icon"], ["aria-hidden":"true"]), 
    H5Span(["visually-hidden"], "Previous")),
  BS5CarouselControlNext(["href":"#carouselControls", "role":"button", "data-bs-slide":"next"],
    H5Span(["carousel-control-next-icon"], ["aria-hidden":"true"]), 
    H5Span(["visually-hidden"], "Previous")))`, 
    `<div id="carouselAll" ["carousel slide" data-bs-ride="carousel"]
  <ol ["carousel-indicators"]
    <li data-bs-target="#carouselAll" data-bs-slide-to="0" ["active"]</li>
    <li data-bs-target="#carouselAll" data-bs-slide-to="1"]</li>
    <li data-bs-target="#carouselAll" data-bs-slide-to="2"]</li>
    <li data-bs-target="#carouselAll" data-bs-slide-to="3"]</li>
  </ol>
  H5Div(["carousel-inner"]
    H5Div(["carousel-item active"]
      H5Img(["src":"/img/libs/uim-bootstrap/slide1.jpg" "alt":"First slide" ["d-block w-100"]
      H5Div(["carousel-caption"]
        <h3>Caption</h3>
        <p>This text describes the first slide</p>
      )
    )
    H5Div(["carousel-item"]
      H5Img(["src":"/img/libs/uim-bootstrap/slide2.jpg" "alt":"Second slide" ["d-block w-100"]
      H5Div(["carousel-caption"]
        <h3>Caption</h3>
        <p>This text describes the second slide</p>
      )
    )
    H5Div(["carousel-item"]
      H5Img(["src":"/img/libs/uim-bootstrap/slide3.jpg" "alt":"Third slide" ["d-block w-100"]
      H5Div(["carousel-caption"]
        <h3>Caption</h3>
        <p>This text describes the third slide</p>
      )
    )
    H5Div(["carousel-item"]
      H5Img(["src":"/img/libs/uim-bootstrap/slide4.jpg" "alt":"Fourth slide" ["d-block w-100"]
      H5Div(["carousel-caption"]
        <h3>Caption</h3>
        <p>This text describes the fourth slide</p>
      )
    )
  )
  <a href="#carouselAll" ["carousel-control-prev" role="button" data-bs-slide="prev"]
    <span ["carousel-control-prev-icon" aria-hidden="true"]</span>
    <span ["visually-hidden"]Previous</span>
  </a>
  <a href="#carouselAll" ["carousel-control-next" role="button" data-bs-slide="next"]
    <span ["carousel-control-next-icon" aria-hidden="true"]</span>
    <span ["visually-hidden"]Next</span>
  </a>
)`), 

demoBs5Example("dark", "Dark<p>Carousel with dark controls, indicators and captions</p>",  
  H5Div(
    BS5Carousel("carouselDark", ["slide"], ["data-bs-ride":"carousel"], 
      BS5CarouselIndicators(
        BS5CarouselIndicator(["active"], ["data-bs-target":"#carouselIndicators", "data-bs-slide-to":"0"]),
        BS5CarouselIndicator(["data-bs-target":"#carouselIndicators", "data-bs-slide-to":"1"]),
        BS5CarouselIndicator(["data-bs-target":"#carouselIndicators", "data-bs-slide-to":"2"]),
        BS5CarouselIndicator(["data-bs-target":"#carouselIndicators", "data-bs-slide-to":"3"])),
      BS5CarouselInner(
        BS5CarouselItem(["active"], 
          H5Image(["d-block", "w-100"], ["src":"/img/libs/uim-bootstrap/slide1.jpg", "alt":"First slide"]),
          H5Div(["carousel-caption"], 
            H5H3("Caption"),
            H5P("This text describes the first slide"))),
        BS5CarouselItem( 
          H5Image(["d-block", "w-100"], ["src":"/img/libs/uim-bootstrap/slide2.jpg", "alt":"Second slide"]),
          H5Div(["carousel-caption"], 
            H5H3("Caption"),
            H5P("This text describes the second slide"))),
        BS5CarouselItem( 
          H5Image(["d-block", "w-100"], ["src":"/img/libs/uim-bootstrap/slide3.jpg", "alt":"Third slide"]),
          H5Div(["carousel-caption"], 
            H5H3("Caption"),
            H5P("This text describes the third slide"))),
        BS5CarouselItem( 
          H5Image(["d-block", "w-100"], ["src":"/img/libs/uim-bootstrap/slide4.jpg", "alt":"Fourth slide"]),
          H5Div(["carousel-caption"], 
            H5H3("Caption"),
            H5P("This text describes the fourth slide")))),
      BS5CarouselControlPrev(["href":"#carouselControls", "role":"button", "data-bs-slide":"prev"], 
        H5Span(["carousel-control-prev-icon"], ["aria-hidden":"true"]), 
        H5Span(["visually-hidden"], "Previous")),
      BS5CarouselControlNext(["href":"#carouselControls", "role":"button", "data-bs-slide":"next"],
        H5Span(["carousel-control-next-icon"], ["aria-hidden":"true"]), 
        H5Span(["visually-hidden"], "Previous")))
  ), 
  `BS5Carousel("carouselDark", ["slide"], ["data-bs-ride":"carousel"], 
  BS5CarouselIndicators(
    BS5CarouselIndicator(["active"], ["data-bs-target":"#carouselIndicators", "data-bs-slide-to":"0"]),
    BS5CarouselIndicator(["data-bs-target":"#carouselIndicators", "data-bs-slide-to":"1"]),
    BS5CarouselIndicator(["data-bs-target":"#carouselIndicators", "data-bs-slide-to":"2"]),
    BS5CarouselIndicator(["data-bs-target":"#carouselIndicators", "data-bs-slide-to":"3"])),
  BS5CarouselInner(
    BS5CarouselItem(["active"], 
      H5Image(["d-block", "w-100"], ["src":"/img/libs/uim-bootstrap/slide1.jpg", "alt":"First slide"]),
      H5Div(["carousel-caption"], 
        H5H3("Caption"),
        H5P("This text describes the first slide"))),
    BS5CarouselItem( 
      H5Image(["d-block", "w-100"], ["src":"/img/libs/uim-bootstrap/slide2.jpg", "alt":"Second slide"]),
      H5Div(["carousel-caption"], 
        H5H3("Caption"),
        H5P("This text describes the second slide"))),
    BS5CarouselItem( 
      H5Image(["d-block", "w-100"], ["src":"/img/libs/uim-bootstrap/slide3.jpg", "alt":"Third slide"]),
      H5Div(["carousel-caption"], 
        H5H3("Caption"),
        H5P("This text describes the third slide"))),
    BS5CarouselItem( 
      H5Image(["d-block", "w-100"], ["src":"/img/libs/uim-bootstrap/slide4.jpg", "alt":"Fourth slide"]),
      H5Div(["carousel-caption"], 
        H5H3("Caption"),
        H5P("This text describes the fourth slide")))),
  BS5CarouselControlPrev(["href":"#carouselControls", "role":"button", "data-bs-slide":"prev"], 
    H5Span(["carousel-control-prev-icon"], ["aria-hidden":"true"]), 
    H5Span(["visually-hidden"], "Previous")),
  BS5CarouselControlNext(["href":"#carouselControls", "role":"button", "data-bs-slide":"next"],
    H5Span(["carousel-control-next-icon"], ["aria-hidden":"true"]), 
    H5Span(["visually-hidden"], "Previous")))`, 
    `<div id="carouselDark" ["carousel slide carousel-dark" data-bs-ride="carousel"]
  <ol ["carousel-indicators"]
    <li data-bs-target="#carouselDark" data-bs-slide-to="0" ["active"]</li>
    <li data-bs-target="#carouselDark" data-bs-slide-to="1"]</li>
    <li data-bs-target="#carouselDark" data-bs-slide-to="2"]</li>
    <li data-bs-target="#carouselDark" data-bs-slide-to="3"]</li>
  </ol>
  H5Div(["carousel-inner"]
    H5Div(["carousel-item active"]
      H5Img(["src":"/img/libs/uim-bootstrap/slide1.jpg" "alt":"First slide" ["d-block w-100"]
      H5Div(["carousel-caption"]
        <h3>Caption</h3>
        <p>This text describes the first slide</p>
      )
    )
    H5Div(["carousel-item"]
      H5Img(["src":"/img/libs/uim-bootstrap/slide2.jpg" "alt":"Second slide" ["d-block w-100"]
      H5Div(["carousel-caption"]
        <h3>Caption</h3>
        <p>This text describes the second slide</p>
      )
    )
    H5Div(["carousel-item"]
      H5Img(["src":"/img/libs/uim-bootstrap/slide3.jpg" "alt":"Third slide" ["d-block w-100"]
      H5Div(["carousel-caption"]
        <h3>Caption</h3>
        <p>This text describes the third slide</p>
      )
    )
    H5Div(["carousel-item"]
      H5Img(["src":"/img/libs/uim-bootstrap/slide4.jpg" "alt":"Fourth slide" ["d-block w-100"]
      H5Div(["carousel-caption"]
        <h3>Caption</h3>
        <p>This text describes the fourth slide</p>
      )
    )
  )
  <a href="#carouselDark" ["carousel-control-prev" role="button" data-bs-slide="prev"]
    <span ["carousel-control-prev-icon" aria-hidden="true"]</span>
    <span ["visually-hidden"]Previous</span>
  </a>
  <a href="#carouselDark" ["carousel-control-next" role="button" data-bs-slide="next"]
    <span ["carousel-control-next-icon" aria-hidden="true"]</span>
    <span ["visually-hidden"]Next</span>
  </a>
)`), 

demoBs5Example("fade", "Crossfade",  
  H5Div(
    BS5Carousel("carouselFade", ["slide"], ["data-bs-ride":"carousel"], 
      BS5CarouselInner(
        BS5CarouselItem(["active"], 
          H5Image(["d-block", "w-100"], ["src":"/img/libs/uim-bootstrap/slide1.jpg", "alt":"First slide"])), 
        BS5CarouselItem( 
          H5Image(["d-block", "w-100"], ["src":"/img/libs/uim-bootstrap/slide2.jpg", "alt":"Second slide"])),
        BS5CarouselItem(          
          H5Image(["d-block", "w-100"], ["src":"/img/libs/uim-bootstrap/slide3.jpg", "alt":"Third slide"])), 
        BS5CarouselItem( 
          H5Image(["d-block", "w-100"], ["src":"/img/libs/uim-bootstrap/slide4.jpg", "alt":"Fourth slide"]))))
  ), 
  `BS5Carousel("carouselFade", ["slide"], ["data-bs-ride":"carousel"], 
  BS5CarouselInner(
    BS5CarouselItem(["active"], 
      H5Image(["d-block", "w-100"], ["src":"/img/libs/uim-bootstrap/slide1.jpg", "alt":"First slide"])), 
    BS5CarouselItem( 
      H5Image(["d-block", "w-100"], ["src":"/img/libs/uim-bootstrap/slide2.jpg", "alt":"Second slide"])),
    BS5CarouselItem(          
      H5Image(["d-block", "w-100"], ["src":"/img/libs/uim-bootstrap/slide3.jpg", "alt":"Third slide"])), 
    BS5CarouselItem( 
      H5Image(["d-block", "w-100"], ["src":"/img/libs/uim-bootstrap/slide4.jpg", "alt":"Fourth slide"]))))`, 
      `<div id="carouselFade" ["carousel slide carousel-fade" data-bs-ride="carousel"]
  H5Div(["carousel-inner"]
    H5Div(["carousel-item active"]
      H5Img(["src":"/img/libs/uim-bootstrap/slide1.jpg" "alt":"First slide" ["d-block w-100"]
    )
    H5Div(["carousel-item"]
      H5Img(["src":"/img/libs/uim-bootstrap/slide2.jpg" "alt":"Second slide" ["d-block w-100"]
    )
    H5Div(["carousel-item"]
      H5Img(["src":"/img/libs/uim-bootstrap/slide3.jpg" "alt":"Third slide" ["d-block w-100"]
    )
    H5Div(["carousel-item"]
      H5Img(["src":"/img/libs/uim-bootstrap/slide4.jpg" "alt":"Fourth slide" ["d-block w-100"]
    )
  )
)`),

demoBs5Example("options", "Options<p>Carousel with options defined with data attributes</p>",  
  H5Div(
    BS5Carousel("carouselOptions", ["slide"], ["data-bs-ride":"carousel", "data-bs-pause":"false", "data-bs-wrap":"false", "data-bs-interval":"2000", "data-bs-keyboard":"false"], 
      BS5CarouselIndicators(
        BS5CarouselIndicator(["active"], ["data-bs-target":"#carouselIndicators", "data-bs-slide-to":"0"]),
        BS5CarouselIndicator(["data-bs-target":"#carouselIndicators", "data-bs-slide-to":"1"]),
        BS5CarouselIndicator(["data-bs-target":"#carouselIndicators", "data-bs-slide-to":"2"]),
        BS5CarouselIndicator(["data-bs-target":"#carouselIndicators", "data-bs-slide-to":"3"])),
      BS5CarouselInner(
        BS5CarouselItem(["active"], 
          H5Image(["d-block", "w-100"], ["src":"/img/libs/uim-bootstrap/slide1.jpg", "alt":"First slide"])), 
        BS5CarouselItem( 
          H5Image(["d-block", "w-100"], ["src":"/img/libs/uim-bootstrap/slide2.jpg", "alt":"Second slide"])),
        BS5CarouselItem(          
          H5Image(["d-block", "w-100"], ["src":"/img/libs/uim-bootstrap/slide3.jpg", "alt":"Third slide"])), 
        BS5CarouselItem( 
          H5Image(["d-block", "w-100"], ["src":"/img/libs/uim-bootstrap/slide4.jpg", "alt":"Fourth slide"]))),
      BS5CarouselControlPrev(["href":"#carouselControls", "role":"button", "data-bs-slide":"prev"], 
        H5Span(["carousel-control-prev-icon"], ["aria-hidden":"true"]), 
        H5Span(["visually-hidden"], "Previous")),
      BS5CarouselControlNext(["href":"#carouselControls", "role":"button", "data-bs-slide":"next"],
        H5Span(["carousel-control-next-icon"], ["aria-hidden":"true"]), 
        H5Span(["visually-hidden"], "Previous")))
  ), 
  `BS5Carousel("carouselOptions", ["slide"], ["data-bs-ride":"carousel", "data-bs-pause":"false", "data-bs-wrap":"false", "data-bs-interval":"2000", "data-bs-keyboard":"false"], 
  BS5CarouselIndicators(
    BS5CarouselIndicator(["active"], ["data-bs-target":"#carouselIndicators", "data-bs-slide-to":"0"]),
    BS5CarouselIndicator(["data-bs-target":"#carouselIndicators", "data-bs-slide-to":"1"]),
    BS5CarouselIndicator(["data-bs-target":"#carouselIndicators", "data-bs-slide-to":"2"]),
    BS5CarouselIndicator(["data-bs-target":"#carouselIndicators", "data-bs-slide-to":"3"])),
  BS5CarouselInner(
    BS5CarouselItem(["active"], 
      H5Image(["d-block", "w-100"], ["src":"/img/libs/uim-bootstrap/slide1.jpg", "alt":"First slide"])), 
    BS5CarouselItem( 
      H5Image(["d-block", "w-100"], ["src":"/img/libs/uim-bootstrap/slide2.jpg", "alt":"Second slide"])),
    BS5CarouselItem(          
      H5Image(["d-block", "w-100"], ["src":"/img/libs/uim-bootstrap/slide3.jpg", "alt":"Third slide"])), 
    BS5CarouselItem( 
      H5Image(["d-block", "w-100"], ["src":"/img/libs/uim-bootstrap/slide4.jpg", "alt":"Fourth slide"]))),
  BS5CarouselControlPrev(["href":"#carouselControls", "role":"button", "data-bs-slide":"prev"], 
    H5Span(["carousel-control-prev-icon"], ["aria-hidden":"true"]), 
    H5Span(["visually-hidden"], "Previous")),
  BS5CarouselControlNext(["href":"#carouselControls", "role":"button", "data-bs-slide":"next"],
    H5Span(["carousel-control-next-icon"], ["aria-hidden":"true"]), 
    H5Span(["visually-hidden"], "Previous")))`, 
    `<div id="carouselOptions" ["carousel slide" data-bs-ride="carousel" data-bs-pause="false" data-bs-wrap="false" data-bs-interval="2000" data-bs-keyboard="false"]
  <ol ["carousel-indicators"]
    <li data-bs-target="#carouselOptions" data-bs-slide-to="0" ["active"]</li>
    <li data-bs-target="#carouselOptions" data-bs-slide-to="1"]</li>
    <li data-bs-target="#carouselOptions" data-bs-slide-to="2"]</li>
    <li data-bs-target="#carouselOptions" data-bs-slide-to="3"]</li>
  </ol>
  H5Div(["carousel-inner"]
    H5Div(["carousel-item active"]
      H5Img(["src":"/img/libs/uim-bootstrap/slide1.jpg" "alt":"First slide" ["d-block w-100"]
    )
    H5Div(["carousel-item"]
      H5Img(["src":"/img/libs/uim-bootstrap/slide2.jpg" "alt":"Second slide" ["d-block w-100"]
    )
    H5Div(["carousel-item" data-bs-interval="1000"]
      H5Img(["src":"/img/libs/uim-bootstrap/slide3.jpg" "alt":"Third slide" ["d-block w-100"]
    )
    H5Div(["carousel-item"]
      H5Img(["src":"/img/libs/uim-bootstrap/slide4.jpg" "alt":"Fourth slide" ["d-block w-100"]
    )
  )
  <a href="#carouselOptions" ["carousel-control-prev" role="button" data-bs-slide="prev"]
    <span ["carousel-control-prev-icon" aria-hidden="true"]</span>
    <span ["visually-hidden"]Previous</span>
  </a>
  <a href="#carouselOptions" ["carousel-control-next" role="button" data-bs-slide="next"]
    <span ["carousel-control-next-icon" aria-hidden="true"]</span>
    <span ["visually-hidden"]Next</span>
  </a>
)`)

     ),
    H5Div(["col-12", "col-lg-2"]))).toString;
    }
  });
}