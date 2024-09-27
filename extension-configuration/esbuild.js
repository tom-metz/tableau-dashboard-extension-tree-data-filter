const esbuild = require("esbuild");

function run() {
  esbuild
    .build({
      entryPoints: ["src/DashboardExtensionService.js"],
      bundle: true,
      treeShaking: false,
      outfile: "build/dashboard-extension-service.js",
    })
    .then(function () {
      console.log("Build done");
    });
}

run();
