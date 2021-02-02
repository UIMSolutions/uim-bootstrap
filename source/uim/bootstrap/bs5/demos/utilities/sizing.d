module source.uim.bootstrap.bs5.demos.utilities.sizing;

import uim.bootstrap;

static this() {
	demoBS5.pages("utilities/sizing", new class DH5AppPage {
		this() { 
			super(); 
			this
			.created(DateTime(2020, 12, 20, 10, 10, 0))
			.changed(timeLastModified(__FILE_FULL_PATH__))
			.parameters([
					"pageTitle": "Sizing - Bootstrap 5 Demo",
          ]);
		} 
			
    override string content() { 
      return 
H5Main(
  H5Div(["container-fluid", "mt-3", "bg-light"],
    bs5Breadcrumbs(["/", "/demos", "/demos/uim-bootstrap", "/demos/uim-bootstrap/5", "/demos/uim-bootstrap/5/utilities"], 
    ["UI Manufaktur", "Demos", "uim-bootstrap", "Bootstrap 5", "Utilities"], "Sizing")),
  BS5Container(["mt-3"]).row(
    H5Div(["col-12", "col-lg-2"]),
    H5Div(["col-12", "col-lg-8"], 
      H5H2(["display-4"], "Sizing"),
      H5Hr,
    ),
    H5Div(["col-12", "col-lg-2"]))).toString;
    }
  });
}   
/* H5Div(["container mt-3"]
    H5Div(["row"]
      H5Div(["col-12 col-lg-2"]
      )
      H5Div(["col-12 col-lg-8"]
        <h2 ["component display-4"]Sizing</h2>
        <hr>

        H5Div(["mb-5"]
              <h3 ["text-muted"]Relative to parent</h3>
              H5Div(
                H5H4(["h5", "text-muted", "mt-3"], "Width")
                H5Div(["bg-secondary"]
                  H5Div(["bg-light p-2 w-25"]Width 25%)
                  H5Div(["bg-light p-2 w-50"]Width 50%)
                  H5Div(["bg-light p-2 w-75"]Width 75%)
                  H5Div(["bg-light p-2 w-100"]Width 100%)
                )
                H5H4(["h5", "text-muted", "mt-3"], "Height")
                H5Div(["bg-secondary d-flex justify-content-between" "style":"height: 200px;"]
                  H5Div(["bg-light p-2 h-25"]Height 25%)
                  H5Div(["bg-light p-2 h-50"]Height 50%)
                  H5Div(["bg-light p-2 h-75"]Height 75%)
                  H5Div(["bg-light p-2 h-100"]Height 100%)
                )
              )
            )

            H5Div(["mb-5"]
              <h3 ["text-muted"]Max width and height</h3>
              H5Div(
                H5H4(["h5", "text-muted", "mt-3"], "Max-width")
                H5Img(["src":"/img/600x200.png" "alt":"Max-width = 100%" ["mw-100"]
                H5H4(["h5", "text-muted", "mt-3"], "Max-height")
                <div "style":"height: 400px;"]
                  H5Img(["src":"/img/200x600.png" "alt":"Max-height = 100%" ["mh-100"]
                )
              )
            )

            H5Div(["mb-5"]
              <h3 ["text-muted"]Relative to viewport</h3>
              H5Div(
                H5H4(["h5", "text-muted", "mt-3"], "Width")
                H5Img(["src":"/img/1000x200.png" "alt":"Width 100vw" ["vw-100"]
                H5H4(["h5", "text-muted", "mt-3"], "Min-width")
                H5Img(["src":"/img/1000x200.png" "alt":"Min-width 100vw" ["min-vw-100"]
                H5H4(["h5", "text-muted", "mt-3"], "Height")
                H5Img(["src":"/img/200x2000.png" "alt":"Height 100vh" ["vh-100"]
                H5H4(["h5", "text-muted", "mt-3"], "Min-height")
                H5Img(["src":"/img/200x2000.png" "alt":"Min-height 100vh" ["min-vh-100"]
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