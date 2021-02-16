module source.uim.bootstrap.bs5.demos.contents.tables;

import uim.bootstrap;

static this() {
	demoBS5.pages("basic/contents/tables", new class DH5AppPage {
		this() { 
			super(); 
			this
			.created(DateTime(2020, 12, 20, 10, 10, 0))
			.changed(timeLastModified(__FILE_FULL_PATH__))
			.parameters([
					"pageTitle": "Tables - Bootstrap 5 Demo",
          ]);
		} 
			
    override string content() { 

auto defaultExample = demoBs5Example("default", "Default", 
  H5Div(
    H5Img(["src":"/img/300x200.png", "alt":"Normal image"])
  ), ``, ``);

auto responsiveExample = demoBs5Example("responsive", "Responsive", 
  H5Div(
    H5Img(["img-fluid"], ["src":"/img/1200x600.png", "alt":"Responsive image"]) 
  ), ``, ``);

auto roundedExample = demoBs5Example("rounded", "Rounded", 
  H5Div(
    H5Img(["rounded"], ["src":"/img/300x200.png", "alt":"Image with rounded corners"])
  ), ``, ``);

auto thumbnailExample = demoBs5Example("thumbnail", "Thumbnail", 
  H5Div(
    H5Img(["img-thumbnail"], ["src":"/img/100x100.png", "alt":"Image thumbnail"])
  ), ``, ``);

auto alignmentExample = demoBs5Example("alignment", "Alignment", 
  H5Div(
    H5H5(["text-muted", "mt-3"], "Float"),
    H5Div(["clearfix"],
      H5Img(["float-start"], ["src":"/img/100x100.png", "alt":"Image floated left"]), 
      H5Img(["float-end"], ["src":"/img/100x100.png", "alt":"Image floated right"]),
    ),
    H5H5(["text-muted", "mt-3"], "Spacing utilities"),
    H5Img(["d-block"], ["src":"/img/100x100.png", "alt":"Left-aligned image"]), 
    H5Img(["d-block mx-auto"], ["src":"/img/100x100.png", "alt":"Centered image"]), 
    H5Img(["d-block ms-auto"], ["src":"/img/100x100.png", "alt":"Right-aligned image"]), 
    H5H5(["text-muted", "mt-3"], "Text alignment"),
    H5Div(["text-start"],
      H5Img(["src":"/img/100x100.png", "alt":"Left-aligned image"]),
    ),
    H5Div(["text-center"],
      H5Img(["src":"/img/100x100.png", "alt":"Centered image"]),
    ),
    H5Div(["text-end"],
      H5Img(["src":"/img/100x100.png", "alt":"Right-aligned image"]),
    )
  ), ``, ``);

auto pictureExample = demoBs5Example("picture", "Picture element", 
  H5Div(
    H5Picture(
      H5Source(["srcset":"/img/100x100.png"]),
      H5Img(["img-thumbnail"], ["src":"/img/100x100.png", "alt":"Image in picture tag"])
    )
  ), ``, ``);

      return 
H5Main(["style":"margin-top:70px;"], 
  H5Div(["container-fluid", "mt-3", "bg-light"],
    bs5Breadcrumbs(["/", "/demos", "/demos/uim-bootstrap", "/demos/uim-bootstrap/5/", "/demos/uim-bootstrap/5/basic/", "/demos/uim-bootstrap/5/basic/contents"], 
    ["UI Manufaktur", "Demos", "uim-bootstrap", "Bootstrap 5", "Basic", "Contents"], "Tables")),

  BS5Container(["mt-3"]).row(
    H5Div(["col-12", "col-lg-2"], 
      listLevels("basic"),
      listAreas("basic", "contents"),
      listSections("basic", "contents", "tables")),
    H5Div(["col-12", "col-lg-8"], 
      dateInfo(this),
      H5H2(["display-4"], "Tables"),
      H5Hr,

      defaultExample,
      responsiveExample,
      roundedExample,
      thumbnailExample,
      alignmentExample,
      pictureExample

    ),
    H5Div(["col-12", "col-lg-2"]))).toString;
    }
  });
}
 