module source.uim.bootstrap.bs5.demos.layouts.grid;

import uim.bootstrap;

static this() {
	demoBS5.pages("layouts/grid", new class DH5AppPage {
		this() { 
			super(); 
			this
			.created(DateTime(2020, 12, 20, 10, 10, 0))
			.changed(timeLastModified(__FILE_FULL_PATH__))
			.parameters([
					"pageTitle": "Container - Bootstrap 5 Demo",
          ]);
		} 
			
    override string content() { 
      return `
<main>
  <div class="container-fluid mt-3 bg-light m-1">
    <nav aria-label="Breadcrumb" >
      <ol class="breadcrumb">
        <li class="breadcrumb-item"><a href="/">UI Manufaktur</a></li>
        <li class="breadcrumb-item"><a href="/demos">Demos</a></li>
        <li class="breadcrumb-item"><a href="/demos/uim-bootstrap">uim-bootstrap</a></li>
        <li class="breadcrumb-item"><a href="/demos/uim-bootstrap/5">Bootstrap 5</a></li>
        <li class="breadcrumb-item"><a href="/demos/uim-bootstrap/5/contents">Contents</a></li>
        <li class="breadcrumb-item active" aria-current="page">Container</li>
      </ol>
    </nav>
  </div>
  <div class="container mt-3">
    <div class="row">
      <div class="col-12 col-lg-2">
      </div>
      <div class="col-12 col-lg-8">
        <h2 class="component display-4">Container</h2>
        <hr>

         <div class="mb-5">
              <div class="container">
                <h3 class="text-muted">Equal width</h3>
                <p>Grid with auto-layout and equal width</p>
              </div>
              <div>
                <div class="container">
                  <div class="row">
                    <div class="col">.col</div>
                    <div class="col">.col</div>
                  </div>
                  <div class="row">
                    <div class="col">.col</div>
                    <div class="col">.col</div>
                    <div class="col">.col</div>
                  </div>
                </div>
              </div>
            </div>

            <div class="mb-5">
              <div class="container">
                <h3 class="text-muted">One column width</h3>
                <p>Grid with auto-layout around one column with set width</p>
              </div>
              <div>
                <div class="container">
                  <div class="row">
                    <div class="col">.col</div>
                    <div class="col-7">.col-7</div>
                    <div class="col">.col</div>
                  </div>
                  <div class="row">
                    <div class="col-3">.col-3</div>
                    <div class="col">.col</div>
                    <div class="col">.col</div>
                  </div>
                </div>
              </div>
            </div>

            <div class="mb-5">
              <div class="container">
                <h3 class="text-muted">Variable width content</h3>
                <p>Grid with auto-layout around columns with set width and natural (auto) width</p>
              </div>
              <div>
                <div class="container">
                  <div class="row">
                    <div class="col">.col</div>
                    <div class="col-auto">.col-auto</div>
                    <div class="col">.col</div>
                  </div>
                  <div class="row">
                    <div class="col">.col</div>
                    <div class="col-auto">.col-auto</div>
                    <div class="col-2">.col-2</div>
                  </div>
                </div>
              </div>
            </div>

            <div class="mb-5">
              <h3 class="text-muted container">Responsive classes</h3>
              <div>
                <div class="container">
                  <h4 class="h5 text-muted mt-3">All breakpoints</h4>
                  <p>Same grid across all devices: use .col and .col-*</p>
                </div>
                <div class="container">
                  <div class="row">
                    <div class="col">.col</div>
                    <div class="col">.col</div>
                    <div class="col">.col</div>
                    <div class="col">.col</div>
                  </div>
                  <div class="row">
                    <div class="col-6">.col-6</div>
                    <div class="col-3">.col-3</div>
                    <div class="col-3">.col-3</div>
                  </div>
                </div>
                <div class="container">
                  <h4 class="h5 text-muted mt-3">Responsive</h4>
                  <p>Advanced grid changing layout across different device sizes: use device prefixes</p>
                </div>
                <div class="container">
                  <div class="row">
                    <div class="col-12 col-md-6 col-lg-3">.col-12 .col-md-6 .col-lg-3</div>
                    <div class="col-12 col-md-6 col-lg-3">.col-12 .col-md-6 .col-lg-3</div>
                    <div class="col-6 col-lg-3">.col-6 .col-lg-3</div>
                    <div class="col-6 col-lg-3">.col-6 .col-lg-3</div>
                  </div>
                  <div class="row">
                    <div class="col-6 col-sm-4">.col-6 .col-sm-4</div>
                    <div class="col-6 col-sm-4">.col-6 .col-sm-4</div>
                    <div class="col-6 col-sm-4">.col-6 .col-sm-4</div>
                  </div>
                </div>
              </div>
            </div>

            <div class="mb-5">
              <div class="container">
                <h3 class="text-muted">Row columns</h3>
              </div>
              <div>
                <h4 class="h5 text-muted mt-3 container">Auto</h4>
                <div class="container">
                  <div class="row row-cols-auto">
                    <div class="col">Column</div>
                    <div class="col">Column</div>
                    <div class="col">Column</div>
                    <div class="col">Column</div>
                  </div>
                </div>
                <h4 class="h5 text-muted mt-3 container">2</h4>
                <div class="container">
                  <div class="row row-cols-2">
                    <div class="col">Column</div>
                    <div class="col">Column</div>
                    <div class="col">Column</div>
                    <div class="col">Column</div>
                  </div>
                </div>
                <h4 class="h5 text-muted mt-3 container">3</h4>
                <div class="container">
                  <div class="row row-cols-3">
                    <div class="col">Column</div>
                    <div class="col">Column</div>
                    <div class="col">Column</div>
                    <div class="col">Column</div>
                  </div>
                </div>
                <h4 class="h5 text-muted mt-3 container">4</h4>
                <div class="container">
                  <div class="row row-cols-4">
                    <div class="col">Column</div>
                    <div class="col">Column</div>
                    <div class="col">Column</div>
                    <div class="col">Column</div>
                  </div>
                </div>
                <h4 class="h5 text-muted mt-3 container">Responsive</h4>
                <p>Advanced grid changing layout across different device sizes: use device prefixes</p>
                <div class="container">
                  <div class="row row-cols-1 row-cols-md-2 row-cols-lg-3 row-cols-xxl-4">
                    <div class="col">Column</div>
                    <div class="col">Column</div>
                    <div class="col">Column</div>
                    <div class="col">Column</div>
                  </div>
                </div>
              </div>
            </div>

            <div class="mb-5">
              <h3 class="text-muted container">Nesting</h3>
              <div>
                <div class="container">
                  <div class="row">
                    <div class="col-md-8">
                      <div class="row">
                        <div class="col-md-12 col-lg-6">.col-md-12 .col-lg-6</div>
                        <div class="col-md-6 col-lg-3">.col-md-12 .col-lg-3</div>
                        <div class="col-md-6 col-lg-3">.col-md-12 .col-lg-3</div>
                      </div>
                    </div>
                    <div class="col-md-4">.col-md-4</div>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </main>
      `;
    }
  });
}