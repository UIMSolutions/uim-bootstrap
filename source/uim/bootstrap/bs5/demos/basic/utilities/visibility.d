module source.uim.bootstrap.bs5.demos.utilities.visibility;

import uim.bootstrap;

static this() {
	demoBS5.pages("basic/utilities/visibility", new class DH5AppPage {
		this() { 
			super(); 
			this
			.created(DateTime(2020, 12, 20, 10, 10, 0))
			.changed(timeLastModified(__FILE_FULL_PATH__))
			.parameters([
					"pageTitle": "Visibility - Bootstrap 5 Demo",
          ]);
		} 
			
    override string content() { 

      auto hiddenExample = demoBs5Example("hidden", "Hidden", 
  H5Div(
    H5Div(["card p-3 mb-3 visible"], ["style":"visibility: hidden;"], "Visible card"),
    H5Div(["card p-3 invisible"], "Invisible card")
   ), ``, ``);

  return 
H5Main(["style":"margin-top:70px;"], 
  H5Div(["container-fluid", "mt-3", "bg-light"],
    bs5Breadcrumbs(["/", "/demos", "/demos/uim-bootstrap", "/demos/uim-bootstrap/5/basic/", "/demos/uim-bootstrap/5/basic/utilities"], 
    ["UI Manufaktur", "Demos", "uim-bootstrap", "Bootstrap 5", "Basic", "Utilities"], "Visibility")),
  BS5Container(["mt-3"]).row(
    H5Div(["col-12", "col-lg-2"], 
      listLevels("basic"),
      listAreas("basic", "utilities"),
      listSections("basic", "utilities", "visibility")),
    H5Div(["col-12", "col-lg-8"], 
      dateInfo(created, changed),
      H5H2(["display-4"], "Visibility"),
      H5Hr,

      hiddenExample
    ),
    H5Div(["col-12", "col-lg-2"]))).toString;
    }
  });
}  
