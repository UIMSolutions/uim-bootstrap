module uim.bootstrap.bs5.demos.demo;

import uim.bootstrap;

auto demoBs5Example(string id, string title, DH5Obj tabResult, string tabUim, string tabHTML) {
  return 
  H5Div(["mt-4 mb-4"],
    H5H3(["text-muted"], title),
    BS5Card(
      BS5CardHeader(
        BS5Nav(["nav-tabs", "card-header-tabs"], 
          BS5NavItem(["role":"presentation"], 
            BS5NavLink("tab"~id~"-1", ["active"], ["href":"#tab"~id~"-pane-1", "data-bs-toggle":"tab", "role":"tab", "aria-controls":"tab"~id~"-pane-1", "aria-selected":"true"], "Result")),
          BS5NavItem(["role":"presentation"], 
            BS5NavLink("tab"~id~"-2", ["href":"#tab"~id~"-pane-2", "data-bs-toggle":"tab", "role":"tab", "aria-controls":"tab"~id~"-pane-2", "aria-selected":"true"], "Code")),
          BS5NavItem(["role":"presentation"], 
            BS5NavLink("tab"~id~"-3", ["href":"#tab"~id~"-pane-3", "data-bs-toggle":"tab", "role":"tab", "aria-controls":"tab"~id~"-pane-3", "aria-selected":"true"], "HTML")))),
      BS5CardBody(
        H5Div(["tab-content"], 
          H5Div("tab"~id~"-pane-1", ["tab-pane", "active"], ["role":"tabpanel", "aria-labelledby":"tab"~id~"-1"], tabResult),
          H5Div("tab"~id~"-pane-2", ["tab-pane"], ["role":"tabpanel", "aria-labelledby":"tab"~id~"-2"], 
            `<pre><code>`~tabUim.replace(`&`, "&amp;").replace(`"`, "&quot;").replace("<", "&lt;").replace("]", "&gt;")~`</code></pre>`),
          H5Div("tab"~id~"-pane-3", ["tab-pane"], ["role":"tabpanel", "aria-labelledby":"tab"~id~"-3"], 
            `<pre><code>`~tabHTML.replace(`&`, "&amp;").replace(`"`, "&quot;").replace("<", "&lt;").replace("]", "&gt;")~`</code></pre>`)
  ))));
}


auto listLevels(string selected = "") {
  string items;

  items ~= (selected != "basic" ? H5Li(["list-group-item"], H5A(["href":"/demos/uim-bootstrap/5/basic"], "Basic")).toString : H5Li(["list-group-item active"], "Basic").toString);
  items ~= (selected != "complex" ? H5Li(["list-group-item"], H5A(["href":"/demos/uim-bootstrap/5/complex"], "Complex")).toString : H5Li(["list-group-item active"], "Complex").toString);
  items ~= (selected != "examples" ? H5Li(["list-group-item"], H5A(["href":"/demos/uim-bootstrap/5/examples"], "Examples")).toString : H5Li(["list-group-item active"], "Examples").toString);

  return 
    H5Div(["mb-5"],
      H5H3(["text-muted"], "Levels"), 
      BS5List(["list-group"], items));
} 

auto listAreas(string level, string selected = "") {
  string items;

  switch(level) {
    case "basic":
      items ~= (selected != "components" ? H5Li(["list-group-item"], H5A(["href":"/demos/uim-bootstrap/5/basic/components"], "Components")).toString : H5Li(["list-group-item active"], "Components").toString);
      items ~= (selected != "contents" ? H5Li(["list-group-item"], H5A(["href":"/demos/uim-bootstrap/5/basic/contents"], "Contents")).toString : H5Li(["list-group-item active"], "Contents").toString);
      items ~= (selected != "forms" ? H5Li(["list-group-item"], H5A(["href":"/demos/uim-bootstrap/5/basic/forms"], "Forms")).toString : H5Li(["list-group-item active"], "Forms").toString);
      items ~= (selected != "helpers" ? H5Li(["list-group-item"], H5A(["href":"/demos/uim-bootstrap/5/basic/helpers"], "Helpers")).toString : H5Li(["list-group-item active"], "Helpers").toString);
      items ~= (selected != "layouts" ? H5Li(["list-group-item"], H5A(["href":"/demos/uim-bootstrap/5/basic/layouts"], "Layouts")).toString : H5Li(["list-group-item active"], "Layouts").toString);
      items ~= (selected != "utilities" ? H5Li(["list-group-item"], H5A(["href":"/demos/uim-bootstrap/5/basic/utilities"], "Utilities")).toString : H5Li(["list-group-item active"], "Utilities").toString);
      break;
    case "complex":
      break;
    case "examples":
      break;
    default: break;
  }

  return 
    H5Div(["mb-5"],
      H5H3(["text-muted"], "Areas"), 
      BS5List(items));
} 

