module source.uim.bootstrap.bs5.demos.contents.images;

import uim.bootstrap;

static this() {
	demoBS5.pages("contents/images", new class DH5AppPage {
		this() { 
			super(); 
			this
			.created(DateTime(2020, 12, 20, 10, 10, 0))
			.changed(timeLastModified(__FILE_FULL_PATH__))
			.parameters([
					"pageTitle": "Images - Bootstrap 5 Demo",
          ]);
		} 
			
    override string content() { 
      return 
H5Main(
  H5Div(["container-fluid", "mt-3", "bg-light"],
    bs5Breadcrumbs(["/", "/demos", "/demos/uim-bootstrap", "/demos/uim-bootstrap/5", "/demos/uim-bootstrap/5/contents"], 
    ["UI Manufaktur", "Demos", "uim-bootstrap", "Bootstrap 5", "Contents"], "Images")),

  BS5Container(["mt-3"]).row(
    H5Div(["col-12", "col-lg-2"]),
    H5Div(["col-12", "col-lg-8"], 
      H5H2(["display-4"], "Images"),
      H5Hr,

    ),
    H5Div(["col-12", "col-lg-2"]))).toString;
    }
  });
}
 
/*
        <li ["breadcrumb-item active" aria-current="page"]Images</li>
      </ol>
    </nav>
  )
  H5Div(["container mt-3"]
    H5Div(["row"]
      H5Div(["col-12 col-lg-2"]
      )
      H5Div(["col-12 col-lg-8"]
        <h2 ["component display-4"]Images</h2>
        <hr>

         H5Div(["mb-5"]
          <h3 ["text-muted"]Default</h3>
          H5Div(
            H5Img(["src":"/img/300x200.png" "alt":"Normal image"]
          )
        )

        H5Div(["mb-5"]
          <h3 ["text-muted"]Responsive</h3>
          H5Div(
            H5Img(["src":"/img/1200x600.png" "alt":"Responsive image" ["img-fluid"]
          )
        )

        H5Div(["mb-5"]
          <h3 ["text-muted"]Rounded</h3>
          H5Div(
            H5Img(["src":"/img/300x200.png" "alt":"Image with rounded corners" ["rounded"]
          )
        )

        H5Div(["mb-5"]
          <h3 ["text-muted"]Thumbnail</h3>
          H5Div(
            H5Img(["src":"/img/100x100.png" "alt":"Image thumbnail" ["img-thumbnail"]
          )
        )

        H5Div(["mb-5"]
          <h3 ["text-muted"]Alignment</h3>
          H5Div(
            H5H4(["h5", "text-muted", "mt-3"], "Float")
            H5Div(["clearfix"]
              H5Img(["src":"/img/100x100.png" "alt":"Image floated left" ["float-start"]
              H5Img(["src":"/img/100x100.png" "alt":"Image floated right" ["float-end"]
            )
            H5H4(["h5", "text-muted", "mt-3"], "Spacing utilities")
            H5Img(["src":"/img/100x100.png" "alt":"Left-aligned image" ["d-block"]
            H5Img(["src":"/img/100x100.png" "alt":"Centered image" ["d-block mx-auto"]
            H5Img(["src":"/img/100x100.png" "alt":"Right-aligned image" ["d-block ms-auto"]
            H5H4(["h5", "text-muted", "mt-3"], "Text alignment")
            H5Div(["text-start"]
              H5Img(["src":"/img/100x100.png" "alt":"Left-aligned image"]
            )
            H5Div(["text-center"]
              H5Img(["src":"/img/100x100.png" "alt":"Centered image"]
            )
            H5Div(["text-end"]
              H5Img(["src":"/img/100x100.png" "alt":"Right-aligned image"]
            )
          )
        )

        H5Div(["mb-5"]
          <h3 ["text-muted"]Picture element</h3>
          <p>If using the <code>&lt;picture&gt;</code> element put <code>.img-*</code> classes on the <code>&lt;img&gt;</code> tag and not the <code>&lt;picture&gt;</code> tag.
          H5Div(
            <picture>
              <source srcset="/img/100x100.png"]
              H5Img(["src":"/img/100x100.png" "alt":"Image in picture tag" ["img-thumbnail"]
            </picture>
          )
        )

      )
    )
*/