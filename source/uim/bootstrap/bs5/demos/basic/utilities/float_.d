module source.uim.bootstrap.bs5.demos.utilities.float_;

import uim.bootstrap;

static this() {
	demoBS5.pages("basic/utilities/float", new class DH5AppPage {
		this() { 
			super(); 
			this
			.created(DateTime(2020, 12, 20, 10, 10, 0))
			.changed(timeLastModified(__FILE_FULL_PATH__))
			.parameters([
					"pageTitle": "Float - Bootstrap 5 Demo",
          ]);
		} 
			
    override string content() { 

auto defaultExample = demoBs5Example("default", "Default", 
  H5Div(
    H5Div(["float-start"], "Float left"), H5Br,
    H5Div(["float-end"], "Float right"), H5Br,
    H5Div(["float-none"], "Don't float"), H5Br
  ), ``, ``);

auto responsiveExample = demoBs5Example("responsive", "Responsive", 
  H5Div(
    H5H4(["h5", "text-muted", "mt-3"], "Float left"),
    H5Div(["float-sm-start"], "Float left for breakpoints sm and up"), H5Br,
    H5Div(["float-md-start"], "Float left for breakpoints md and up"), H5Br,
    H5Div(["float-lg-start"], "Float left for breakpoints lg and up"), H5Br,
    H5Div(["float-xl-start"], "Float left for breakpoints xl and up"), H5Br,
    H5Div(["float-xxl-start"], "Float left for breakpoints xxl and up"), H5Br,
    H5H4(["h5", "text-muted", "mt-3"], "Float right"),
    H5Div(["float-sm-end"], "Float right for breakpoints sm and up"), H5Br,
    H5Div(["float-md-end"], "Float right for breakpoints md and up"), H5Br,
    H5Div(["float-lg-end"], "Float right for breakpoints lg and up"), H5Br,
    H5Div(["float-xl-end"], "Float right for breakpoints xl and up"), H5Br,
    H5Div(["float-xxl-end"], "Float right for breakpoints xxl and up"), H5Br,
    H5H4(["h5", "text-muted", "mt-3"], "Float none"),
    H5Div(["float-sm-none"], "Don't float for breakpoints sm and up"), H5Br,
    H5Div(["float-md-none"], "Don't float for breakpoints md and up"), H5Br,
    H5Div(["float-lg-none"], "Don't float for breakpoints lg and up"), H5Br,
    H5Div(["float-xl-none"], "Don't float for breakpoints xl and up"), H5Br,
    H5Div(["float-xxl-none"], "Don't float for breakpoints xxl and up"), H5Br
  ), ``, ``);

      return 
H5Main(["style":"margin-top:70px;"], 
  H5Div(["container-fluid", "mt-3", "bg-light"],
    bs5Breadcrumbs(["/", "/demos", "/demos/uim-bootstrap", "/demos/uim-bootstrap/5/", "/demos/uim-bootstrap/5/basic/", "/demos/uim-bootstrap/5/basic/utilities"], 
    ["UI Manufaktur", "Demos", "uim-bootstrap", "Bootstrap 5", "Basic", "Utilities"], "Float")),
  BS5Container(["mt-3"]).row(
    H5Div(["col-12", "col-lg-2"], 
      listLevels("basic"),
      listAreas("basic", "utilities"),
      listSections("basic", "utilities", "float")),
    H5Div(["col-12", "col-lg-8"], 
      dateInfo(this),
      H5H2(["display-4"], "Float"),
      H5Hr,

      defaultExample, 
      responsiveExample
      
    ),
    H5Div(["col-12", "col-lg-2"]))).toString;
    }
  });
}   