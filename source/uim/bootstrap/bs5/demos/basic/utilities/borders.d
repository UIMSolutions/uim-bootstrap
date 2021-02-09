module source.uim.bootstrap.bs5.demos.utilities.borders;

import uim.bootstrap;

static this() {
	demoBS5.pages("basic/utilities/borders", new class DH5AppPage {
		this() { 
			super(); 
			this
			.created(DateTime(2020, 12, 20, 10, 10, 0))
			.changed(timeLastModified(__FILE_FULL_PATH__))
			.parameters([
					"pageTitle": "Borders - Bootstrap 5 Demo",
          ]);
		} 
			
    override string content() { 

auto additiveExample = demoBs5Example("additive", "Additive", 
  H5Div(["mb-5"], ["data-css":`'div[class^="border"] {&#10;&#9;display: inline-block;&#10;&#9;margin: 1em;&#10;&#9;width: 5em;&#10;&#9;height: 5em;&#10;&#9;background-color: #f5f5f5;&#10;}'`],
    H5Div(
      H5Div(["border"]),
      H5Div(["border-top"]),
      H5Div(["border-end"]),
      H5Div(["border-bottom"]),
      H5Div(["border-start"]),
      H5Div(["border-top border-end"]),
      H5Div(["border-bottom border-start"])
    )
  ), ``, ``);

auto subtractiveExample = demoBs5Example("subtractive", "Subtractive", 
  H5Div(["mb-5"], ["data-css":`'div[class^="border"] {&#10;&#9;display: inline-block;&#10;&#9;margin: 1em;&#10;&#9;width: 5em;&#10;&#9;height: 5em;&#10;&#9;background-color: #f5f5f5;&#10;}&#10;div[class$="-0"] {&#10;&#9;border: 1px solid #dee2e6;&#10;}'`],
    H5Div(
      H5Div(["border-0"]),
      H5Div(["border-top-0"]),
      H5Div(["border-end-0"]),
      H5Div(["border-bottom-0"]),
      H5Div(["border-start-0"]),
      H5Div(["border-top-0 border-end-0"]),
      H5Div(["border-bottom-0 border-start-0"])
    )
  ), ``, ``);

auto colorExample = demoBs5Example("color", "Color", 
  H5Div(["mb-5"], ["data-css":`'div[class^="border"] {&#10;&#9;display: inline-block;&#10;&#9;margin: 1em;&#10;&#9;width: 5em;&#10;&#9;height: 5em;&#10;&#9;background-color: #f5f5f5;&#10;}'`],
    H5Div(
      H5Div(["border", "border-primary"]),
      H5Div(["border", "border-secondary"]),
      H5Div(["border", "border-success"]),
      H5Div(["border", "border-danger"]),
      H5Div(["border", "border-warning"]),
      H5Div(["border", "border-info"]),
      H5Div(["border", "border-light"]),
      H5Div(["border", "border-dark"]),
      H5Div(["border", "border-white"])
    )
), ``, ``);

auto widthExample = demoBs5Example("width", "Width", 
  H5Div(["mb-5"], ["data-css":`'div[class^="border"] {&#10;&#9;display: inline-block;&#10;&#9;margin: 1em;&#10;&#9;width: 5em;&#10;&#9;height: 5em;&#10;&#9;background-color: #f5f5f5;&#10;}'`],
    H5Div(
      H5Div(["border", "border-1"]),
      H5Div(["border", "border-2"]),
      H5Div(["border", "border-3"]),
      H5Div(["border", "border-4"]),
      H5Div(["border", "border-5"])
    )
  ), ``, ``);

auto radiusExample = demoBs5Example("radius", "Radius", 
  H5Div(["mb-5"], ["data-css":`'img {&#10;&#9;margin: 1em;&#10;}&#10;div[class^="rounded"] {&#10;&#9;display: inline-block;&#10;&#9;margin: 1em;&#10;&#9;width: 5em;&#10;&#9;height: 5em;&#10;&#9;background-color: #f5f5f5;&#10;}'`],
    H5Div(
      H5Img(["rounded"], ["src":"/img/100x100.png", "alt":""]), 
      H5Img(["rounded-top"], ["src":"/img/100x100.png", "alt":""]),
      H5Img(["rounded-end"], ["src":"/img/100x100.png", "alt":""]), 
      H5Img(["rounded-bottom"], ["src":"/img/100x100.png", "alt":""]), 
      H5Img(["rounded-start"], ["src":"/img/100x100.png", "alt":""]), 
      H5Img(["rounded-circle"], ["src":"/img/100x100.png", "alt":""]), 
      H5Img(["rounded-pill"], ["src":"/img/200x100.png", "alt":""]) 
    )
  ), ``, ``);

auto radiusSizeExample = demoBs5Example("radiussize", "Radius size", 
  H5Div(["mb-5"], ["data-css":`'img {&#10;&#9;margin: 1em;&#10;}&#10;div[class^="rounded"] {&#10;&#9;display: inline-block;&#10;&#9;margin: 1em;&#10;&#9;width: 5em;&#10;&#9;height: 5em;&#10;&#9;background-color: #f5f5f5;&#10;}'`],
    H5Div(
      H5Img(["rounded-0"], ["src":"/img/100x100.png", "alt":"",  "style":"border-radius: 10px;"]),
      H5Img(["rounded-1"], ["src":"/img/100x100.png", "alt":""]),
      H5Img(["rounded-2"], ["src":"/img/100x100.png", "alt":""]),
      H5Img(["rounded-3"], ["src":"/img/100x100.png", "alt":""])
    )
  ), ``, ``);

      return 
H5Main(["style":"margin-top:70px;"], 
  H5Div(["container-fluid", "mt-3", "bg-light"],
    bs5Breadcrumbs(["/", "/demos", "/demos/uim-bootstrap", "/demos/uim-bootstrap/5/basic/", "/demos/uim-bootstrap/5/basic/utilities"], 
    ["UI Manufaktur", "Demos", "uim-bootstrap", "Bootstrap 5", "Basic", "Utilities"], "borders")),
  BS5Container(["mt-3"]).row(
    H5Div(["col-12", "col-lg-2"], 
      listLevels("basic"),
      listAreas("basic", "utilities"),
      listSections("basic", "utilities", "borders")),
    H5Div(["col-12", "col-lg-8"], 
      dateInfo(this),
      H5H2(["display-4"], "Borders"),
      H5Hr,

      additiveExample, 
      subtractiveExample, 
      colorExample, 
      widthExample, 
      radiusExample, 
      radiusSizeExample

    ),
    H5Div(["col-12", "col-lg-2"]))).toString;
    }
  });
}          
