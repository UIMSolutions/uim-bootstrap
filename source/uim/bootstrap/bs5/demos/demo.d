module uim.bootstrap.bs5.demos.demo;

import uim.bootstrap;

string demoExample(string id, string title, string tabResult, string tabUim, string tabHTML) {
  return `
<div class="mt-4 mb-4">
  <h3 class="text-muted">`~title~`</h3>
  <div class="card">
    <div class="card-header">
      <ul class="nav nav-tabs card-header-tabs">
        <li class="nav-item" role="presentation">
          <a href="#tab`~id~`-pane-1" id="tab`~id~`-1" class="nav-link active" data-bs-toggle="tab" role="tab" aria-controls="tab`~id~`-pane-1" aria-selected="true">Result</a>
        </li>
        <li class="nav-item" role="presentation">
          <a href="#tab`~id~`-pane-2" id="tab`~id~`-2" class="nav-link" data-bs-toggle="tab" role="tab" aria-controls="tab`~id~`-pane-2" aria-selected="false">uim-bootstrap</a>
        </li>
        <li class="nav-item" role="presentation">
          <a href="#tab`~id~`-pane-3" id="tab`~id~`-3" class="nav-link" data-bs-toggle="tab" role="tab" aria-controls="tab`~id~`-pane-3" aria-selected="false">HTML</a>
        </li>
      </ul>
    </div>
  <div class="card-body">
    <div class="tab-content">
      <div id="tab`~id~`-pane-1" class="tab-pane active" role="tabpanel" aria-labelledby="tab`~id~`-1">`~tabResult~`</div>
      <div id="tab`~id~`-pane-2" class="tab-pane" role="tabpanel" aria-labelledby="tab`~id~`-2"><pre><code>`~tabUim.replace(`&`, "&amp;").replace(`"`, "&quot;").replace("<", "&lt;").replace(">", "&gt;")~`</code></pre></div>
      <div id="tab`~id~`-pane-3" class="tab-pane" role="tabpanel" aria-labelledby="tab`~id~`-3"><pre><code>`~tabHTML.replace(`&`, "&amp;").replace(`"`, "&quot;").replace("<", "&lt;").replace(">", "&gt;")~`</code></pre></div>
    </div>
  </div>
</div>`;
}