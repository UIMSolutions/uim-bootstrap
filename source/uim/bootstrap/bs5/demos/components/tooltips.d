module uim.bootstrap.bs5.demos.components.tooltips;

import uim.bootstrap;

static this() {
	demoBS5.pages("components/tooltips", new class DH5AppPage {
		this() { 
			super(); 
			this
			.created(DateTime(2020, 12, 20, 10, 10, 0))
			.changed(timeLastModified(__FILE_FULL_PATH__))
			.parameters([
					"pageTitle": "Tooltips - Bootstrap 5 Demo",
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
        <li class="breadcrumb-item active" aria-current="page">Tooltips</li>
      </ol>
    </nav>
  </div>
  <div class="container mt-3">
    <div class="row">
      <div class="col-12 col-lg-2">
      </div>
      <div class="col-12 col-lg-8">
        <h2 class="component display-4">Tooltips</h2>
        <hr>

        <<div class="mb-5" data-css="a, button {&#10;&#9;margin-top: 50px;&#10;}" data-js="var tooltipTriggerElements = document.querySelectorAll(&apos;[data-bs-toggle=&quot;tooltip&quot;]&apos;);&#10;for (var i = 0; i < tooltipTriggerElements.length; i++) {&#10;&#9;new bootstrap.Tooltip(tooltipTriggerElements[i])&#10;}">
          <h3 class="text-muted">Link</h3>
          <div>
            <a href="#" data-bs-toggle="tooltip" title="Tooltip on top">Tooltip for link</a>
          </div>
        </div>

        <div class="mb-5" data-css="a, button {&#10;&#9;margin-top: 50px;&#10;}" data-js="var tooltipTriggerElements = document.querySelectorAll(&apos;[data-bs-toggle=&quot;tooltip&quot;]&apos;);&#10;for (var i = 0; i < tooltipTriggerElements.length; i++) {&#10;&#9;new bootstrap.Tooltip(tooltipTriggerElements[i])&#10;}">
          <h3 class="text-muted">Button</h3>
          <div>
            <button type="button" class="btn btn-secondary" data-bs-toggle="tooltip" title="Tooltip on top">Tooltip for button</button>
          </div>
        </div>

        <div class="mb-5" data-css="a, button {&#10;&#9;margin-top: 50px;&#10;}" data-js="var tooltipTriggerElements = document.querySelectorAll(&apos;[data-bs-toggle=&quot;tooltip&quot;]&apos;);&#10;for (var i = 0; i < tooltipTriggerElements.length; i++) {&#10;&#9;new bootstrap.Tooltip(tooltipTriggerElements[i])&#10;}">
          <h3 class="text-muted">Custom HTML</h3>
          <div>
            <button type="button" class="btn btn-secondary" data-bs-toggle="tooltip" title="<strong>Tooltip</strong> <small>with</small> <span class='badge bg-primary'>custom</span> <em>HTML</em>" data-bs-html="true">Tooltip with custom HTML</button>
          </div>
        </div>

        <div class="mb-5" data-css="a, button {&#10;&#9;margin-top: 50px;&#10;}" data-js="var tooltipTriggerElements = document.querySelectorAll(&apos;[data-bs-toggle=&quot;tooltip&quot;]&apos;);&#10;for (var i = 0; i < tooltipTriggerElements.length; i++) {&#10;&#9;new bootstrap.Tooltip(tooltipTriggerElements[i])&#10;}">
          <h3 class="text-muted">Position</h3>
          <div>
            <button type="button" class="btn btn-secondary" data-bs-toggle="tooltip" title="Tooltip on top" data-bs-placement="top">Tooltip on top</button>
            <button type="button" class="btn btn-secondary" data-bs-toggle="tooltip" title="Tooltip on right" data-bs-placement="right">Tooltip on right</button>
            <button type="button" class="btn btn-secondary" data-bs-toggle="tooltip" title="Tooltip on bottom" data-bs-placement="bottom">Tooltip on bottom</button>
            <button type="button" class="btn btn-secondary" data-bs-toggle="tooltip" title="Tooltip on left" data-bs-placement="left">Tooltip on left</button>
          </div>
        </div>

        <div class="mb-5" data-css="a, button {&#10;&#9;margin-top: 50px;&#10;}" data-js="var tooltipTriggerElements = document.querySelectorAll(&apos;[data-bs-toggle=&quot;tooltip&quot;]&apos;);&#10;for (var i = 0; i < tooltipTriggerElements.length; i++) {&#10;&#9;new bootstrap.Tooltip(tooltipTriggerElements[i])&#10;}">
          <h3 class="text-muted">Animation</h3>
          <div>
            <button type="button" class="btn btn-secondary" data-bs-toggle="tooltip" title="Tooltip without animation" data-bs-animation="false">Tooltip without animation</button>
          </div>
        </div>

        <div class="mb-5" data-css="a, button {&#10;&#9;margin-top: 50px;&#10;}" data-js="var tooltipTriggerElements = document.querySelectorAll(&apos;[data-bs-toggle=&quot;tooltip&quot;]&apos;);&#10;for (var i = 0; i < tooltipTriggerElements.length; i++) {&#10;&#9;new bootstrap.Tooltip(tooltipTriggerElements[i])&#10;}">
          <h3 class="text-muted">Delay</h3>
          <p>Tooltip with delay in ms for showing and hiding</p>
          <div>
            <button type="button" class="btn btn-secondary" data-bs-toggle="tooltip" title="Tooltip with delay" data-bs-delay="500">Tooltip with delay</button>
          </div>
        </div>

        <div class="mb-5" data-css="a, button {&#10;&#9;margin-top: 50px;&#10;}" data-js="var tooltipTriggerElements = document.querySelectorAll(&apos;[data-bs-toggle=&quot;tooltip&quot;]&apos;);&#10;for (var i = 0; i < tooltipTriggerElements.length; i++) {&#10;&#9;new bootstrap.Tooltip(tooltipTriggerElements[i])&#10;}">
          <h3 class="text-muted">Trigger type</h3>
          <p>Tooltip triggered by click only</p>
          <div>
            <button type="button" class="btn btn-secondary" data-bs-toggle="tooltip" title="Triggered by click" data-bs-trigger="click">Trigger by click</button>
          </div>
        </div>

        <div class="mb-5" data-css="a, button {&#10;&#9;margin-top: 50px;&#10;}" data-js="var tooltipTriggerElements = document.querySelectorAll(&apos;[data-bs-toggle=&quot;tooltip&quot;]&apos;);&#10;for (var i = 0; i < tooltipTriggerElements.length; i++) {&#10;&#9;new bootstrap.Tooltip(tooltipTriggerElements[i])&#10;}">
          <h3 class="text-muted">Disabled elements</h3>
          <div>
            <span class="d-inline-block" tabindex="0" data-bs-toggle="tooltip" title="Tooltip for disabled element">
              <button type="button" class="btn btn-secondary" disabled style="pointer-events: none;">Tooltip for disabled element</button>
            </span>
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