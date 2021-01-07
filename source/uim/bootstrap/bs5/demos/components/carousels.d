module uim.bootstrap.bs5.demos.components.carousels;

import uim.bootstrap;

static this() {
	demoBS5.pages("components/breadcrumbs", new class DH5AppPage {
		this() { 
			super(); 
			this
			.created(DateTime(2020, 12, 20, 10, 10, 0))
			.changed(timeLastModified(__FILE_FULL_PATH__))
			.parameters([
					"pageTitle": "Breadcrumbs - Bootstrap 5 Demo",
          ]);
		} 
			
    override string content() { 
      return `
<main>
      <div class="container-fluid mt-3 bg-light">
        <nav aria-label="Breadcrumb" >
          <ol class="breadcrumb">
            <li class="breadcrumb-item"><a href="/">UI Manufaktur</a></li>
            <li class="breadcrumb-item"><a href="/demos">Demos</a></li>
            <li class="breadcrumb-item"><a href="/demos/uim-bootstrap">uim-bootstrap</a></li>
            <li class="breadcrumb-item"><a href="/demos/uim-bootstrap/5">Bootstrap 5</a></li>
            <li class="breadcrumb-item"><a href="/demos/uim-bootstrap/5/components">Components</a></li>
            <li class="breadcrumb-item active" aria-current="page">Breadcrumbs</li>
          </ol>
        </nav>
      </div>
      <div class="container mt-3">
        <div class="row">
          <div class="col-12 col-lg-2">
          </div>
          <div class="col-12 col-lg-8">
            <h2 class="component display-4">Breadcrumbs</h2>
            <hr>

            <div class="code-example mb-5">
              <h3 class="component-variation text-muted">Slides Only</h3>
              <div class="code-live">
                <div id="carouselSlidesOnly" class="carousel slide" data-bs-ride="carousel">
                  <div class="carousel-inner">
                    <div class="carousel-item active">
                      <img src="../img/1200x600-success.png" alt="First slide" class="d-block w-100">
                    </div>
                    <div class="carousel-item">
                      <img src="../img/1200x600-danger.png" alt="Second slide" class="d-block w-100">
                    </div>
                    <div class="carousel-item">
                      <img src="../img/1200x600-warning.png" alt="Third slide" class="d-block w-100">
                    </div>
                    <div class="carousel-item">
                      <img src="../img/1200x600-info.png" alt="Fourth slide" class="d-block w-100">
                    </div>
                  </div>
                </div>
              </div>
            </div>

            <div class="code-example mb-5">
              <h3 class="component-variation text-muted">Controls</h3>
              <div class="code-live">
                <div id="carouselControls" class="carousel slide" data-bs-ride="carousel">
                  <div class="carousel-inner">
                    <div class="carousel-item active">
                      <img src="../img/1200x600-success.png" alt="First slide" class="d-block w-100">
                    </div>
                    <div class="carousel-item">
                      <img src="../img/1200x600-danger.png" alt="Second slide" class="d-block w-100">
                    </div>
                    <div class="carousel-item">
                      <img src="../img/1200x600-warning.png" alt="Third slide" class="d-block w-100">
                    </div>
                    <div class="carousel-item">
                      <img src="../img/1200x600-info.png" alt="Fourth slide" class="d-block w-100">
                    </div>
                  </div>
                  <a href="#carouselControls" class="carousel-control-prev" role="button" data-bs-slide="prev">
                    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                    <span class="visually-hidden">Previous</span>
                  </a>
                  <a href="#carouselControls" class="carousel-control-next" role="button" data-bs-slide="next">
                    <span class="carousel-control-next-icon" aria-hidden="true"></span>
                    <span class="visually-hidden">Next</span>
                  </a>
                </div>
              </div>
            </div>

            <div class="code-example mb-5">
              <h3 class="component-variation text-muted">Indicators</h3>
              <div class="code-live">
                <div id="carouselIndicators" class="carousel slide" data-bs-ride="carousel">
                  <ol class="carousel-indicators">
                    <li data-bs-target="#carouselIndicators" data-bs-slide-to="0" class="active"></li>
                    <li data-bs-target="#carouselIndicators" data-bs-slide-to="1"></li>
                    <li data-bs-target="#carouselIndicators" data-bs-slide-to="2"></li>
                    <li data-bs-target="#carouselIndicators" data-bs-slide-to="3"></li>
                  </ol>
                  <div class="carousel-inner">
                    <div class="carousel-item active">
                      <img src="../img/1200x600-success.png" alt="First slide" class="d-block w-100">
                    </div>
                    <div class="carousel-item">
                      <img src="../img/1200x600-danger.png" alt="Second slide" class="d-block w-100">
                    </div>
                    <div class="carousel-item">
                      <img src="../img/1200x600-warning.png" alt="Third slide" class="d-block w-100">
                    </div>
                    <div class="carousel-item">
                      <img src="../img/1200x600-info.png" alt="Fourth slide" class="d-block w-100">
                    </div>
                  </div>
                </div>
              </div>
            </div>

            <div class="code-example mb-5">
              <h3 class="component-variation text-muted">Captions</h3>
              <div class="code-live">
                <div id="carouselCaptions" class="carousel slide" data-bs-ride="carousel">
                  <div class="carousel-inner">
                    <div class="carousel-item active">
                      <img src="../img/1200x600-success.png" alt="First slide" class="d-block w-100">
                      <div class="carousel-caption">
                        <h3>Caption</h3>
                        <p>This text describes the first slide</p>
                      </div>
                    </div>
                    <div class="carousel-item">
                      <img src="../img/1200x600-danger.png" alt="Second slide" class="d-block w-100">
                      <div class="carousel-caption">
                        <h3>Caption</h3>
                        <p>This text describes the second slide</p>
                      </div>
                    </div>
                    <div class="carousel-item">
                      <img src="../img/1200x600-warning.png" alt="Third slide" class="d-block w-100">
                      <div class="carousel-caption">
                        <h3>Caption</h3>
                        <p>This text describes the third slide</p>
                      </div>
                    </div>
                    <div class="carousel-item">
                      <img src="../img/1200x600-info.png" alt="Fourth slide" class="d-block w-100">
                      <div class="carousel-caption">
                        <h3>Caption</h3>
                        <p>This text describes the fourth slide</p>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
            </div>

            <div class="code-example mb-5">
              <h3 class="component-variation text-muted">Everything</h3>
              <p>Carousel with controls, indicators and captions</p>
              <div class="code-live">
                <div id="carouselAll" class="carousel slide" data-bs-ride="carousel">
                  <ol class="carousel-indicators">
                    <li data-bs-target="#carouselAll" data-bs-slide-to="0" class="active"></li>
                    <li data-bs-target="#carouselAll" data-bs-slide-to="1"></li>
                    <li data-bs-target="#carouselAll" data-bs-slide-to="2"></li>
                    <li data-bs-target="#carouselAll" data-bs-slide-to="3"></li>
                  </ol>
                  <div class="carousel-inner">
                    <div class="carousel-item active">
                      <img src="../img/1200x600-success.png" alt="First slide" class="d-block w-100">
                      <div class="carousel-caption">
                        <h3>Caption</h3>
                        <p>This text describes the first slide</p>
                      </div>
                    </div>
                    <div class="carousel-item">
                      <img src="../img/1200x600-danger.png" alt="Second slide" class="d-block w-100">
                      <div class="carousel-caption">
                        <h3>Caption</h3>
                        <p>This text describes the second slide</p>
                      </div>
                    </div>
                    <div class="carousel-item">
                      <img src="../img/1200x600-warning.png" alt="Third slide" class="d-block w-100">
                      <div class="carousel-caption">
                        <h3>Caption</h3>
                        <p>This text describes the third slide</p>
                      </div>
                    </div>
                    <div class="carousel-item">
                      <img src="../img/1200x600-info.png" alt="Fourth slide" class="d-block w-100">
                      <div class="carousel-caption">
                        <h3>Caption</h3>
                        <p>This text describes the fourth slide</p>
                      </div>
                    </div>
                  </div>
                  <a href="#carouselAll" class="carousel-control-prev" role="button" data-bs-slide="prev">
                    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                    <span class="visually-hidden">Previous</span>
                  </a>
                  <a href="#carouselAll" class="carousel-control-next" role="button" data-bs-slide="next">
                    <span class="carousel-control-next-icon" aria-hidden="true"></span>
                    <span class="visually-hidden">Next</span>
                  </a>
                </div>
              </div>
            </div>

            <div class="code-example mb-5">
              <h3 class="component-variation text-muted">Dark</h3>
              <p>Carousel with dark controls, indicators and captions</p>
              <div class="code-live">
                <div id="carouselDark" class="carousel slide carousel-dark" data-bs-ride="carousel">
                  <ol class="carousel-indicators">
                    <li data-bs-target="#carouselDark" data-bs-slide-to="0" class="active"></li>
                    <li data-bs-target="#carouselDark" data-bs-slide-to="1"></li>
                    <li data-bs-target="#carouselDark" data-bs-slide-to="2"></li>
                    <li data-bs-target="#carouselDark" data-bs-slide-to="3"></li>
                  </ol>
                  <div class="carousel-inner">
                    <div class="carousel-item active">
                      <img src="../img/1200x600-success.png" alt="First slide" class="d-block w-100">
                      <div class="carousel-caption">
                        <h3>Caption</h3>
                        <p>This text describes the first slide</p>
                      </div>
                    </div>
                    <div class="carousel-item">
                      <img src="../img/1200x600-danger.png" alt="Second slide" class="d-block w-100">
                      <div class="carousel-caption">
                        <h3>Caption</h3>
                        <p>This text describes the second slide</p>
                      </div>
                    </div>
                    <div class="carousel-item">
                      <img src="../img/1200x600-warning.png" alt="Third slide" class="d-block w-100">
                      <div class="carousel-caption">
                        <h3>Caption</h3>
                        <p>This text describes the third slide</p>
                      </div>
                    </div>
                    <div class="carousel-item">
                      <img src="../img/1200x600-info.png" alt="Fourth slide" class="d-block w-100">
                      <div class="carousel-caption">
                        <h3>Caption</h3>
                        <p>This text describes the fourth slide</p>
                      </div>
                    </div>
                  </div>
                  <a href="#carouselDark" class="carousel-control-prev" role="button" data-bs-slide="prev">
                    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                    <span class="visually-hidden">Previous</span>
                  </a>
                  <a href="#carouselDark" class="carousel-control-next" role="button" data-bs-slide="next">
                    <span class="carousel-control-next-icon" aria-hidden="true"></span>
                    <span class="visually-hidden">Next</span>
                  </a>
                </div>
              </div>
            </div>

            <div class="code-example mb-5">
              <h3 class="component-variation text-muted">Crossfade</h3>
              <div class="code-live">
                <div id="carouselFade" class="carousel slide carousel-fade" data-bs-ride="carousel">
                  <div class="carousel-inner">
                    <div class="carousel-item active">
                      <img src="../img/1200x600-success.png" alt="First slide" class="d-block w-100">
                    </div>
                    <div class="carousel-item">
                      <img src="../img/1200x600-danger.png" alt="Second slide" class="d-block w-100">
                    </div>
                    <div class="carousel-item">
                      <img src="../img/1200x600-warning.png" alt="Third slide" class="d-block w-100">
                    </div>
                    <div class="carousel-item">
                      <img src="../img/1200x600-info.png" alt="Fourth slide" class="d-block w-100">
                    </div>
                  </div>
                </div>
              </div>
            </div>

            <div class="code-example mb-5">
              <h3 class="component-variation text-muted">Options</h3>
              <p>Carousel with options defined with data attributes</p>
              <div class="code-live">
                <div id="carouselOptions" class="carousel slide" data-bs-ride="carousel" data-bs-pause="false" data-bs-wrap="false" data-bs-interval="2000" data-bs-keyboard="false">
                  <ol class="carousel-indicators">
                    <li data-bs-target="#carouselOptions" data-bs-slide-to="0" class="active"></li>
                    <li data-bs-target="#carouselOptions" data-bs-slide-to="1"></li>
                    <li data-bs-target="#carouselOptions" data-bs-slide-to="2"></li>
                    <li data-bs-target="#carouselOptions" data-bs-slide-to="3"></li>
                  </ol>
                  <div class="carousel-inner">
                    <div class="carousel-item active">
                      <img src="../img/1200x600-success.png" alt="First slide" class="d-block w-100">
                    </div>
                    <div class="carousel-item">
                      <img src="../img/1200x600-danger.png" alt="Second slide" class="d-block w-100">
                    </div>
                    <div class="carousel-item" data-bs-interval="1000">
                      <img src="../img/1200x600-warning.png" alt="Third slide" class="d-block w-100">
                    </div>
                    <div class="carousel-item">
                      <img src="../img/1200x600-info.png" alt="Fourth slide" class="d-block w-100">
                    </div>
                  </div>
                  <a href="#carouselOptions" class="carousel-control-prev" role="button" data-bs-slide="prev">
                    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                    <span class="visually-hidden">Previous</span>
                  </a>
                  <a href="#carouselOptions" class="carousel-control-next" role="button" data-bs-slide="next">
                    <span class="carousel-control-next-icon" aria-hidden="true"></span>
                    <span class="visually-hidden">Next</span>
                  </a>
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