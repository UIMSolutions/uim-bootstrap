module source.uim.bootstrap.bs5.demos.utilities.sizing;

import uim.bootstrap;

static this() {
	demoBS5.pages("basic/utilities/sizing", new class DH5AppPage {
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

auto relativeExample = demoBs5Example("relative", "Relative to parent", 
  H5Div(
    H5H4(["h5", "text-muted", "mt-3"], "Width"),
    H5Div(["bg-secondary"],
      H5Div(["bg-light", "p-2", "w-25"], "Width 25%"),
      H5Div(["bg-light", "p-2", "w-50"], "Width 50%"),
      H5Div(["bg-light", "p-2", "w-75"], "Width 75%"),
      H5Div(["bg-", "p-2", "w-100"], "Width 100%")
    ),
    H5H4(["h5", "text-muted", "mt-3"], "Height"),
    H5Div(["bg-secondary", "d-flex", "justify-content-between"], ["style":"height: 200px;"],
      H5Div(["bg-light", "p-2", "h-25"], "Height 25%"),
      H5Div(["bg-light", "p-2", "h-50"], "Height 50%"),
      H5Div(["bg-light", "p-2", "h-75"], "Height 75%"),
      H5Div(["bg-light", "p-2", "h-100"], "Height 100%")
    )
  ), ``, ``);

auto maxExample = demoBs5Example("max", "Max width and height", 
  H5Div(
    H5H4(["h5", "text-muted", "mt-3"], "Max-width"),
    H5Img(["mw-100"], ["src":"/img/600x200.png", "alt":"Max-width = 100%"]), 
    H5H4(["h5", "text-muted", "mt-3"], "Max-height"),
    H5Div(["style":"height: 400px;"],
      H5Img(["mh-100"], ["src":"/img/200x600.png", "alt":"Max-height = 100%"]) 
    )
  ), ``, ``);

auto viewportExample = demoBs5Example("viewport", "Relative to viewport", 
  H5Div(
    H5H4(["h5", "text-muted", "mt-3"], "Width"),
    H5Img(["vw-100"], ["src":"/img/1000x200.png", "alt":"Width 100vw"]), 
    H5H4(["h5", "text-muted", "mt-3"], "Min-width"),
    H5Img(["min-vw-100"], ["src":"/img/1000x200.png", "alt":"Min-width 100vw"]),
    H5H4(["h5", "text-muted", "mt-3"], "Height"),
    H5Img(["vh-100"], ["src":"/img/200x2000.png", "alt":"Height 100vh"]), 
    H5H4(["h5", "text-muted", "mt-3"], "Min-height"),
    H5Img(["min-vh-100"], ["src":"/img/200x2000.png", "alt":"Min-height 100vh"]) 
  ), ``, ``);
   
      return 
H5Main(["style":"margin-top:70px;"], 
  H5Div(["container-fluid", "mt-3", "bg-light"],
    bs5Breadcrumbs(["/", "/demos", "/demos/uim-bootstrap", "/demos/uim-bootstrap/5/", "/demos/uim-bootstrap/5/basic/", "/demos/uim-bootstrap/5/basic/utilities"], 
    ["UI Manufaktur", "Demos", "uim-bootstrap", "Bootstrap 5", "Basic", "Utilities"], "Sizing")),
  BS5Container(["mt-3"]).row(
    H5Div(["col-12", "col-lg-2"], 
      listLevels("basic"),
      listAreas("basic", "utilities"),
      listSections("basic", "utilities", "sizing")),
    H5Div(["col-12", "col-lg-8"], 
      dateInfo(this),
      H5H2(["display-4"], "Sizing"),
      H5Hr,

      relativeExample, 
      maxExample, 
      viewportExample

    ),
    H5Div(["col-12", "col-lg-2"]))).toString;
    }
  });
}   

   