module uim.bootstrap.bs5;

import uim.bootstrap;

public import uim.bootstrap.bs5.classes;

auto bs5CardComponents(string selComponent) {
  DH5Obj[] items;
  items ~= (selComponent == "accordions" ? BS5ListItem(["active"], "Accordions") : BS5ListItem("Accordions"));
  items ~= (selComponent == "alerts" ? BS5ListItem(["active"], "Alerts") : BS5ListItem("Alerts"));
  items ~= (selComponent == "badges" ? BS5ListItem(["active"], "Badges") : BS5ListItem("Badges"));

  return BS5Card
    .header("Components")
    .list(["list-group-flush"], items);
}
