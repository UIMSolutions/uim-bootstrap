module source.uim.bootstrap.bs5.demos.helpers.ratio;

import uim.bootstrap;

static this() {
	demoBS5.pages("helpers/ratio", new class DH5AppPage {
		this() { 
			super(); 
			this
			.created(DateTime(2020, 12, 20, 10, 10, 0))
			.changed(timeLastModified(__FILE_FULL_PATH__))
			.parameters([
					"pageTitle": "Ratio - Bootstrap 5 Demo",
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
        <li class="breadcrumb-item"><a href="/demos/uim-bootstrap/5/helpers">Helpers</a></li>
        <li class="breadcrumb-item active" aria-current="page">Ratio</li>
      </ol>
    </nav>
  </div>
  <div class="container mt-3">
    <div class="row">
      <div class="col-12 col-lg-2">
      </div>
      <div class="col-12 col-lg-8">
        <h2 class="component display-4">Ratio</h2>
        <hr>

         <div class="mb-5">
              <h3 class="text-muted">1x1</h3>
              <div>
                <div class="ratio ratio-1x1">
                  <iframe src="https://player.vimeo.com/video/40509381"></iframe>
                </div>
              </div>
            </div>
            
            <div class="mb-5">
              <h3 class="text-muted">4x3</h3>
              <div>
                <div class="ratio ratio-4x3">
                  <iframe src="https://player.vimeo.com/video/301032654"></iframe>
                </div>
              </div>
            </div>

            <div class="mb-5">
              <h3 class="text-muted">16x9</h3>
              <div>
                <div class="ratio ratio-16x9">
                  <iframe src="https://player.vimeo.com/video/77923619"></iframe>
                </div>
              </div>
            </div>

            <div class="mb-5">
              <h3 class="text-muted">21x9</h3>
              <div>
                <div class="ratio ratio-21x9">
                  <iframe src="https://player.vimeo.com/video/96184605"></iframe>
                </div>
              </div>
            </div>

            <div class="mb-5">
              <h3 class="text-muted">Standard HTML elements</h3>
              <div>
                <div class="d-flex align-items-start">
                  <div class="ratio ratio-1x1">
                    <p class="d-flex justify-content-center align-items-center border">1x1</p>
                  </div>
                  <div class="ratio ratio-4x3">
                    <p class="d-flex justify-content-center align-items-center border">4x3</p>
                  </div>
                  <div class="ratio ratio-16x9">
                    <p class="d-flex justify-content-center align-items-center border">16x9</p>
                  </div>
                  <div class="ratio ratio-21x9">
                    <p class="d-flex justify-content-center align-items-center border">21x9</p>
                  </div>
                </div>
              </div>
            </div>

            <div class="mb-5">
              <h3 class="text-muted">Custom ratio</h3>
              <div>
                <div class="ratio" style="--aspect-ratio: 50%;">
                  <p class="d-flex justify-content-center align-items-center border">2x1 (50%)</p>
                </div>
                <div class="ratio" style="--aspect-ratio: 25%;">
                  <p class="d-flex justify-content-center align-items-center border">4x1 (25%)</p>
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