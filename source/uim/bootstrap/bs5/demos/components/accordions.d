module uim.bootstrap.bs5.demos.components.accordions;

import uim.bootstrap;

static this() {
	demoBS5.pages("components/accordions", new class DH5AppPage {
		this() { 
			super(); 
			this
			.created(DateTime(2020, 12, 20, 10, 10, 0))
			.changed(timeLastModified(__FILE_FULL_PATH__))
			.parameters([
					"pageTitle": "Accordions - Bootstrap 5 Demo",
          ]);
		} 
			
    override string content() { 
      return `
<main>
  <div class="container mt-3">
    <div class="row">
      <div class="col-12 col-lg-9">
        <h2 class="component display-4">Accordions</h2>
        <hr>

        <div class="code-example mb-5">
          <h3 class="component-variation text-muted">Default</h3>
          <div class="code-live">
            <div class="accordion" id="accordionDefault">
              <div class="accordion-item">
                <h2 class="accordion-header" id="headingDefaultOne">
                  <button type="button" class="accordion-button" data-bs-toggle="collapse" data-bs-target="#collapseDefaultOne" aria-expanded="true" aria-controls="collapseDefaultOne">
                    Accordion Item #1
                  </button>
                </h2>
                <div id="collapseDefaultOne" class="accordion-collapse collapse show" aria-labelledby="headingDefaultOne" data-bs-parent="#accordionDefault">
                  <div class="accordion-body">
                    Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec mattis posuere consequat. Nulla fermentum sodales augue, vitae ornare eros ornare quis. Donec lectus est, congue eu risus quis, tempus sagittis nunc. Donec blandit accumsan augue eu bibendum. Suspendisse pretium facilisis sapien, ac dignissim leo. Phasellus fermentum nulla eget quam congue sagittis. Donec volutpat vel sapien sit amet lobortis. Aenean non vulputate nunc, eu luctus libero.
                  </div>
                </div>
              </div>
              <div class="accordion-item">
                <h2 class="accordion-header" id="headingDefaultTwo">
                  <button type="button" class="accordion-button collapsed" data-bs-toggle="collapse" data-bs-target="#collapseDefaultTwo" aria-expanded="false" aria-controls="collapseDefaultTwo">
                    Accordion Item #2
                  </button>
                </h2>
                <div id="collapseDefaultTwo" class="accordion-collapse collapse" aria-labelledby="headingDefaultTwo" data-bs-parent="#accordionDefault">
                  <div class="accordion-body">
                    Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec mattis posuere consequat. Nulla fermentum sodales augue, vitae ornare eros ornare quis. Donec lectus est, congue eu risus quis, tempus sagittis nunc. Donec blandit accumsan augue eu bibendum. Suspendisse pretium facilisis sapien, ac dignissim leo. Phasellus fermentum nulla eget quam congue sagittis. Donec volutpat vel sapien sit amet lobortis. Aenean non vulputate nunc, eu luctus libero.
                  </div>
                </div>
              </div>
              <div class="accordion-item">
                <h2 class="accordion-header" id="headingDefaultThree">
                  <button type="button" class="accordion-button collapsed" data-bs-toggle="collapse" data-bs-target="#collapseDefaultThree" aria-expanded="false" aria-controls="collapseDefaultThree">
                    Accordion Item #3
                  </button>
                </h2>
                <div id="collapseDefaultThree" class="accordion-collapse collapse" aria-labelledby="headingDefaultThree" data-bs-parent="#accordionDefault">
                  <div class="accordion-body">
                    Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec mattis posuere consequat. Nulla fermentum sodales augue, vitae ornare eros ornare quis. Donec lectus est, congue eu risus quis, tempus sagittis nunc. Donec blandit accumsan augue eu bibendum. Suspendisse pretium facilisis sapien, ac dignissim leo. Phasellus fermentum nulla eget quam congue sagittis. Donec volutpat vel sapien sit amet lobortis. Aenean non vulputate nunc, eu luctus libero.
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>

        <div class="code-example mb-5">
          <h3 class="component-variation text-muted">Flush</h3>
          <div class="code-live">
            <div class="accordion accordion-flush" id="accordionFlush">
              <div class="accordion-item">
                <h2 class="accordion-header" id="headingFlushOne">
                  <button type="button" class="accordion-button" data-bs-toggle="collapse" data-bs-target="#collapseFlushOne" aria-expanded="true" aria-controls="collapseFlushOne">
                    Accordion Item #1
                  </button>
                </h2>
                <div id="collapseFlushOne" class="accordion-collapse collapse show" aria-labelledby="headingFlushOne" data-bs-parent="#accordionFlush">
                  <div class="accordion-body">
                    Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec mattis posuere consequat. Nulla fermentum sodales augue, vitae ornare eros ornare quis. Donec lectus est, congue eu risus quis, tempus sagittis nunc. Donec blandit accumsan augue eu bibendum. Suspendisse pretium facilisis sapien, ac dignissim leo. Phasellus fermentum nulla eget quam congue sagittis. Donec volutpat vel sapien sit amet lobortis. Aenean non vulputate nunc, eu luctus libero.
                  </div>
                </div>
              </div>
              <div class="accordion-item">
                <h2 class="accordion-header" id="headingFlushTwo">
                  <button type="button" class="accordion-button collapsed" data-bs-toggle="collapse" data-bs-target="#collapseFlushTwo" aria-expanded="false" aria-controls="collapseFlushTwo">
                    Accordion Item #2
                  </button>
                </h2>
                <div id="collapseFlushTwo" class="accordion-collapse collapse" aria-labelledby="headingFlushTwo" data-bs-parent="#accordionFlush">
                  <div class="accordion-body">
                    Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec mattis posuere consequat. Nulla fermentum sodales augue, vitae ornare eros ornare quis. Donec lectus est, congue eu risus quis, tempus sagittis nunc. Donec blandit accumsan augue eu bibendum. Suspendisse pretium facilisis sapien, ac dignissim leo. Phasellus fermentum nulla eget quam congue sagittis. Donec volutpat vel sapien sit amet lobortis. Aenean non vulputate nunc, eu luctus libero.
                  </div>
                </div>
              </div>
              <div class="accordion-item">
                <h2 class="accordion-header" id="headingFlushThree">
                  <button type="button" class="accordion-button collapsed" data-bs-toggle="collapse" data-bs-target="#collapseFlushThree" aria-expanded="false" aria-controls="collapseFlushThree">
                    Accordion Item #3
                  </button>
                </h2>
                <div id="collapseFlushThree" class="accordion-collapse collapse" aria-labelledby="headingFlushThree" data-bs-parent="#accordionFlush">
                  <div class="accordion-body">
                    Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec mattis posuere consequat. Nulla fermentum sodales augue, vitae ornare eros ornare quis. Donec lectus est, congue eu risus quis, tempus sagittis nunc. Donec blandit accumsan augue eu bibendum. Suspendisse pretium facilisis sapien, ac dignissim leo. Phasellus fermentum nulla eget quam congue sagittis. Donec volutpat vel sapien sit amet lobortis. Aenean non vulputate nunc, eu luctus libero.
                  </div>
                </div>
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