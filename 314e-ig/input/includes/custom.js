$(document).ready(function() {

  // Activate Snapshot tab by default on StructureDefinition pages

  if (window.location.pathname.includes("StructureDefinition")) {

    // Find Snapshot tab and activate it
    $('a[href="#tabs-snap"]').tab('show');

  }

});