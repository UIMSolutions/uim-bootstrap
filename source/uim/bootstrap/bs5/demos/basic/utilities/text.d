module source.uim.bootstrap.bs5.demos.utilities.text;

import uim.bootstrap;

static this() {
	demoBS5.pages("basic/utilities/text", new class DH5AppPage {
		this() { 
			super(); 
			this
			.created(DateTime(2020, 12, 20, 10, 10, 0))
			.changed(timeLastModified(__FILE_FULL_PATH__))
			.parameters([
					"pageTitle": "Text - Bootstrap 5 Demo",
          ]);
		} 
			
    override string content() { 
            return 
H5Main(["style":"margin-top:70px;"], 
  H5Div(["container-fluid", "mt-3", "bg-light"],
    bs5Breadcrumbs(["/", "/demos", "/demos/uim-bootstrap", "/demos/uim-bootstrap/5/basic/", "/demos/uim-bootstrap/5/basic/utilities"], 
    ["UI Manufaktur", "Demos", "uim-bootstrap", "Bootstrap 5", "Basic", "Utilities"], "Text")),
  BS5Container(["mt-3"]).row(
    H5Div(["col-12", "col-lg-2"], 
      listLevels("basic"),
      listAreas("basic", "utilities"),
      listSections("basic", "utilities", "text")),
    H5Div(["col-12", "col-lg-8"], 
      dateInfo(created, changed),
      H5H2(["display-4"], "Text"),
      H5Hr,
    ),
    H5Div(["col-12", "col-lg-2"]))).toString;
    }
  });
}   /*
  H5Div(["container mt-3"]
    H5Div(["row"]
      H5Div(["col-12 col-lg-2"]
      )
      H5Div(["col-12 col-lg-8"]
        <h2 ["component display-4"]Text</h2>
        <hr>

       H5Div(["mb-5"]
              <h3 ["text-muted"]Alignment", 
              H5Div(
                H5H4(["h5", "text-muted", "mt-3"], "All breakpoints")
                H5P(["text-start"]Left-aligned text.")
                H5P(["text-center"]Center-aligned text.")
                H5P(["text-end"]Right-aligned text.")
                H5H4(["h5", "text-muted", "mt-3"], "Responsive")
                H5P(["text-sm-end"]Right-aligned text for breakpoint sm and up.")
                H5P(["text-md-end"]Right-aligned text for breakpoint md and up.")
                H5P(["text-lg-end"]Right-aligned text for breakpoint lg and up.")
                H5P(["text-xl-end"]Right-aligned text for breakpoint xl and up.")
                H5P(["text-xxl-end"]Right-aligned text for breakpoint xxl and up.")
                H5P(["text-sm-center"]Center-aligned text for breakpoint sm and up.")
                H5P(["text-md-center"]Center-aligned text for breakpoint md and up.")
                H5P(["text-lg-center"]Center-aligned text for breakpoint lg and up.")
                H5P(["text-xl-center"]Center-aligned text for breakpoint xl and up.")
                H5P(["text-xxl-center"]Center-aligned text for breakpoint xxl and up.")
                H5P(["text-end text-sm-start"]Right-aligned text as default. Left-aligned text for breakpoint sm and up.")
                H5P(["text-end text-md-start"]Right-aligned text as default. Left-aligned text for breakpoint md and up.")
                H5P(["text-end text-lg-start"]Right-aligned text as default. Left-aligned text for breakpoint lg and up.")
                H5P(["text-end text-xl-start"]Right-aligned text as default. Left-aligned text for breakpoint xl and up.")
                H5P(["text-end text-xxl-start"]Right-aligned text as default. Left-aligned text for breakpoint xxl and up.")
              )
            )

            H5Div(["mb-5"]
              <h3 ["text-muted"]Wrapping", 
              H5Div(
                H5Div(["badge", "bg-secondary", "text-wrap" "style":"width: 10rem;"]Lorem ipsum dolor sit amet, consectetur adipiscing elit.)
                H5P(["text-nowrap"]Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce sapien mi, eleifend at arcu ac, ullamcorper ultricies tortor. Aliquam sit amet pellentesque dui. Nam ultrices rhoncus sodales. Maecenas a ante turpis. Suspendisse at mauris ex. Cras quis lacus sit amet lacus iaculis vulputate ac id nibh. Vestibulum consectetur porta ante vitae iaculis. Sed pretium euismod arcu, ut aliquet ipsum rutrum venenatis.")
              )
            )

            H5Div(["mb-5"]
              <h3 ["text-muted"]Word break", 
              H5Div(
                H5P(["text-break"]abcdefghijklmnopqrstuvwxyz0123456789abcdefghijklmnopqrstuvwxyz0123456789abcdefghijklmnopqrstuvwxyz0123456789abcdefghijklmnopqrstuvwxyz0123456789")
              )
            )

            H5Div(["mb-5"]
              <h3 ["text-muted"]Transform", 
              H5Div(
                H5P(["text-lowercase"]Lowercased text")
                H5P(["text-uppercase"]Uppercased text")
                H5P(["text-capitalize"]Capitalized text")
              )
            )

            H5Div(["mb-5"]
              <h3 ["text-muted"]Font size", 
              H5Div(
                H5P(["fs-1"]Font size 1")
                H5P(["fs-2"]Font size 2")
                H5P(["fs-3"]Font size 3")
                H5P(["fs-4"]Font size 4")
                H5P(["fs-5"]Font size 5")
                H5P(["fs-6"]Font size 6")
              )
            )

            H5Div(["mb-5"]
              <h3 ["text-muted"]Font weight and italics", 
              H5Div(
                H5P(["fw-bold"]Bold text")
                H5P(["fw-bolder"]Bolder text")
                <p><strong ["fw-normal"]Normal weight text</strong>")
                H5P(["fw-light"]Light text")
                H5P(["fw-lighter"]Lighter text")
                H5P(["fst-italic"]Italic text")
                <p><em ["fst-normal"]Normal text</em>")
              )
            )

            H5Div(["mb-5"]
              <h3 ["text-muted"]Line height", 
              H5Div(
                H5H4(["h5", "text-muted", "mt-3"], "1")
                H5P(["lh-1"]Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce sapien mi, eleifend at arcu ac, ullamcorper ultricies tortor. Aliquam sit amet pellentesque dui. Nam ultrices rhoncus sodales. Maecenas a ante turpis. Suspendisse at mauris ex. Cras quis lacus sit amet lacus iaculis vulputate ac id nibh. Vestibulum consectetur porta ante vitae iaculis. Sed pretium euismod arcu, ut aliquet ipsum rutrum venenatis.")
                H5H4(["h5", "text-muted", "mt-3"], "Small")
                H5P(["lh-sm"]Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce sapien mi, eleifend at arcu ac, ullamcorper ultricies tortor. Aliquam sit amet pellentesque dui. Nam ultrices rhoncus sodales. Maecenas a ante turpis. Suspendisse at mauris ex. Cras quis lacus sit amet lacus iaculis vulputate ac id nibh. Vestibulum consectetur porta ante vitae iaculis. Sed pretium euismod arcu, ut aliquet ipsum rutrum venenatis.")
                H5H4(["h5", "text-muted", "mt-3"], "Base")
                H5P(["lh-base"]Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce sapien mi, eleifend at arcu ac, ullamcorper ultricies tortor. Aliquam sit amet pellentesque dui. Nam ultrices rhoncus sodales. Maecenas a ante turpis. Suspendisse at mauris ex. Cras quis lacus sit amet lacus iaculis vulputate ac id nibh. Vestibulum consectetur porta ante vitae iaculis. Sed pretium euismod arcu, ut aliquet ipsum rutrum venenatis.")
                H5H4(["h5", "text-muted", "mt-3"], "Large")
                H5P(["lh-lg"]Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce sapien mi, eleifend at arcu ac, ullamcorper ultricies tortor. Aliquam sit amet pellentesque dui. Nam ultrices rhoncus sodales. Maecenas a ante turpis. Suspendisse at mauris ex. Cras quis lacus sit amet lacus iaculis vulputate ac id nibh. Vestibulum consectetur porta ante vitae iaculis. Sed pretium euismod arcu, ut aliquet ipsum rutrum venenatis.")
              )
            )

            H5Div(["mb-5"]
              <h3 ["text-muted"]Monospace", 
              H5Div(
                H5P(["font-monospace"]Monospace text")
              )
            )

            H5Div(["mb-5"]
              <h3 ["text-muted"]Reset color", 
              H5Div(
                <p>Reset <a href="#" ["text-reset"]link</a> color")
              )
            )

            H5Div(["mb-5"]
              <h3 ["text-muted"]Text decoration", 
              H5Div(
                H5P(["text-decoration-underline"]Text with text line underneath it")
                H5P(["text-decoration-line-through"]Text with text line going through it")
                <a href="#" ["text-decoration-none"]Link without text decoration</a>
              )
            )

          )
        )
      )
    </main>
      `;
    }
  });
}*/