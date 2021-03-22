module source.uim.bootstrap.bs5.demos.contents.images;

import uim.bootstrap;

static this() {
	demoBS5.pages("basic/contents/images", new class DH5AppPage {
		this() { 
			super(); 
			this
			.created(DateTime(2020, 12, 20, 10, 10, 0))
			.changed(timeLastModified(__FILE_FULL_PATH__))
			.parameters([
					"pageTitle": "Images - Bootstrap 5 Demo",
          ]);
		} 
			
    override string content(string[string] someParameters = null) {  

auto customExample = demoBs5Example("custom", "Default", 
  H5Div(
    H5H5(["text-muted", "mt-3"], "300x200"),
    H5Img(["src":"/img/demos/robot1_300x200.jpg", "alt":"Small image"]),
    H5H5(["text-muted", "mt-3"], "600x400"),
    H5Img(["src":"/img/demos/robot1_600x400.jpg", "alt":"Bigger image"])
  ), `H5Img(["src":"/img/demos/robot1_300x200.jpg", "alt":"Small image"])
H5Img(["src":"/img/demos/robot1_600x400.jpg", "alt":"Bigger image"])`, ``);

auto responsiveExample = demoBs5Example("responsive", "Responsive", 
  H5Div(
    H5H5(["text-muted", "mt-3"], "300x200"),
    H5Img(["img-fluid"], ["src":"/img/demos/robot2_300x200.jpg", "alt":"Small responsive image"]),
    H5H5(["text-muted", "mt-3"], "1200x800"),
    H5Img(["img-fluid"], ["src":"/img/demos/robot2_1200x800.jpg", "alt":"Large responsive image"])
  ), `H5Img(["img-fluid"], ["src":"/img/demos/robot2_300x200.jpg", "alt":"Small responsive image"]),
  H5Img(["img-fluid"], ["src":"/img/demos/robot2_1200x800.jpg", "alt":"Large responsive image"])`, ``);

auto roundedExample = demoBs5Example("rounded", "Rounded", 
  H5Div(
    H5H5(["text-muted", "mt-3"], "300x200"),
    H5Img(["rounded"], ["src":"/img/demos/robot3_300x200.jpg", "alt":"Small image with rounded corners"]),
    H5H5(["text-muted", "mt-3"], "1200x800"),
    H5Img(["rounded"], ["src":"/img/demos/robot3_1200x800.jpg", "alt":"Big image with rounded corners"])
  ), `H5Img(["rounded"], ["src":"/img/demos/robot3_300x200.jpg", "alt":"Small image with rounded corners"])
  H5Img(["rounded"], ["src":"/img/demos/robot3_1200x800.jpg", "alt":"Big image with rounded corners"])`, ``);

auto thumbnailExample = demoBs5Example("thumbnail", "Thumbnail", 
  H5Div(
    H5Img(["img-thumbnail"], ["src":"/img/100x100.png", "alt":"Image thumbnail"])
  ), `H5Img(["img-thumbnail"], ["src":"/img/100x100.png", "alt":"Image thumbnail"])`, ``);

auto alignmentExample = demoBs5Example("alignment", "Alignment", 
  H5Div(
    H5H5(["text-muted", "mt-3"], "Float"),
    H5Div(["clearfix"],
      H5Img(["float-start"], ["src":"/img/100x100.png", "alt":"Image floated left"]),
      H5Img(["float-end"], ["src":"/img/100x100.png", "alt":"Image floated right"])
    ),
    H5H5(["text-muted", "mt-3"], "Spacing utilities"),
    H5Img(["d-block"], ["src":"/img/100x100.png", "alt":"Left-aligned image"]),
    H5Img(["d-block mx-auto"], ["src":"/img/100x100.png", "alt":"Centered image"]) ,
    H5Img(["d-block ms-auto"], ["src":"/img/100x100.png", "alt":"Right-aligned image"]),
    H5H5(["text-muted", "mt-3"], "Text alignment"),
    H5Div(["text-start"],
      H5Img(["src":"/img/100x100.png", "alt":"Left-aligned image"])
    ),
    H5Div(["text-center"],
      H5Img(["src":"/img/100x100.png", "alt":"Centered image"])
    ),
    H5Div(["text-end"],
      H5Img(["src":"/img/100x100.png", "alt":"Right-aligned image"])
    )
  ), `H5H5(["text-muted", "mt-3"], "Float"),
  H5Div(["clearfix"],
    H5Img(["float-start"], ["src":"/img/100x100.png", "alt":"Image floated left"]),
    H5Img(["float-end"], ["src":"/img/100x100.png", "alt":"Image floated right"])
  ),
  H5H5(["text-muted", "mt-3"], "Spacing utilities"),
  H5Img(["d-block"], ["src":"/img/100x100.png", "alt":"Left-aligned image"]),
  H5Img(["d-block mx-auto"], ["src":"/img/100x100.png", "alt":"Centered image"]) ,
  H5Img(["d-block ms-auto"], ["src":"/img/100x100.png", "alt":"Right-aligned image"]),
  H5H5(["text-muted", "mt-3"], "Text alignment"),
  H5Div(["text-start"],
    H5Img(["src":"/img/100x100.png", "alt":"Left-aligned image"])
  ),
  H5Div(["text-center"],
    H5Img(["src":"/img/100x100.png", "alt":"Centered image"])
  ),
  H5Div(["text-end"],
    H5Img(["src":"/img/100x100.png", "alt":"Right-aligned image"])
  )`, ``);

auto pictureExample = demoBs5Example("picture", "Picture element", 
  H5Div(
    H5H1(["picture"],
      H5H1(["source"], ["srcset":"/img/100x100.png"]),
      H5Img(["img-thumbnail"], ["src":"/img/100x100.png", "alt":"Image in picture tag"])
    ),
    H5H1(["/picture"])
  ), `H5H1(["picture"],
  H5H1(["source"], ["srcset":"/img/100x100.png"]),
  H5Img(["img-thumbnail"], ["src":"/img/100x100.png", "alt":"Image in picture tag"])
),
H5H1(["/picture"])`, ``);

      return 
H5Main(["style":"margin-top:70px;"], 
  H5Div(["container-fluid", "mt-3", "bg-light"],
    bs5Breadcrumbs(["/", "/demos", "/demos/uim-bootstrap", "/demos/uim-bootstrap/5/", "/demos/uim-bootstrap/5/basic/", "/demos/uim-bootstrap/5/basic/contents"], 
    ["UI Manufaktur", "Demos", "uim-bootstrap", "Bootstrap 5", "Basic", "Contents"], "Images")),

  BS5Container(["mt-3"]).row(
    H5Div(["col-12", "col-lg-2"], 
      listLevels("basic"),
      listAreas("basic", "contents"),
      listSections("basic", "contents", "images")),
    H5Div(["col-12", "col-lg-8"], 
      dateInfo(this),
      H5H2(["display-4"], "Images"),
      H5Hr,

      customExample, 
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
 