auto listSections(string level, string area, string selected = "") {
  string items;

  switch(level) {
    case "basic":
      switch(area) {
        case "layouts":
          items ~= (selected != "columns" ? H5Li(["list-group-item"],  H5A(["/demos/uim-bootstrap/5/basic/layouts/columns"], "Columns")).toString : H5Li(["list-group-item active"], "Columns").toString);
          items ~= (selected != "container" ? H5Li(["list-group-item"], H5A(["/demos/uim-bootstrap/5/basic/layouts/container"], "Container")).toString : H5Li(["list-group-item active"], "Container").toString);
          items ~= (selected != "grid" ? H5Li(["list-group-item"], H5A(["/demos/uim-bootstrap/5/basic/layouts/grid"], "Grid")).toString : H5Li(["list-group-item active"], "Grid").toString);
          items ~= (selected != "components" ? H5Li(["list-group-item"], H5A(["/demos/uim-bootstrap/5/basic/layouts/gutters"], "Gutters")).toString : H5Li(["list-group-item active"], "Gutters").toString);
          break;
        case "contents":
            items ~= (selected != "figures" ? H5Li(["list-group-item"], H5A(["href":"/demos/uim-bootstrap/5/basic/contents/figures"], "Figures")).toString : H5Li(["list-group-item active"], "Figures").toString);
            items ~= (selected != "images" ? H5Li(["list-group-item"], H5A(["href":"/demos/uim-bootstrap/5/basic/contents/images"], "Images")).toString : H5Li(["list-group-item active"], "Images").toString);
            items ~= (selected != "tables" ? H5Li(["list-group-item"], H5A(["href":"/demos/uim-bootstrap/5/basic/contents/tables"], "Tables")).toString : H5Li(["list-group-item active"], "Tables").toString);
            items ~= (selected != "typography" ? H5Li(["list-group-item"], H5A(["href":"/demos/uim-bootstrap/5/basic/contents/typography"], "Typography")).toString : H5Li(["list-group-item active"], "Typography").toString);
          break;
        case "components":
          items ~= (selected != "accordions" ? H5Li(["list-group-item"], H5A(["href":"/demos/uim-bootstrap/5/basic/components/accordions"], "Accordions")).toString : H5Li(["list-group-item active"], "Accordions").toString);
          items ~= (selected != "alerts" ? H5Li(["list-group-item"], H5A(["href":"/demos/uim-bootstrap/5/basic/components/alerts"], "Alerts")).toString : H5Li(["list-group-item active"], "Alerts").toString);
          items ~= (selected != "badges" ? H5Li(["list-group-item"], H5A(["href":"/demos/uim-bootstrap/5/basic/components/badges"], "Badges")).toString : H5Li(["list-group-item active"], "Badges").toString);
          items ~= (selected != "breadcrumbs" ? H5Li(["list-group-item"], H5A(["href":"/demos/uim-bootstrap/5/basic/components/breadcrumbs"], "Breadcrumbs")).toString : H5Li(["list-group-item active"], "Breadcrumbs").toString);
          items ~= (selected != "buttongroups" ? H5Li(["list-group-item"], H5A(["href":"/demos/uim-bootstrap/5/basic/components/buttongroups"], "Button Groups")).toString : H5Li(["list-group-item active"], "Button Groups").toString);
          items ~= (selected != "buttons" ? H5Li(["list-group-item"], H5A(["href":"/demos/uim-bootstrap/5/basic/components/buttons"], "Buttons")).toString : H5Li(["list-group-item active"], "Buttons").toString);
          items ~= (selected != "cards" ? H5Li(["list-group-item"], H5A(["href":"/demos/uim-bootstrap/5/basic/components/cards"], "Cards")).toString : H5Li(["list-group-item active"], "Cards").toString);
          items ~= (selected != "carousels" ? H5Li(["list-group-item"], H5A(["href":"/demos/uim-bootstrap/5/basic/components/carousels"], "Carousels")).toString : H5Li(["list-group-item active"], "Carousels").toString);
          items ~= (selected != "closebuttons" ? H5Li(["list-group-item"], H5A(["href":"/demos/uim-bootstrap/5/basic/components/closebuttons"], "Close Buttons")).toString : H5Li(["list-group-item active"], "Close Buttons").toString);
          items ~= (selected != "collapses" ? H5Li(["list-group-item"], H5A(["href":"/demos/uim-bootstrap/5/basic/components/collapses"], "Collapses")).toString : H5Li(["list-group-item active"], "Collapses").toString);
          items ~= (selected != "dropdowns" ? H5Li(["list-group-item"], H5A(["href":"/demos/uim-bootstrap/5/basic/components/dropdowns"], "Dropdowns")).toString : H5Li(["list-group-item active"], "Dropdowns").toString);
          items ~= (selected != "listgroups" ? H5Li(["list-group-item"], H5A(["href":"/demos/uim-bootstrap/5/basic/components/listgroups"], "List Groups")).toString : H5Li(["list-group-item active"], "List Groups").toString);
          items ~= (selected != "modals" ? H5Li(["list-group-item"], H5A(["href":"/demos/uim-bootstrap/5/basic/components/modals"], "Modals")).toString : H5Li(["list-group-item active"], "Modals").toString);
          items ~= (selected != "navbars" ? H5Li(["list-group-item"], H5A(["href":"/demos/uim-bootstrap/5/basic/components/navbars"], "Navbars")).toString : H5Li(["list-group-item active"], "Navbars").toString);
          items ~= (selected != "navs" ? H5Li(["list-group-item"], H5A(["href":"/demos/uim-bootstrap/5/basic/components/navs"], "Navs")).toString : H5Li(["list-group-item active"], "Navs").toString);
          items ~= (selected != "paginations" ? H5Li(["list-group-item"], H5A(["href":"/demos/uim-bootstrap/5/basic/components/paginations"], "Paginations")).toString : H5Li(["list-group-item active"], "Paginations").toString);
          items ~= (selected != "popovers" ? H5Li(["list-group-item"], H5A(["href":"/demos/uim-bootstrap/5/basic/components/popovers"], "Popovers")).toString : H5Li(["list-group-item active"], "Popovers").toString);
          items ~= (selected != "progresses" ? H5Li(["list-group-item"], H5A(["href":"/demos/uim-bootstrap/5/basic/components/progresses"], "Progresses")).toString : H5Li(["list-group-item active"], "Progresses").toString);
          items ~= (selected != "scrollspies" ? H5Li(["list-group-item"], H5A(["href":"/demos/uim-bootstrap/5/basic/components/scrollspies"], "Scrollspies")).toString : H5Li(["list-group-item active"], "Scrollspies").toString);
          items ~= (selected != "spinners" ? H5Li(["list-group-item"], H5A(["href":"/demos/uim-bootstrap/5/basic/components/spinners"], "Spinners")).toString : H5Li(["list-group-item active"], "Spinners").toString);
          items ~= (selected != "toasts" ? H5Li(["list-group-item"], H5A(["href":"/demos/uim-bootstrap/5/basic/components/toasts"], "Toasts")).toString : H5Li(["list-group-item active"], "Toasts").toString);
          items ~= (selected != "tooltips" ? H5Li(["list-group-item"], H5A(["href":"/demos/uim-bootstrap/5/basic/components/tooltips"], "Tooltips")).toString : H5Li(["list-group-item active"], "Tooltips").toString);
          break;
        case "helpers":
          items ~= (selected != "clearfix" ? H5Li(["list-group-item"], H5A(["href":"/demos/uim-bootstrap/5/basic/helpers/clearfix"], "Clearfix")).toString : H5Li(["list-group-item active"], "Clearfix").toString);
          items ~= (selected != "coloredlinks" ? H5Li(["list-group-item"], H5A(["href":"/demos/uim-bootstrap/5/basic/helpers/coloredlinks"], "Colored Links")).toString : H5Li(["list-group-item active"], "Colored Links").toString);
          items ~= (selected != "positionhelpers" ? H5Li(["list-group-item"], H5A(["href":"/demos/uim-bootstrap/5/basic/helpers/positionhelpers"], "Position Helpers")).toString : H5Li(["list-group-item active"], "Position Helpers").toString);
          items ~= (selected != "ratio" ? H5Li(["list-group-item"], H5A(["href":"/demos/uim-bootstrap/5/basic/helpers/ratio"], "Ratio")).toString : H5Li(["list-group-item active"], "Ratio").toString);
          items ~= (selected != "stretchedlink" ? H5Li(["list-group-item"], H5A(["href":"/demos/uim-bootstrap/5/basic/helpers/stretchedlink"], "Stretched Link")).toString : H5Li(["list-group-item active"], "Stretched Link").toString);
          items ~= (selected != "texttruncation" ? H5Li(["list-group-item"], H5A(["href":"/demos/uim-bootstrap/5/basic/helpers/texttruncation"], "Text Truncation")).toString : H5Li(["list-group-item active"], "Text Truncation").toString);
          items ~= (selected != "visuallyhidden" ? H5Li(["list-group-item"], H5A(["href":"/demos/uim-bootstrap/5/basic/helpers/visuallyhidden"], "Visually Hidden")).toString : H5Li(["list-group-item active"], "Visually Hidden").toString);
          break;
        case "utilities":
          items ~= (selected != "borders" ? H5Li(["list-group-item"], H5A(["href":"/demos/uim-bootstrap/5/basic/utilities/borders"], "Borders")).toString : H5Li(["list-group-item active"], "Borders").toString);
          items ~= (selected != "colors" ? H5Li(["list-group-item"], H5A(["href":"/demos/uim-bootstrap/5/basic/utilities/colors"], "Colors")).toString : H5Li(["list-group-item active"], "Colors").toString);
          items ~= (selected != "display" ? H5Li(["list-group-item"], H5A(["href":"/demos/uim-bootstrap/5/basic/utilities/display"], "Display")).toString : H5Li(["list-group-item active"], "Display").toString);
          items ~= (selected != "flex" ? H5Li(["list-group-item"], H5A(["href":"/demos/uim-bootstrap/5/basic/utilities/flex"], "Flex")).toString : H5Li(["list-group-item active"], "Flex").toString);
          items ~= (selected != "float" ? H5Li(["list-group-item"], H5A(["href":"/demos/uim-bootstrap/5/basic/utilities/float"], "Float")).toString : H5Li(["list-group-item active"], "Float").toString);
          items ~= (selected != "interactions" ? H5Li(["list-group-item"], H5A(["href":"/demos/uim-bootstrap/5/basic/utilities/interactions"], "Interactions")).toString : H5Li(["list-group-item active"], "Interactions").toString);
          items ~= (selected != "overflow" ? H5Li(["list-group-item"], H5A(["href":"/demos/uim-bootstrap/5/basic/utilities/overflow"], "Overflow")).toString : H5Li(["list-group-item active"], "Overflow").toString);
          items ~= (selected != "positionutilities" ? H5Li(["list-group-item"], H5A(["href":"/demos/uim-bootstrap/5/basic/utilities/positionutilities"], "Position Utilities")).toString : H5Li(["list-group-item active"], "Position Utilities").toString);
          items ~= (selected != "shadows" ? H5Li(["list-group-item"], H5A(["href":"/demos/uim-bootstrap/5/basic/utilities/shadows"], "Shadows")).toString : H5Li(["list-group-item active"], "Shadows").toString);
          items ~= (selected != "colsizingumns" ? H5Li(["list-group-item"], H5A(["href":"/demos/uim-bootstrap/5/basic/utilities/sizing"], "Sizing")).toString : H5Li(["list-group-item active"], "Sizing").toString);
          items ~= (selected != "text" ? H5Li(["list-group-item"], H5A(["href":"/demos/uim-bootstrap/5/basic/utilities/text"], "Text")).toString : H5Li(["list-group-item active"], "Text").toString);
          items ~= (selected != "verticalalign" ? H5Li(["list-group-item"], H5A(["href":"/demos/uim-bootstrap/5/basic/utilities/verticalalign"], "Vertical Align")).toString : H5Li(["list-group-item active"], "Vertical Align").toString);
          items ~= (selected != "visibility" ? H5Li(["list-group-item"], H5A(["href":"/demos/uim-bootstrap/5/basic/utilities/visibility"], "Visibility")).toString : H5Li(["list-group-item active"], "Visibility").toString);
          break;
        default: break;
      }
      break;
    case "complex":
      break;
    case "examples":
      break;
    default: break;
  }

  return 
    H5Div(["mb-5"],
      H5H3(["text-muted"], "Sections"), 
      H5Ul(["list-group"], items));
} 
