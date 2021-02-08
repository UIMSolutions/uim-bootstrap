module source.uim.bootstrap.bs5.demos.utilities.colors;

import uim.bootstrap;

static this() {
	demoBS5.pages("basic/utilities/colors", new class DH5AppPage {
		this() { 
			super(); 
			this
			.created(DateTime(2020, 12, 20, 10, 10, 0))
			.changed(timeLastModified(__FILE_FULL_PATH__))
			.parameters([
					"pageTitle": "Colors - Bootstrap 5 Demo",
          ]);
		} 
			
    override string content() { 

auto colorExample = demoBs5Example("color", "Color",
  H5Div(
    H5P(["text-primary"], "Text primary color."),
    H5P(["text-secondary"], "Text secondary color."),
    H5P(["text-success"], "Text success color."),
    H5P(["text-danger"], "Text danger color."),
    H5P(["text-warning"], "Text warning color."),
    H5P(["text-info"], "Text info color."),
    H5P(["text-light bg-dark"], "Text light color with background dark color."),
    H5P(["text-dark"], "Text dark color."),
    H5P(["text-body"], "Text body color."),
    H5P(["text-muted"], "Text muted color."),
    H5P(["text-white bg-dark"], "Text white color with background dark color."),
    H5P(["text-white-50 bg-dark"], "Text white-50 color with background dark color."),
    H5P(["text-black-50"], "Text black-50 color.")
  ), ``, ``);

auto backgroundExample = demoBs5Example("background", "Background color",
  H5Div(
    H5P(["bg-primary text-white p-3"], "Background primary color with text white color."),
    H5P(["bg-secondary text-white p-3"], "Background secondary color with text white color."),
    H5P(["bg-success text-white p-3"], "Background success color with text white color."),
    H5P(["bg-danger text-white p-3"], "Background danger color with text white color."),
    H5P(["bg-warning text-white p-3"], "Background warning color with text white color."),
    H5P(["bg-info text-white p-3"], "Background info color with text white color."),
    H5P(["bg-light text-dark p-3"], "Background light color with text dark color."),
    H5P(["bg-dark text-white p-3"], "Background dark color with text white color."),
    H5P(["bg-white text-dark p-3"], "Background white color with text dark color."),
    H5P(["bg-transparent text-dark p-3"], "Background transparent with text dark color.")
  ), ``, ``);

auto gradientSizeExample = demoBs5Example("gradient", "Background gradient",
  H5Div(
    H5P(["bg-primary bg-gradient text-white p-3"], "Background primary color with text white color."),
    H5P(["bg-secondary bg-gradient text-white p-3"], "Background secondary color with text white color."),
    H5P(["bg-success bg-gradient text-white p-3"], "Background success color with text white color."),
    H5P(["bg-danger bg-gradient text-white p-3"], "Background danger color with text white color."),
    H5P(["bg-warning bg-gradient text-white p-3"], "Background warning color with text white color."),
    H5P(["bg-info bg-gradient text-white p-3"], "Background info color with text white color."),
    H5P(["bg-light bg-gradient text-dark p-3"], "Background light color with text dark color."),
    H5P(["bg-dark bg-gradient text-white p-3"], "Background dark color with text white color.")
  ), ``, ``);

      return 
H5Main(["style":"margin-top:70px;"], 
  H5Div(["container-fluid", "mt-3", "bg-light"],
    bs5Breadcrumbs(["/", "/demos", "/demos/uim-bootstrap", "/demos/uim-bootstrap/5/basic/", "/demos/uim-bootstrap/5/basic/utilities"], 
    ["UI Manufaktur", "Demos", "uim-bootstrap", "Bootstrap 5", "Basic", "Utilities"], "colors")),
  BS5Container(["mt-3"]).row(
    H5Div(["col-12", "col-lg-2"], 
      listLevels("basic"),
      listAreas("basic", "utilities"),
      listSections("basic", "utilities", "colors")),
    H5Div(["col-12", "col-lg-8"], 
      dateInfo(created, changed),
      H5H2(["display-4"], "Colors"),
      H5Hr,

      colorExample,
      backgroundExample,
      gradientSizeExample

    ),
    H5Div(["col-12", "col-lg-2"]))).toString;
    }
  });
}   
