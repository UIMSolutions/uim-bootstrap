module source.uim.bootstrap.bs5.demos.utilities.spacing;

import uim.bootstrap;

static this() {
	demoBS5.pages("utilities/spacing", new class DH5AppPage {
		this() { 
			super(); 
			this
			.created(DateTime(2020, 12, 20, 10, 10, 0))
			.changed(timeLastModified(__FILE_FULL_PATH__))
			.parameters([
					"pageTitle": "Spacing - Bootstrap 5 Demo",
          ]);
		} 
			
    override string content() { 
      return 
H5Main(
  H5Div(["container-fluid", "mt-3", "bg-light"],
    bs5Breadcrumbs(["/", "/demos", "/demos/uim-bootstrap", "/demos/uim-bootstrap/5", "/demos/uim-bootstrap/5/utilities"], 
    ["UI Manufaktur", "Demos", "uim-bootstrap", "Bootstrap 5", "Utilities"], "Sizing")),
  BS5Container(["mt-3"]).row(
    H5Div(["col-12", "col-lg-2"]),
    H5Div(["col-12", "col-lg-8"], 
      H5H2(["display-4"], "Sizing"),
      H5Hr,
    ),
    H5Div(["col-12", "col-lg-2"]))).toString;
    }
  });
}   
/* <div class="container mt-3">
    <div class="row">
      <div class="col-12 col-lg-2">
      </div>
      <div class="col-12 col-lg-8">
        <h2 class="component display-4">Spacing</h2>
        <hr>

        <div class="mb-5">
              <h3 class="text-muted">Notation</h3>
              <div>
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
              </div>
            </div>

            <div class="mb-5" data-css='div:not(.d-grid) {&#10;&#9;border: 5px solid #dee2e6;&#10;&#9;background-image:linear-gradient(to bottom, #f5f5f5 0%, #f5f5f5 100%), linear-gradient(to bottom, #bbbcbc 0%, #bbbcbc 100%);&#10;&#9;background-clip: content-box, padding-box;&#10;}'>
              <h3 class="text-muted">Margin</h3>
              <div>
                <h4 class="h5 text-muted mt-3">Top</h4>
                <div class="mt-1">mt-1</div>
                <div class="mt-2">mt-2</div>
                <div class="mt-3">mt-3</div>
                <div class="mt-4">mt-4</div>
                <div class="mt-5">mt-5</div>
                <h4 class="h5 text-muted mt-3">Right</h4>
                <div class="me-1">me-1</div>
                <div class="me-2">me-2</div>
                <div class="me-3">me-3</div>
                <div class="me-4">me-4</div>
                <div class="me-5">me-5</div>
                <h4 class="h5 text-muted mt-3">Bottom</h4>
                <div class="mb-1">mb-1</div>
                <div class="mb-2">mb-2</div>
                <div class="mb-3">mb-3</div>
                <div class="mb-4">mb-4</div>
                <div class="mb-5">mb-5</div>
                <h4 class="h5 text-muted mt-3">Left</h4>
                <div class="ms-1">ms-1</div>
                <div class="ms-2">ms-2</div>
                <div class="ms-3">ms-3</div>
                <div class="ms-4">ms-4</div>
                <div class="ms-5">ms-5</div>
                <h4 class="h5 text-muted mt-3">Horizontal</h4>
                <div class="mx-1">mx-1</div>
                <div class="mx-2">mx-2</div>
                <div class="mx-3">mx-3</div>
                <div class="mx-4">mx-4</div>
                <div class="mx-5">mx-5</div>
                <h4 class="h5 text-muted mt-3">Vertical</h4>
                <div class="my-1">my-1</div>
                <div class="my-2">my-2</div>
                <div class="my-3">my-3</div>
                <div class="my-4">my-4</div>
                <div class="my-5">my-5</div>
                <h4 class="h5 text-muted mt-3">All sides</h4>
                <div class="m-1">m-1</div>
                <div class="m-2">m-2</div>
                <div class="m-3">m-3</div>
                <div class="m-4">m-4</div>
                <div class="m-5">m-5</div>
              </div>
            </div>

            <div class="mb-5" data-css='div:not(.d-grid) {&#10;&#9;border: 5px solid #dee2e6;&#10;&#9;background-image:linear-gradient(to bottom, #f5f5f5 0%, #f5f5f5 100%), linear-gradient(to bottom, #bbbcbc 0%, #bbbcbc 100%);&#10;&#9;background-clip: content-box, padding-box;&#10;}'>
              <h3 class="text-muted">Auto margin examples</h3>
              <div>
                <h4 class="h5 text-muted mt-3">Auto margin left</h4>
                <div class="w-50 ms-auto">ms-auto</div>
                <h4 class="h5 text-muted mt-3">Horizontal centering</h4>
                <div class="w-50 mx-auto">mx-auto</div>
              </div>
            </div>

            <div class="mb-5" data-css='div:not(.d-grid) {&#10;&#9;border: 5px solid #dee2e6;&#10;&#9;background-image:linear-gradient(to bottom, #f5f5f5 0%, #f5f5f5 100%), linear-gradient(to bottom, #bbbcbc 0%, #bbbcbc 100%);&#10;&#9;background-clip: content-box, padding-box;&#10;}'>
              <h3 class="text-muted">Padding</h3>
              <div>
                <h4 class="h5 text-muted mt-3">Top</h4>
                <div class="pt-1">pt-1</div>
                <div class="pt-2">pt-2</div>
                <div class="pt-3">pt-3</div>
                <div class="pt-4">pt-4</div>
                <div class="pt-5">pt-5</div>
                <h4 class="h5 text-muted mt-3">Right</h4>
                <div class="pe-1">pe-1</div>
                <div class="pe-2">pe-2</div>
                <div class="pe-3">pe-3</div>
                <div class="pe-4">pe-4</div>
                <div class="pe-5">pe-5</div>
                <h4 class="h5 text-muted mt-3">Bottom</h4>
                <div class="pb-1">pb-1</div>
                <div class="pb-2">pb-2</div>
                <div class="pb-3">pb-3</div>
                <div class="pb-4">pb-4</div>
                <div class="pb-5">pb-5</div>
                <h4 class="h5 text-muted mt-3">Left</h4>
                <div class="ps-1">ps-1</div>
                <div class="ps-2">ps-2</div>
                <div class="ps-3">ps-3</div>
                <div class="ps-4">ps-4</div>
                <div class="ps-5">ps-5</div>
                <h4 class="h5 text-muted mt-3">Horizontal</h4>
                <div class="px-1">px-1</div>
                <div class="px-2">px-2</div>
                <div class="px-3">px-3</div>
                <div class="px-4">px-4</div>
                <div class="px-5">px-5</div>
                <h4 class="h5 text-muted mt-3">Vertical</h4>
                <div class="py-1">py-1</div>
                <div class="py-2">py-2</div>
                <div class="py-3">py-3</div>
                <div class="py-4">py-4</div>
                <div class="py-5">py-5</div>
                <h4 class="h5 text-muted mt-3">All sides</h4>
                <div class="p-1">p-1</div>
                <div class="p-2">p-2</div>
                <div class="p-3">p-3</div>
                <div class="p-4">p-4</div>
                <div class="p-5">p-5</div>
              </div>
            </div>

            <div class="mb-5" data-css='div:not(.d-grid) {&#10;&#9;border: 5px solid #dee2e6;&#10;&#9;background-image:linear-gradient(to bottom, #f5f5f5 0%, #f5f5f5 100%), linear-gradient(to bottom, #bbbcbc 0%, #bbbcbc 100%);&#10;&#9;background-clip: content-box, padding-box;&#10;}'>
              <h3 class="text-muted">Responsive examples</h3>
              <div>
                <h4 class="h5 text-muted mt-3">Margin</h4>
                <div class="ms-0">ms-0</div>
                <div class="ms-sm-1">ms-sm-1</div>
                <div class="ms-md-2">ms-md-2</div>
                <div class="ms-lg-3">ms-lg-3</div>
                <div class="ms-xl-4">ms-xl-4</div>
                <div class="ms-xxl-5">ms-xxl-5</div>
                <h4 class="h5 text-muted mt-3">Padding</h4>
                <div class="ps-0">ps-0</div>
                <div class="ps-sm-1">ps-sm-1</div>
                <div class="ps-md-2">ps-md-3</div>
                <div class="ps-lg-3">ps-lg-3</div>
                <div class="ps-xl-4">ps-xl-4</div>
                <div class="ps-xxl-5">ps-xxl-5</div>
              </div>
            </div>

            <div class="mb-5" data-css='div:not(.d-grid) {&#10;&#9;border: 5px solid #dee2e6;&#10;&#9;background-image:linear-gradient(to bottom, #f5f5f5 0%, #f5f5f5 100%), linear-gradient(to bottom, #bbbcbc 0%, #bbbcbc 100%);&#10;&#9;background-clip: content-box, padding-box;&#10;}'>
              <h3 class="text-muted">Gap</h3>
              <div>
                <h4 class="h5 text-muted mt-3">Gap size 1</h4>
                <div class="d-grid gap-1">
                  <div>Grid item 1</div>
                  <div>Grid item 2</div>
                  <div>Grid item 3</div>
                </div>
                <h4 class="h5 text-muted mt-3">Gap size 2</h4>
                <div class="d-grid gap-2">
                  <div>Grid item 1</div>
                  <div>Grid item 2</div>
                  <div>Grid item 3</div>
                </div>
                <h4 class="h5 text-muted mt-3">Gap size 3</h4>
                <div class="d-grid gap-3">
                  <div>Grid item 1</div>
                  <div>Grid item 2</div>
                  <div>Grid item 3</div>
                </div>
                <h4 class="h5 text-muted mt-3">Gap size 4</h4>
                <div class="d-grid gap-4">
                  <div>Grid item 1</div>
                  <div>Grid item 2</div>
                  <div>Grid item 3</div>
                </div>
                <h4 class="h5 text-muted mt-3">Gap size 5</h4>
                <div class="d-grid gap-5">
                  <div>Grid item 1</div>
                  <div>Grid item 2</div>
                  <div>Grid item 3</div>
                </div>
              </div>
            </div>

          </div>
        </div>
      </div>
    </main>
 */