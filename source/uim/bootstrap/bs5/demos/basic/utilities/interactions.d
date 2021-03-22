module source.uim.bootstrap.bs5.demos.utilities.interactions;

import uim.bootstrap;

static this() {
	demoBS5.pages("basic/utilities/interactions", new class DH5AppPage {
		this() { 
			super(); 
			this
			.created(DateTime(2020, 12, 20, 10, 10, 0))
			.changed(timeLastModified(__FILE_FULL_PATH__))
			.parameters([
					"pageTitle": "Interactions - Bootstrap 5 Demo",
          ]);
		} 
			
    override string content(string[string] someParameters = null) {  

auto textExample = demoBs5Example("text", "Text selection", 
  H5Div(
    H5H5(["text-muted", "mt-3"], "All"),
    H5P(["user-select-all"], "Lorem ipsum dolor sit amet, consectetur adipiscing elit. In laoreet pellentesque lorem sed elementum. Suspendisse maximus convallis ex. Etiam eleifend velit leo."),
    H5H5(["text-muted", "mt-3"], "Auto"),
    H5P(["user-select-auto"], ["style":"user-select: none;"], "Lorem ipsum dolor sit amet, consectetur adipiscing elit. In laoreet pellentesque lorem sed elementum. Suspendisse maximus convallis ex. Etiam eleifend velit leo."),
    H5H5(["text-muted", "mt-3"], "None"),
    H5P(["user-select-none"], "Lorem ipsum dolor sit amet, consectetur adipiscing elit. In laoreet pellentesque lorem sed elementum. Suspendisse maximus convallis ex. Etiam eleifend velit leo.")
  ), ``, ``);

auto defaultExample = demoBs5Example("default", "Pointer events", 
  H5Div(
    H5H5(["text-muted", "mt-3"], "None"),
    H5P(
      H5A(["pe-none"], ["href":"#"], "Lorem ipsum dolor sit amet, consectetur adipiscing elit."), 
      H5String("In laoreet pellentesque lorem sed elementum. Suspendisse maximus convallis ex. Etiam eleifend velit leo.")),
    H5H5(["text-muted", "mt-3"], "Auto"),
    H5P(
      H5A(["pe-auto"], ["href":"#", "style":"pointer-events: none;"], "Lorem ipsum dolor sit amet, consectetur adipiscing elit"), 
      H5String("In laoreet pellentesque lorem sed elementum. Suspendisse maximus convallis ex. Etiam eleifend velit leo.")),
    H5H5(["text-muted", "mt-3"], "None for parent, auto for second child"),
    H5P(["pe-none"], 
      H5A(["href":"#"], "Lorem ipsum dolor sit amet, consectetur adipiscing elit."),
      H5String("In laoreet pellentesque lorem sed elementum. Suspendisse maximus convallis ex."),
      H5A(["pe-auto"], ["href":"#"], "Etiam eleifend velit leo),."))
  ), ``, ``);

      return 
H5Main(["style":"margin-top:70px;"], 
  H5Div(["container-fluid", "mt-3", "bg-light"],
    bs5Breadcrumbs(["/", "/demos", "/demos/uim-bootstrap", "/demos/uim-bootstrap/5/", "/demos/uim-bootstrap/5/basic/", "/demos/uim-bootstrap/5/basic/utilities"], 
    ["UI Manufaktur", "Demos", "uim-bootstrap", "Bootstrap 5", "Basic", "Utilities"], "Interactions")),
  BS5Container(["mt-3"]).row(
    H5Div(["col-12", "col-lg-2"], 
      listLevels("basic"),
      listAreas("basic", "utilities"),
      listSections("basic", "utilities", "interactions")),
    H5Div(["col-12", "col-lg-8"], 
      dateInfo(this),
      H5H2(["display-4"], "Interactions"),
      H5Hr,

      textExample, 
      defaultExample
    
    ),
    H5Div(["col-12", "col-lg-2"]))).toString;
    }
  });
}   
