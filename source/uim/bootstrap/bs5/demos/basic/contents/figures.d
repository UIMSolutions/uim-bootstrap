module source.uim.bootstrap.bs5.demos.contents.figures;

import uim.bootstrap;

static this() {
	demoBS5.pages("basic/contents/figures", new class DH5AppPage {
		this() { 
			super(); 
			this
			.created(DateTime(2020, 12, 20, 10, 10, 0))
			.changed(timeLastModified(__FILE_FULL_PATH__))
			.parameters([
					"pageTitle": "Figures - Bootstrap 5 Demo",
          ]);
		} 
			
    override string content() { 

auto defaultExample = demoBs5Example("default", "Default", 
  H5Div(
    H5Figure(["figure"],
      H5Img(["figure-img", "img-fluid"], ["src":"/img/600x400.png", "alt":"Figure image"]),
      H5Figcaption(["figure-caption"], "Caption for the figure.")
    )
  ), ``, ``);

auto alignmentExample = demoBs5Example("alignment", "Alignment", 
  H5Div(
    H5H4(["h5", "text-muted", "mt-3"], "Center"),
    H5Figure(["figure"],
      H5Img(["figure-img", "img-fluid"], ["src":"/img/600x400.png", "alt":"Figure image"]),
      H5Figcaption(["figure-caption text-center"], "Caption for the figure.")
    ),
    H5H4(["h5", "text-muted", "mt-3"], "Right"),
    H5Figure(["figure"],
      H5Img(["figure-img", "img-fluid"], ["src":"/img/600x400.png" , "alt":"Figure image"]),
      H5Figcaption(["figure-caption", "text-end"], "Caption for the figure.")
    )
  ), ``, ``);

      return 
H5Main(["style":"margin-top:70px;"], 
  H5Div(["container-fluid", "mt-3", "bg-light"],
    bs5Breadcrumbs(["/", "/demos", "/demos/uim-bootstrap", "/demos/uim-bootstrap/5/basic/", "/demos/uim-bootstrap/5/basic/basic", "/demos/uim-bootstrap/5/basic/basic/contents"], 
    ["UI Manufaktur", "Demos", "uim-bootstrap", "Bootstrap 5", "Basic", "Basic", "Contents"], "Figures")),

  BS5Container(["mt-3"]).row(
    H5Div(["col-12", "col-lg-2"], 
      listLevels("basic"),
      listAreas("basic", "contents"),
      listSections("basic", "contents", "figures")),
    H5Div(["col-12", "col-lg-8"], 
      dateInfo(created, changed),
      H5H2(["display-4"], "Figures"),
      H5Hr,

      defaultExample, 
      alignmentExample

    ),
    H5Div(["col-12", "col-lg-2"]))).toString;
    }
  });
}
