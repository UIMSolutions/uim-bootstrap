module source.uim.bootstrap.bs5.demos.helpers.stretchedlink;

import uim.bootstrap;

static this() {
	demoBS5.pages("basic/helpers/stretchedlink", new class DH5AppPage {
		this() { 
			super(); 
			this
			.created(DateTime(2020, 12, 20, 10, 10, 0))
			.changed(timeLastModified(__FILE_FULL_PATH__))
			.parameters([
					"pageTitle": "Stretched Link - Bootstrap 5 Demo",
          ]);
		} 
			
    override string content() { 
      return 
H5Main(["style":"margin-top:70px;"], 
  H5Div(["container-fluid", "mt-3", "bg-light"],
    bs5Breadcrumbs(["/", "/demos", "/demos/uim-bootstrap", "/demos/uim-bootstrap/5/", "/demos/uim-bootstrap/5/basic/", "/demos/uim-bootstrap/5/basic/helpers"], 
    ["UI Manufaktur", "Demos", "uim-bootstrap", "Bootstrap 5", "Basic", "Helpers"], "Stretched Link")),

  BS5Container(["mt-3"]).row(
    H5Div(["col-12", "col-lg-2"], 
      listLevels("basic"),
      listAreas("basic", "helpers"),
      listSections("basic", "helpers", "stretchedlink")),
    H5Div(["col-12", "col-lg-8"], 
      dateInfo(this),
      H5H2(["display-4"], "Stretched Link"),
      H5Hr,

      demoBs5Example("card", "Cards",
        H5Div(
          BS5Card(
            BS5CardBody(
              BS5CardTitle("Card title"),
              BS5CardText("Lorem ipsum dolor sit amet, consectetur adipiscing elit. In laoreet pellentesque lorem sed elementum. Suspendisse maximus convallis ex. Etiam eleifend velit leo."),
              BS5CardLink(["stretched-link"], ["href":"#"], "Stretched link")))
        ), ``, ``),

      demoBs5Example("custom", "Custom component",
        H5Div(
          H5Div(["d-flex", "position-relative"],
            H5Img(["me-3"], ["src":"/img/200x200.png", "alt":""],
            H5Div(
              H5H5("Media object",
              H5P("Lorem ipsum dolor sit amet, consectetur adipiscing elit. In laoreet pellentesque lorem sed elementum. Suspendisse maximus convallis ex. Etiam eleifend velit leo."),
              H5A(["stretched-link"], ["href":"#"], "Stretched link")))))
        ), ``, ``),

      demoBs5Example("row", "Row",
        H5Div(
          BS5Row(["position-relative"],
            BS5Col(["col"],
              H5P("Lorem ipsum dolor sit amet, consectetur adipiscing elit. In laoreet pellentesque lorem sed elementum. Suspendisse maximus convallis ex. Etiam eleifend velit leo.")),
            BS5Col(
              H5P("Lorem ipsum dolor sit amet, consectetur adipiscing elit. In laoreet pellentesque lorem sed elementum. Suspendisse maximus convallis ex. Etiam eleifend velit leo."),
              H5A(["stretched-link"], ["href":"#"], "Stretched link")))
        ), ``, ``)

     ),
    H5Div(["col-12", "col-lg-2"]))).toString;
    }
  });
}
