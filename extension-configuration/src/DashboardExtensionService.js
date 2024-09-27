function Tableau() {
  console.log("Tableau()");

  function extensionsInitAsync() {
    return tableau.extensions.initializeAsync();
  }

  function getDashboard() {
    return tableau.extensions.dashboardContent.dashboard;
  }

  function getAllWorksheets(dashboard) {
    return dashboard.worksheets;
  }

  const api = {
    extensionsInitAsync,
    getDashboard,
    getAllWorksheets,
  };

  return api;
}

window.Tableau = Tableau;
