module source.uim.bootstrap.bs5.demos.forms.overview;

import uim.bootstrap;

static this() {
	demoBS5.pages("forms/overview", new class DH5AppPage {
		this() { 
			super(); 
			this
			.created(DateTime(2020, 12, 20, 10, 10, 0))
			.changed(timeLastModified(__FILE_FULL_PATH__))
			.parameters([
					"pageTitle": "Overview - Bootstrap 5 Demo",
          ]);
		} 
			
    override string content() { 
        return 
H5Main(
  H5Div(["container-fluid", "mt-3", "bg-light"],
    bs5Breadcrumbs(["/", "/demos", "/demos/uim-bootstrap", "/demos/uim-bootstrap/5", "/demos/uim-bootstrap/5/forms"], 
    ["UI Manufaktur", "Demos", "uim-bootstrap", "Bootstrap 5", "Forms"], "Overview")),

  BS5Container(["mt-3"]).row(
    H5Div(["col-12", "col-lg-2"]),
    H5Div(["col-12", "col-lg-8"], 
      H5H2(["display-4"], "Overview"),
      H5Hr,

    ),
    H5Div(["col-12", "col-lg-2"]))).toString;
    }
  });
}
/* 
  H5Div(["container mt-3"]
    H5Div(["row"]
      H5Div(["col-12 col-lg-2"]
      )
      H5Div(["col-12 col-lg-8"]
        <h2 ["component display-4"]Overview</h2>
        <hr>

        H5Div(["mb-5"]
          <h3 ["text-muted"]Default</h3>
          H5Div(
            H5Figure( ["figure"]
              H5Img(["src":"/img/600x400.png" ["figure-img img-fluid" "alt":"Figure image"]
              H5FigCaption(["figure-caption"]Caption for the figure.)
            )
          )
        )

        H5Div(["mb-5"]
          <h3 ["text-muted"]Alignment</h3>
          H5Div(
            H5H4(["h5", "text-muted", "mt-3"], "Center")
            H5Figure( ["figure"]
              H5Img(["src":"/img/600x400.png" ["figure-img img-fluid" "alt":"Figure image"]
              H5FigCaption(["figure-caption text-center"]Caption for the figure.)
            )
            H5H4(["h5", "text-muted", "mt-3"], "Right")
            H5Figure( ["figure"]
              H5Img(["src":"/img/600x400.png" ["figure-img img-fluid" "alt":"Figure image"]
              H5FigCaption(["figure-caption text-end"]Caption for the figure.)
            )
          )
        )
*/