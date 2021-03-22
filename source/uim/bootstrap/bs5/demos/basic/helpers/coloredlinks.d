module source.uim.bootstrap.bs5.demos.helpers.coloredlinks;

import uim.bootstrap;

static this() {
	demoBS5.pages("basic/helpers/coloredlinks", new class DH5AppPage {
		this() { 
			super(); 
			this
			.created(DateTime(2020, 12, 20, 10, 10, 0))
			.changed(timeLastModified(__FILE_FULL_PATH__))
			.parameters([
					"pageTitle": "Colored Links - Bootstrap 5 Demo",
          ]);
		} 
			
    override string content(string[string] someParameters = null) {  
      return 
H5Main(["style":"margin-top:70px;"], 
  H5Div(["container-fluid", "mt-3", "bg-light"],
    bs5Breadcrumbs(["/", "/demos", "/demos/uim-bootstrap", "/demos/uim-bootstrap/5/", "/demos/uim-bootstrap/5/basic/", "/demos/uim-bootstrap/5/basic/helpers"], 
    ["UI Manufaktur", "Demos", "uim-bootstrap", "Bootstrap 5", "Basic", "Helpers"], "Colored Links")),

  BS5Container(["mt-3"]).row(
    H5Div(["col-12", "col-lg-2"], 
      listLevels("basic"),
      listAreas("basic", "helpers"),
      listSections("basic", "helpers", "coloredlinks")),
    H5Div(["col-12", "col-lg-8"], 
      dateInfo(this),
      H5H2(["display-4"], "Colored Links"),
      H5Hr,

      demoBs5Example("links", "Colored Links",
        H5Div(
          H5A(["link-primary"], ["href":"#"], "Primary link"), H5Br,
          H5A(["link-secondary"], ["href":"#"], "Secondary link"), H5Br,
          H5A(["link-success"], ["href":"#"], "Success link"), H5Br,
          H5A(["link-danger"], ["href":"#"], "Danger link"), H5Br,
          H5A(["link-warning"], ["href":"#"], "Warning link"), H5Br,
          H5A(["link-info"], ["href":"#"], "Info link"), H5Br,
          H5A(["link-light"], ["href":"#"], "Light link"), H5Br,
          H5A(["link-dark"], ["href":"#"], "Dark link"), H5Br
          ), ``, ``)
      ),
    H5Div(["col-12", "col-lg-2"]))).toString;
    }
  });
}
 
