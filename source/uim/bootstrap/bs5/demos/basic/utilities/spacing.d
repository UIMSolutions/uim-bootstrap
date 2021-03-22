module source.uim.bootstrap.bs5.demos.utilities.spacing;

import uim.bootstrap;

static this() {
	demoBS5.pages("basic/utilities/spacing", new class DH5AppPage {
		this() { 
			super(); 
			this
			.created(DateTime(2020, 12, 20, 10, 10, 0))
			.changed(timeLastModified(__FILE_FULL_PATH__))
			.parameters([
					"pageTitle": "Spacing - Bootstrap 5 Demo",
          ]);
		} 
			
    override string content(string[string] someParameters = null) {  
      return 
H5Main(["style":"margin-top:70px;"], 
  H5Div(["container-fluid", "mt-3", "bg-light"],
    bs5Breadcrumbs(["/", "/demos", "/demos/uim-bootstrap", "/demos/uim-bootstrap/5/", "/demos/uim-bootstrap/5/basic/", "/demos/uim-bootstrap/5/basic/utilities"], 
    ["UI Manufaktur", "Demos", "uim-bootstrap", "Bootstrap 5", "Basic", "Utilities"], "Sizing")),
  BS5Container(["mt-3"]).row(
    H5Div(["col-12", "col-lg-2"], 
      listLevels("basic"),
      listAreas("basic", "utilities"),
      listSections("basic", "utilities", "spacing")),
    H5Div(["col-12", "col-lg-8"], 
      dateInfo(this),
      H5H2(["display-4"], "Sizing"),
      H5Hr,
    ),
    H5Div(["col-12", "col-lg-2"]))).toString;
    }
  });
}   
/* H5Div(["container mt-3"]
    H5Div(["row"]
      H5Div(["col-12 col-lg-2"]
      )
      H5Div(["col-12 col-lg-8"]
        <h2 ["component display-4"]Spacing</h2>
        <hr>

        H5Div(["mb-5"]
              <h3 ["text-muted"]Notation", 
              H5Div(
                <pre>{property}{sides}-{size} for all breakpoints
{property}{sides}-{breakpoint}-{size} for specific breakpoints and up

Properties:
m - margin
p - padding

Sides:
t - top
e - right (end)
b - bottom
s - left (start)
x - left and right
y - top and bottom
[blank] - all four sides

Breakpoints:
sm - small
md - medium
lg - large
xl - extra large
xxl - extra extra large

Sizes:
0 - 0
1 - 0.25rem
2 - 0.5rem
3 - 1rem
4 - 1.5rem
5 - 3rem
auto - auto (only for margins)
n1 - -0.25rem (only for margins and disabled by default)
n2 - -0.5rem (only for margins and disabled by default)
n3 - -1rem (only for margins and disabled by default)
n4 - -1.5rem (only for margins and disabled by default)
n5 - -3rem (only for margins and disabled by default)</pre>
              )
            )

            H5Div(["mb-5" data-css='div:not(.d-grid) {&#10;&#9;border: 5px solid #dee2e6;&#10;&#9;background-image:linear-gradient(to bottom, #f5f5f5 0%, #f5f5f5 100%), linear-gradient(to bottom, #bbbcbc 0%, #bbbcbc 100%);&#10;&#9;background-clip: content-box, padding-box;&#10;}'>
              <h3 ["text-muted"]Margin", 
              H5Div(
                H5H5(["text-muted", "mt-3"], "Top")
                H5Div(["mt-1"]mt-1)
                H5Div(["mt-2"]mt-2)
                H5Div(["mt-3"]mt-3)
                H5Div(["mt-4"]mt-4)
                H5Div(["mt-5"]mt-5)
                H5H5(["text-muted", "mt-3"], "Right")
                H5Div(["me-1"]me-1)
                H5Div(["me-2"]me-2)
                H5Div(["me-3"]me-3)
                H5Div(["me-4"]me-4)
                H5Div(["me-5"]me-5)
                H5H5(["text-muted", "mt-3"], "Bottom")
                H5Div(["mb-1"]mb-1)
                H5Div(["mb-2"]mb-2)
                H5Div(["mb-3"]mb-3)
                H5Div(["mb-4"]mb-4)
                H5Div(["mb-5"]mb-5)
                H5H5(["text-muted", "mt-3"], "Left")
                H5Div(["ms-1"]ms-1)
                H5Div(["ms-2"]ms-2)
                H5Div(["ms-3"]ms-3)
                H5Div(["ms-4"]ms-4)
                H5Div(["ms-5"]ms-5)
                H5H5(["text-muted", "mt-3"], "Horizontal")
                H5Div(["mx-1"]mx-1)
                H5Div(["mx-2"]mx-2)
                H5Div(["mx-3"]mx-3)
                H5Div(["mx-4"]mx-4)
                H5Div(["mx-5"]mx-5)
                H5H5(["text-muted", "mt-3"], "Vertical")
                H5Div(["my-1"]my-1)
                H5Div(["my-2"]my-2)
                H5Div(["my-3"]my-3)
                H5Div(["my-4"]my-4)
                H5Div(["my-5"]my-5)
                H5H5(["text-muted", "mt-3"], "All sides")
                H5Div(["m-1"]m-1)
                H5Div(["m-2"]m-2)
                H5Div(["m-3"]m-3)
                H5Div(["m-4"]m-4)
                H5Div(["m-5"]m-5)
              )
            )

            H5Div(["mb-5" data-css='div:not(.d-grid) {&#10;&#9;border: 5px solid #dee2e6;&#10;&#9;background-image:linear-gradient(to bottom, #f5f5f5 0%, #f5f5f5 100%), linear-gradient(to bottom, #bbbcbc 0%, #bbbcbc 100%);&#10;&#9;background-clip: content-box, padding-box;&#10;}'>
              <h3 ["text-muted"]Auto margin examples", 
              H5Div(
                H5H5(["text-muted", "mt-3"], "Auto margin left")
                H5Div(["w-50 ms-auto"]ms-auto)
                H5H5(["text-muted", "mt-3"], "Horizontal centering")
                H5Div(["w-50 mx-auto"]mx-auto)
              )
            )

            H5Div(["mb-5" data-css='div:not(.d-grid) {&#10;&#9;border: 5px solid #dee2e6;&#10;&#9;background-image:linear-gradient(to bottom, #f5f5f5 0%, #f5f5f5 100%), linear-gradient(to bottom, #bbbcbc 0%, #bbbcbc 100%);&#10;&#9;background-clip: content-box, padding-box;&#10;}'>
              <h3 ["text-muted"]Padding", 
              H5Div(
                H5H5(["text-muted", "mt-3"], "Top")
                H5Div(["pt-1"]pt-1)
                H5Div(["pt-2"]pt-2)
                H5Div(["pt-3"]pt-3)
                H5Div(["pt-4"]pt-4)
                H5Div(["pt-5"]pt-5)
                H5H5(["text-muted", "mt-3"], "Right")
                H5Div(["pe-1"]pe-1)
                H5Div(["pe-2"]pe-2)
                H5Div(["pe-3"]pe-3)
                H5Div(["pe-4"]pe-4)
                H5Div(["pe-5"]pe-5)
                H5H5(["text-muted", "mt-3"], "Bottom")
                H5Div(["pb-1"]pb-1)
                H5Div(["pb-2"]pb-2)
                H5Div(["pb-3"]pb-3)
                H5Div(["pb-4"]pb-4)
                H5Div(["pb-5"]pb-5)
                H5H5(["text-muted", "mt-3"], "Left")
                H5Div(["ps-1"]ps-1)
                H5Div(["ps-2"]ps-2)
                H5Div(["ps-3"]ps-3)
                H5Div(["ps-4"]ps-4)
                H5Div(["ps-5"]ps-5)
                H5H5(["text-muted", "mt-3"], "Horizontal")
                H5Div(["px-1"]px-1)
                H5Div(["px-2"]px-2)
                H5Div(["px-3"]px-3)
                H5Div(["px-4"]px-4)
                H5Div(["px-5"]px-5)
                H5H5(["text-muted", "mt-3"], "Vertical")
                H5Div(["py-1"]py-1)
                H5Div(["py-2"]py-2)
                H5Div(["py-3"]py-3)
                H5Div(["py-4"]py-4)
                H5Div(["py-5"]py-5)
                H5H5(["text-muted", "mt-3"], "All sides")
                H5Div(["p-1"]p-1)
                H5Div(["p-2"]p-2)
                H5Div(["p-3"]p-3)
                H5Div(["p-4"]p-4)
                H5Div(["p-5"]p-5)
              )
            )

            H5Div(["mb-5" data-css='div:not(.d-grid) {&#10;&#9;border: 5px solid #dee2e6;&#10;&#9;background-image:linear-gradient(to bottom, #f5f5f5 0%, #f5f5f5 100%), linear-gradient(to bottom, #bbbcbc 0%, #bbbcbc 100%);&#10;&#9;background-clip: content-box, padding-box;&#10;}'>
              <h3 ["text-muted"]Responsive examples", 
              H5Div(
                H5H5(["text-muted", "mt-3"], "Margin")
                H5Div(["ms-0"]ms-0)
                H5Div(["ms-sm-1"]ms-sm-1)
                H5Div(["ms-md-2"]ms-md-2)
                H5Div(["ms-lg-3"]ms-lg-3)
                H5Div(["ms-xl-4"]ms-xl-4)
                H5Div(["ms-xxl-5"]ms-xxl-5)
                H5H5(["text-muted", "mt-3"], "Padding")
                H5Div(["ps-0"]ps-0)
                H5Div(["ps-sm-1"]ps-sm-1)
                H5Div(["ps-md-2"]ps-md-3)
                H5Div(["ps-lg-3"]ps-lg-3)
                H5Div(["ps-xl-4"]ps-xl-4)
                H5Div(["ps-xxl-5"]ps-xxl-5)
              )
            )

            H5Div(["mb-5" data-css='div:not(.d-grid) {&#10;&#9;border: 5px solid #dee2e6;&#10;&#9;background-image:linear-gradient(to bottom, #f5f5f5 0%, #f5f5f5 100%), linear-gradient(to bottom, #bbbcbc 0%, #bbbcbc 100%);&#10;&#9;background-clip: content-box, padding-box;&#10;}'>
              <h3 ["text-muted"]Gap", 
              H5Div(
                H5H5(["text-muted", "mt-3"], "Gap size 1")
                H5Div(["d-grid gap-1"]
                  H5Div(Grid item 1)
                  H5Div(Grid item 2)
                  H5Div(Grid item 3)
                )
                H5H5(["text-muted", "mt-3"], "Gap size 2")
                H5Div(["d-grid gap-2"]
                  H5Div(Grid item 1)
                  H5Div(Grid item 2)
                  H5Div(Grid item 3)
                )
                H5H5(["text-muted", "mt-3"], "Gap size 3")
                H5Div(["d-grid gap-3"]
                  H5Div(Grid item 1)
                  H5Div(Grid item 2)
                  H5Div(Grid item 3)
                )
                H5H5(["text-muted", "mt-3"], "Gap size 4")
                H5Div(["d-grid gap-4"]
                  H5Div(Grid item 1)
                  H5Div(Grid item 2)
                  H5Div(Grid item 3)
                )
                H5H5(["text-muted", "mt-3"], "Gap size 5")
                H5Div(["d-grid gap-5"]
                  H5Div(Grid item 1)
                  H5Div(Grid item 2)
                  H5Div(Grid item 3)
                )
              )
            )

          )
        )
      )
    </main>
 */