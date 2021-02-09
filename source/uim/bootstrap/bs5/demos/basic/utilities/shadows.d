module source.uim.bootstrap.bs5.demos.utilities.shadows;

import uim.bootstrap;

static this() {
	demoBS5.pages("basic/utilities/shadows", new class DH5AppPage {
		this() { 
			super(); 
			this
			.created(DateTime(2020, 12, 20, 10, 10, 0))
			.changed(timeLastModified(__FILE_FULL_PATH__))
			.parameters([
					"pageTitle": "Shadows - Bootstrap 5 Demo",
          ]);
		} 
			
    override string content() { 

auto shadowsExample = demoBs5Example("shadows", "Shadows",
  H5Div(
    H5Div(["card p-3 mb-5 shadow-none"], ["style":"box-shadow: 0 0.5rem 1rem rgba(0,0,0,.2);"], "No shadow"),
    H5Div(["card p-3 mb-5 shadow-sm"], "Small shadow"),
    H5Div(["card p-3 mb-5 shadow"], "Regular shadow"),
    H5Div(["card p-3 mb-5 shadow-lg"], "Large shadow")
  ), ``, ``);
      return 
H5Main(["style":"margin-top:70px;"], 
  H5Div(["container-fluid", "mt-3", "bg-light"],
    bs5Breadcrumbs(["/", "/demos", "/demos/uim-bootstrap", "/demos/uim-bootstrap/5/basic/", "/demos/uim-bootstrap/5/basic/utilities"], 
    ["UI Manufaktur", "Demos", "uim-bootstrap", "Bootstrap 5", "Basic", "Utilities"], "Shadows")),
  BS5Container(["mt-3"]).row(
    H5Div(["col-12", "col-lg-2"], 
      listLevels("basic"),
      listAreas("basic", "utilities"),
      listSections("basic", "utilities", "shadows")),
    H5Div(["col-12", "col-lg-8"], 
      dateInfo(this),
      H5H2(["display-4"], "Shadows"),
      H5Hr,

      shadowsExample
      
    ),
    H5Div(["col-12", "col-lg-2"]))).toString;
    }
  });
}   
