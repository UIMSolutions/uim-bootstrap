module uim.bootstrap.bs5.demos.examples.album;

import uim.bootstrap;

static this() {
	demoBS5.pages("examples/album", new class DH5AppPage {
		this() { 
			super(); 
			this
			.created(DateTime(2020, 12, 20, 10, 10, 0))
			.changed(timeLastModified(__FILE_FULL_PATH__))
			.parameters([
					"pageTitle": "Album Page - Bootstrap 5 Demo",
          ])
          .styles(`.bd-placeholder-img {
        font-size: 1.125rem;
        text-anchor: middle;
        -webkit-user-select: none;
        -moz-user-select: none;
        user-select: none;
      }

      @media (min-width: 768px) {
        .bd-placeholder-img-lg {
          font-size: 3.5rem;
        }
      }`);
		} 
			
    override string content(string[string] someParameters = null) {  

      return 
      H5Header(
  H5Div("navbarHeader", ["collapse bg-dark"],
    H5Div(["container"],
      BS5Row(
        H5Div(["col-sm-8 col-md-7 py-4"],
          H5H4(["text-white"], "About"),
          H5P(["text-muted"], "Add some information about the album below, the author, or any other background context. Make it a few sentences long so folks can pick up some informative tidbits. Then, link them off to some social networking sites or contact information.")
        ),
        H5Div(["col-sm-4 offset-md-1 py-4"],
          H5H4(["text-white"], "Contact"),
          H5Ul(["list-unstyled"])
          .item(H5A(["text-white"], ["href":"#"], "Follow on Twitter"))
          .item(H5A(["text-white"], ["href":"#"], "Like on Facebook"))
          .item(H5A(["text-white"], ["href":"#"], "Email me")))
      )
    )
  ),
  H5Div(["navbar navbar-dark bg-dark shadow-sm"],
    H5Div(["container"],
      BS5NavbarBrand(["d-flex align-items-center"], ["href":"#"],
/*         <svg xmlns="http://www.w3.org/2000/svg" "width":"20" "height":"20" fill="none" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round" stroke-"width":"2" aria-hidden="true" class="me-2" viewBox="0 0 24 24"><path d="M23 19a2 2 0 0 1-2 2H3a2 2 0 0 1-2-2V8a2 2 0 0 1 2-2h4l2-3h6l2 3h4a2 2 0 0 1 2 2z"/><circle cx="12" cy="13" r="4"/></svg>
        <strong>Album")
 */   ),
      H5Button(["navbar-toggler"], ["type":"button", "data-bs-toggle":"collapse", "data-bs-target":"#navbarHeader", "aria-controls":"navbarHeader", "aria-expanded":"false", "aria-label":"Toggle navigation"],
        H5Span(["navbar-toggler-icon"])
      )
    )
  )
).toString~
H5Main(
  H5Section(["py-5 text-center container"], 
    BS5Row(["py-lg-5"], 
      H5Div(["col-lg-6 col-md-8 mx-auto"], 
        H5H1(["fw-light"], "Album example"),
        H5P(["lead text-muted"], "Something short and leading about the collection below—its contents, the creator, etc. Make it short and sweet, but not too short so folks don’t simply skip over it entirely."),
        H5P(
          H5A(["btn btn-primary my-2"], ["href":"#"], "Main call to action"),
          H5A(["btn btn-secondary my-2"], ["href":"#"], "Secondary action")
        )))),
  H5Div(["album py-5 bg-light"], 
    H5Div(["container"], 

      H5Div(["row row-cols-1 row-cols-sm-2 row-cols-md-3 g-3"],
        H5Div(["col"],
          BS5Card(["shadow-sm"],
            H5Svg(["bd-placeholder-img card-img-top"], ["width":"100%", "height":"225", "xmlns":"http://www.w3.org/2000/svg", "role":"img", "aria-label":"Placeholder: Thumbnail", "preserveAspectRatio":"xMidYMid slice", "focusable":"false"], 
              /* "<title>Placeholder</title><rect "width":"100%" "height":"100%" fill="#55595c"/><text x="50%" y="50%" fill="#eceeef" dy=".3em">Thumbnail</text>" */
            ),
            BS5CardBody(
              BS5CardText("This is a wider card with supporting text below as a natural lead-in to additional content. This content is a little bit longer."),
              H5Div(["d-flex justify-content-between align-items-center"],
                H5Div(["btn-group"],
                  BS5Button(["btn-sm btn-outline-secondary"], "View"),
                  BS5Button(["btn-sm btn-outline-secondary"], "Edit")),
                H5Small(["text-muted"], "9 mins"))))),
        H5Div(["col"],
          BS5Card(["shadow-sm"],
            H5Svg(["bd-placeholder-img card-img-top"], ["width":"100%", "height":"225", "xmlns":"http://www.w3.org/2000/svg", "role":"img", "aria-label":"Placeholder: Thumbnail", "preserveAspectRatio":"xMidYMid slice", "focusable":"false"], 
            /* "<title>Placeholder</title><rect "width":"100%" "height":"100%" fill="#55595c"/><text x="50%" y="50%" fill="#eceeef" dy=".3em">Thumbnail</text>" */
            ),
            BS5CardBody(
              BS5CardText("This is a wider card with supporting text below as a natural lead-in to additional content. This content is a little bit longer."),
              H5Div(["d-flex justify-content-between align-items-center"],
                H5Div(["btn-group"],
                  BS5Button(["btn-sm btn-outline-secondary"], "View"),
                  BS5Button(["btn-sm btn-outline-secondary"], "Edit")
                ),
                H5Small(["text-muted"], "9 mins"))))),
        H5Div(["col"],
          BS5Card(["shadow-sm"],
            H5Svg(["bd-placeholder-img card-img-top"], ["width":"100%", "height":"225", "xmlns":"http://www.w3.org/2000/svg", "role":"img", "aria-label":"Placeholder: Thumbnail", "preserveAspectRatio":"xMidYMid slice", "focusable":"false"], 
            /* <title>Placeholder</title><rect "width":"100%" "height":"100%" fill="#55595c"/><text x="50%" y="50%" fill="#eceeef" dy=".3em">Thumbnail</text></svg> */
            ),
            BS5CardBody(
              BS5CardText("This is a wider card with supporting text below as a natural lead-in to additional content. This content is a little bit longer."),
              H5Div(["d-flex justify-content-between align-items-center"],
                H5Div(["btn-group"],
                  BS5Button(["btn-sm btn-outline-secondary"], "View"),
                  BS5Button(["btn-sm btn-outline-secondary"], "Edit")),
                H5Small(["text-muted"], "9 mins"))))),
        H5Div(["col"],
          BS5Card(["shadow-sm"],
            H5Svg(["bd-placeholder-img card-img-top"], ["width":"100%", "height":"225", "xmlns":"http://www.w3.org/2000/svg", "role":"img", "aria-label":"Placeholder: Thumbnail", "preserveAspectRatio":"xMidYMid slice", "focusable":"false"], 
            //<title>Placeholder</title><rect "width":"100%" "height":"100%" fill="#55595c"/><text x="50%" y="50%" fill="#eceeef" dy=".3em">Thumbnail</text></svg>
            ),
            BS5CardBody(
              BS5CardText("This is a wider card with supporting text below as a natural lead-in to additional content. This content is a little bit longer."),
              H5Div(["d-flex justify-content-between align-items-center"],
                H5Div(["btn-group"],
                  BS5Button(["btn-sm btn-outline-secondary"], "View"),
                  BS5Button(["btn-sm btn-outline-secondary"], "Edit")
                ),
                H5Small(["text-muted"], "9 mins")
              )
            )
          )
        ),
        H5Div(["col"], 
          BS5Card(["shadow-sm"], 
            H5Svg(["bd-placeholder-img card-img-top"], ["width":"100%", "height":"225", "xmlns":"http://www.w3.org/2000/svg", "role":"img", "aria-label":"Placeholder: Thumbnail", "preserveAspectRatio":"xMidYMid slice", "focusable":"false"],
            /* <title>Placeholder</title><rect "width":"100%" "height":"100%" fill="#55595c"/><text x="50%" y="50%" fill="#eceeef" dy=".3em">Thumbnail</text> */
            ),
            BS5CardBody(
              BS5CardText("This is a wider card with supporting text below as a natural lead-in to additional content. This content is a little bit longer."),
              H5Div(["d-flex justify-content-between align-items-center"], 
                H5Div(["btn-group"], 
                  BS5Button(["btn-sm btn-outline-secondary"], "View"),
                  BS5Button(["btn-sm btn-outline-secondary"], "Edit")
                ),
                H5Small(["text-muted"], "9 mins")
              )
            )
          )
        ),
        H5Div(["col"], 
          BS5Card(["shadow-sm"], 
            H5Svg(["bd-placeholder-img card-img-top"], ["width":"100%", "height":"225", "xmlns":"http://www.w3.org/2000/svg", "role":"img", "aria-label":"Placeholder: Thumbnail", "preserveAspectRatio":"xMidYMid slice", "focusable":"false"],
            /* <title>Placeholder</title><rect "width":"100%" "height":"100%" fill="#55595c"/><text x="50%" y="50%" fill="#eceeef" dy=".3em">Thumbnail</text> */
            ),
            BS5CardBody(
              BS5CardText("This is a wider card with supporting text below as a natural lead-in to additional content. This content is a little bit longer."),
              H5Div(["d-flex justify-content-between align-items-center"], 
                H5Div(["btn-group"], 
                  BS5Button(["btn-sm btn-outline-secondary"], "View"),
                  BS5Button(["btn-sm btn-outline-secondary"], "Edit")
                ),
                H5Small(["text-muted"], "9 mins")
              )
            )
          )
        ),
        H5Div(["col"], 
          BS5Card(["shadow-sm"], 
            H5Svg(["bd-placeholder-img card-img-top"], ["width":"100%", "height":"225", "xmlns":"http://www.w3.org/2000/svg", "role":"img", "aria-label":"Placeholder: Thumbnail", "preserveAspectRatio":"xMidYMid slice", "focusable":"false"],
/*             <title>Placeholder</title><rect "width":"100%" "height":"100%" fill="#55595c"/><text x="50%" y="50%" fill="#eceeef" dy=".3em">Thumbnail</text></svg>
 */         ),
            BS5CardBody(
              BS5CardText("This is a wider card with supporting text below as a natural lead-in to additional content. This content is a little bit longer."),
              H5Div(["d-flex justify-content-between align-items-center"], 
                H5Div(["btn-group"], 
                  BS5Button(["btn-sm btn-outline-secondary"], "View"),
                  BS5Button(["btn-sm btn-outline-secondary"], "Edit")
                ),
                H5Small(["text-muted"], "9 mins")
              )
            )
          )
        ),
        H5Div(["col"], 
          BS5Card(["shadow-sm"], 
            H5Svg(["bd-placeholder-img card-img-top"], ["width":"100%", "height":"225", "xmlns":"http://www.w3.org/2000/svg", "role":"img", "aria-label":"Placeholder: Thumbnail", "preserveAspectRatio":"xMidYMid slice", "focusable":"false"],
/*             <title>Placeholder</title><rect "width":"100%" "height":"100%" fill="#55595c"/><text x="50%" y="50%" fill="#eceeef" dy=".3em">Thumbnail</text></svg>
 */         ),
            BS5CardBody(
              BS5CardText("This is a wider card with supporting text below as a natural lead-in to additional content. This content is a little bit longer."),
              H5Div(["d-flex justify-content-between align-items-center"], 
                H5Div(["btn-group"], 
                  BS5Button(["btn-sm btn-outline-secondary"], "View"),
                  BS5Button(["btn-sm btn-outline-secondary"], "Edit")
                ),
                H5Small(["text-muted"], "9 mins")
              )
            )
          )
        ),
        H5Div(["col"], 
          BS5Card(["shadow-sm"], 
            H5Svg(["bd-placeholder-img card-img-top"], ["width":"100%", "height":"225", "xmlns":"http://www.w3.org/2000/svg", "role":"img", "aria-label":"Placeholder: Thumbnail", "preserveAspectRatio":"xMidYMid slice", "focusable":"false"],
/*             <title>Placeholder</title><rect "width":"100%" "height":"100%" fill="#55595c"/><text x="50%" y="50%" fill="#eceeef" dy=".3em">Thumbnail</text></svg>
 */         ),
            BS5CardBody(
              BS5CardText("This is a wider card with supporting text below as a natural lead-in to additional content. This content is a little bit longer."),
              H5Div(["d-flex justify-content-between align-items-center"], 
                H5Div(["btn-group"], 
                  BS5Button(["btn-sm btn-outline-secondary"], "View"),
                  BS5Button(["btn-sm btn-outline-secondary"], "Edit")
                ),
                H5Small(["text-muted"], "9 mins")
              )
            )
          )
        )
      )
    )
  ),
).toString~

H5Footer(["text-muted py-5"], 
  H5Div(["container"], 
    H5P(["float-end mb-1"], H5A(["href":"#"], "Back to top")),
    H5P(["mb-1"], "Album example is &copy;, Bootstrap, but, please download and customize it for yourself!"),
    H5P(["mb-0"], H5String("New to Bootstrap? "), H5A(["/"], "Visit the homepage"))
  )).toString;

    }
  });
}
 
