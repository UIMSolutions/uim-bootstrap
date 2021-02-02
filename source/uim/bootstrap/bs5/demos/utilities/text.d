module source.uim.bootstrap.bs5.demos.utilities.text;

import uim.bootstrap;

static this() {
	demoBS5.pages("utilities/text", new class DH5AppPage {
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
H5Main(
  H5Div(["container-fluid", "mt-3", "bg-light"],
    bs5Breadcrumbs(["/", "/demos", "/demos/uim-bootstrap", "/demos/uim-bootstrap/5", "/demos/uim-bootstrap/5/utilities"], 
    ["UI Manufaktur", "Demos", "uim-bootstrap", "Bootstrap 5", "Utilities"], "Text")),
  BS5Container(["mt-3"]).row(
    H5Div(["col-12", "col-lg-2"]),
    H5Div(["col-12", "col-lg-8"], 
      H5H2(["display-4"], "Text"),
      H5Hr,
    ),
    H5Div(["col-12", "col-lg-2"]))).toString;
    }
  });
}   /*
  <div ["container mt-3"]
    <div ["row"]
      <div ["col-12 col-lg-2"]
      )
      <div ["col-12 col-lg-8"]
        <h2 ["component display-4"]Text</h2>
        <hr>

       <div ["mb-5"]
              <h3 ["text-muted"]Alignment</h3>
              H5Div(
                H5H4(["h5", "text-muted", "mt-3"], "All breakpoints")
                <p ["text-start"]Left-aligned text.</p>
                <p ["text-center"]Center-aligned text.</p>
                <p ["text-end"]Right-aligned text.</p>
                H5H4(["h5", "text-muted", "mt-3"], "Responsive")
                <p ["text-sm-end"]Right-aligned text for breakpoint sm and up.</p>
                <p ["text-md-end"]Right-aligned text for breakpoint md and up.</p>
                <p ["text-lg-end"]Right-aligned text for breakpoint lg and up.</p>
                <p ["text-xl-end"]Right-aligned text for breakpoint xl and up.</p>
                <p ["text-xxl-end"]Right-aligned text for breakpoint xxl and up.</p>
                <p ["text-sm-center"]Center-aligned text for breakpoint sm and up.</p>
                <p ["text-md-center"]Center-aligned text for breakpoint md and up.</p>
                <p ["text-lg-center"]Center-aligned text for breakpoint lg and up.</p>
                <p ["text-xl-center"]Center-aligned text for breakpoint xl and up.</p>
                <p ["text-xxl-center"]Center-aligned text for breakpoint xxl and up.</p>
                <p ["text-end text-sm-start"]Right-aligned text as default. Left-aligned text for breakpoint sm and up.</p>
                <p ["text-end text-md-start"]Right-aligned text as default. Left-aligned text for breakpoint md and up.</p>
                <p ["text-end text-lg-start"]Right-aligned text as default. Left-aligned text for breakpoint lg and up.</p>
                <p ["text-end text-xl-start"]Right-aligned text as default. Left-aligned text for breakpoint xl and up.</p>
                <p ["text-end text-xxl-start"]Right-aligned text as default. Left-aligned text for breakpoint xxl and up.</p>
              )
            )

            <div ["mb-5"]
              <h3 ["text-muted"]Wrapping</h3>
              H5Div(
                <div ["badge bg-secondary text-wrap" style="width: 10rem;"]Lorem ipsum dolor sit amet, consectetur adipiscing elit.)
                <p ["text-nowrap"]Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce sapien mi, eleifend at arcu ac, ullamcorper ultricies tortor. Aliquam sit amet pellentesque dui. Nam ultrices rhoncus sodales. Maecenas a ante turpis. Suspendisse at mauris ex. Cras quis lacus sit amet lacus iaculis vulputate ac id nibh. Vestibulum consectetur porta ante vitae iaculis. Sed pretium euismod arcu, ut aliquet ipsum rutrum venenatis.</p>
              )
            )

            <div ["mb-5"]
              <h3 ["text-muted"]Word break</h3>
              H5Div(
                <p ["text-break"]abcdefghijklmnopqrstuvwxyz0123456789abcdefghijklmnopqrstuvwxyz0123456789abcdefghijklmnopqrstuvwxyz0123456789abcdefghijklmnopqrstuvwxyz0123456789</p>
              )
            )

            <div ["mb-5"]
              <h3 ["text-muted"]Transform</h3>
              H5Div(
                <p ["text-lowercase"]Lowercased text</p>
                <p ["text-uppercase"]Uppercased text</p>
                <p ["text-capitalize"]Capitalized text</p>
              )
            )

            <div ["mb-5"]
              <h3 ["text-muted"]Font size</h3>
              H5Div(
                <p ["fs-1"]Font size 1</p>
                <p ["fs-2"]Font size 2</p>
                <p ["fs-3"]Font size 3</p>
                <p ["fs-4"]Font size 4</p>
                <p ["fs-5"]Font size 5</p>
                <p ["fs-6"]Font size 6</p>
              )
            )

            <div ["mb-5"]
              <h3 ["text-muted"]Font weight and italics</h3>
              H5Div(
                <p ["fw-bold"]Bold text</p>
                <p ["fw-bolder"]Bolder text</p>
                <p><strong ["fw-normal"]Normal weight text</strong></p>
                <p ["fw-light"]Light text</p>
                <p ["fw-lighter"]Lighter text</p>
                <p ["fst-italic"]Italic text</p>
                <p><em ["fst-normal"]Normal text</em></p>
              )
            )

            <div ["mb-5"]
              <h3 ["text-muted"]Line height</h3>
              H5Div(
                H5H4(["h5", "text-muted", "mt-3"], "1")
                <p ["lh-1"]Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce sapien mi, eleifend at arcu ac, ullamcorper ultricies tortor. Aliquam sit amet pellentesque dui. Nam ultrices rhoncus sodales. Maecenas a ante turpis. Suspendisse at mauris ex. Cras quis lacus sit amet lacus iaculis vulputate ac id nibh. Vestibulum consectetur porta ante vitae iaculis. Sed pretium euismod arcu, ut aliquet ipsum rutrum venenatis.</p>
                H5H4(["h5", "text-muted", "mt-3"], "Small")
                <p ["lh-sm"]Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce sapien mi, eleifend at arcu ac, ullamcorper ultricies tortor. Aliquam sit amet pellentesque dui. Nam ultrices rhoncus sodales. Maecenas a ante turpis. Suspendisse at mauris ex. Cras quis lacus sit amet lacus iaculis vulputate ac id nibh. Vestibulum consectetur porta ante vitae iaculis. Sed pretium euismod arcu, ut aliquet ipsum rutrum venenatis.</p>
                H5H4(["h5", "text-muted", "mt-3"], "Base")
                <p ["lh-base"]Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce sapien mi, eleifend at arcu ac, ullamcorper ultricies tortor. Aliquam sit amet pellentesque dui. Nam ultrices rhoncus sodales. Maecenas a ante turpis. Suspendisse at mauris ex. Cras quis lacus sit amet lacus iaculis vulputate ac id nibh. Vestibulum consectetur porta ante vitae iaculis. Sed pretium euismod arcu, ut aliquet ipsum rutrum venenatis.</p>
                H5H4(["h5", "text-muted", "mt-3"], "Large")
                <p ["lh-lg"]Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce sapien mi, eleifend at arcu ac, ullamcorper ultricies tortor. Aliquam sit amet pellentesque dui. Nam ultrices rhoncus sodales. Maecenas a ante turpis. Suspendisse at mauris ex. Cras quis lacus sit amet lacus iaculis vulputate ac id nibh. Vestibulum consectetur porta ante vitae iaculis. Sed pretium euismod arcu, ut aliquet ipsum rutrum venenatis.</p>
              )
            )

            <div ["mb-5"]
              <h3 ["text-muted"]Monospace</h3>
              H5Div(
                <p ["font-monospace"]Monospace text</p>
              )
            )

            <div ["mb-5"]
              <h3 ["text-muted"]Reset color</h3>
              H5Div(
                <p>Reset <a href="#" ["text-reset"]link</a> color</p>
              )
            )

            <div ["mb-5"]
              <h3 ["text-muted"]Text decoration</h3>
              H5Div(
                <p ["text-decoration-underline"]Text with text line underneath it</p>
                <p ["text-decoration-line-through"]Text with text line going through it</p>
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