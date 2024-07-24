'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';

const RESOURCES = {"assets/AssetManifest.bin": "9d22d70e0ebf3991be4fdedacfcb2adc",
"assets/AssetManifest.bin.json": "10552566b65acf9a5585e448abc371e1",
"assets/AssetManifest.json": "897c2d945215ffd4bc8115bb5481d4b3",
"assets/assets/5pillar.jpg": "f2ce11a84a42d74b77678890f170b026",
"assets/assets/about-banner.png": "0baa55888b2045eb753c079584436145",
"assets/assets/about-gap.png": "5b93b069c977ed2904578d4f093ba218",
"assets/assets/aboutuss.png": "d7026cff06dbc7d42523da446dc60dd9",
"assets/assets/ACMEMinds-Logo.png": "5741ab7d15781eb715ea9556596ae283",
"assets/assets/Adopt-Cloud-banner.png": "d027633b876c29fd769c1b6e4a4d443f",
"assets/assets/adopt-cloud-bg-1.jpg": "356e0f129ff29bd96ae61fe69a31d494",
"assets/assets/Agile%2520proj.png": "f1039c6021426a85e826846e23cd9eca",
"assets/assets/BanyanTree-Logo.png": "4e8e4918cc1839d244a247cb827e2d2a",
"assets/assets/Build-in-Cloud-banner.jpg": "38ef798b1636c59d548fb1ad58c65ea5",
"assets/assets/Build_cloud_foundation.png": "ce7c26de56a2013a8f641330d865c63b",
"assets/assets/cd-home.jpg": "bc57d0d63cca185b9c69e7dc1679d8ec",
"assets/assets/cd-logo.jpg": "9c0add37ec0b6b5e778ba844ef4c13a5",
"assets/assets/chandrakant.jpg": "23f7fe6a8ca60f4b83f1bbab6b6ba00b",
"assets/assets/Cloud-Migration-What-we-offer_1_.png": "8e892927bdb3ec9e632372134efa9c0d",
"assets/assets/Cloud-migration.png": "729bc7decec351fd0db0a6228bc0f6fe",
"assets/assets/Cloud-Operations.jpg": "7027d29d9e77c902a9e524a1cbf70a61",
"assets/assets/cloud-services.png": "8ef4881456566cbbdd76b2ecac718962",
"assets/assets/cloudFoundation.jpg": "42848d8d01063713d8db9f24fb851535",
"assets/assets/cloudmigrationBG.png": "15a31a1d5c34063a05f7f95d2f1ada5f",
"assets/assets/CodeElan_Adopt_cloud_Process.gif": "ae2236fd674c19b4268778a2b334e207",
"assets/assets/contactus-cover.jpg": "4e53f17a62b6a2ceb217e2a755cb75d0",
"assets/assets/contactus.png": "20e6b985f2f827b26875bf303229bbe6",
"assets/assets/contactusimg.jpeg": "50c2cfc574d39ef8c659e1294680fed4",
"assets/assets/deepak.png": "4e25646c9b9879222d78f997eaa3c0d9",
"assets/assets/DevOps.jpg": "cb8da9136fbceaf150820ec8a39a7f77",
"assets/assets/exclusiveFeatures.png": "1afaee333b2780bbd88f1bb5229aac11",
"assets/assets/get-quote.png": "f584ab614e9bb9bc10e859fc23f8d504",
"assets/assets/icons-server.png": "383dcf0ec30e57c706409c90e42dffcd",
"assets/assets/Idea-bridge-Logo.png": "4a6b3b431ea2a5e4a144acb4b33e851f",
"assets/assets/IPsolutions_banner.jpg": "8b8b191ec28fd8878207caf688bc3caf",
"assets/assets/IPSolution_Magic-Inbox.jpg": "919c8188b525aa4bd49a631dda2cbcd1",
"assets/assets/IPSolution_WeModdle.jpg": "a88b24dd73377b8a49bb7c005162d325",
"assets/assets/IPSolution_WeRecruit.jpg": "a6a668b38618bea709acddfc91d264fe",
"assets/assets/knowmore-aboutus.jpg": "aa9972bd708aec293bdcc3bd2a2bbb45",
"assets/assets/kubernet.png": "86bcad2e9ebf6f63f54cc6d29a8fc1bb",
"assets/assets/kubernetes_bg.jpg": "5740eff6dfca5301fe6fbd3defd1df9b",
"assets/assets/LoadShare-Logo.png": "f858ef95bce282a94e202f828d166bb7",
"assets/assets/Logo-Inverted.jpg": "1746441b61132823b70922128becf144",
"assets/assets/Male-User.png": "752f3050bdfdf6fc27cf79acaf006b40",
"assets/assets/Managed-Observabilit1.jpg": "41e1ce32a95a0c352aabc30089bbecd8",
"assets/assets/Observability-Engineering.jpg": "6fbb26944feb8781576c63af8bc3add9",
"assets/assets/operatecloud1.jpg": "e5f835c66fd58d51371ca5d7fe422568",
"assets/assets/ParentPayGroup.png": "93418f4ff62b0d3047d6bee85addaccf",
"assets/assets/phone-image.png": "07d00dcc50d8e10f4f43574e081eb1b4",
"assets/assets/PlusInnovation-Logo.png": "20c570e00d4649b9e20120871b24f52f",
"assets/assets/process-icon.png": "7a8e1c5da71fd4dac881432efc611b3b",
"assets/assets/Product-Development.jpg": "fa097c194e400f827f91404c4f1498e8",
"assets/assets/Product-engineering.jpg": "6b45a6671b11adcb32e570718444d53a",
"assets/assets/Rajesh-Kanade.png": "53f8e97083f14dc1ba15f5c8f8737b85",
"assets/assets/service-BG.png": "2803be9bc00f3ce53807a557536844b2",
"assets/assets/service-home1.png": "d71f8b18f14fc8dbaff184f5b5e3e16c",
"assets/assets/Services-home.png": "445420dd16105be62ff8f9e9b9053971",
"assets/assets/Shailesh.png": "f5a3b6510be1293ae1915aef0e10c2f8",
"assets/assets/Streamlining-Cloud-Product-Development.jpg": "213f85fcc1f860bee449f89d1b124ace",
"assets/assets/SunPower-Logo.png": "c98caf7c7c2d513dbac5561340eec97e",
"assets/assets/swiftTengibleResult.png": "820575389a745c2099cb0bc938f091e5",
"assets/assets/Techno-Logo.png": "4af388567af42b3d973a6f759e66fecf",
"assets/assets/Testing-Automation.jpeg": "75262410b8110e893284baedf6f85343",
"assets/assets/TestingAutomationProcessBanner.jpg": "9b46e077b4df1702b62623adde13b379",
"assets/assets/testingAutomationServiceBG.png": "e0b67a51250f2d2854c9fb981d0f69d2",
"assets/assets/Transformation-to-Cloud-Engineering.jpg": "7134150f39221f163095b16016e7c897",
"assets/assets/Unique-Solutions.png": "257ef35247503153609b18b77af0b8fa",
"assets/assets/user-setting.png": "142ec22a7f6bbd14b05c72f163c5e5ec",
"assets/assets/VoniGo-Logo.png": "4eb20b17a144f3a39cb29bacb5dcfbbe",
"assets/assets/Why-About-us-banner.png": "1c3550289ea21d2d2ccc14904a2f0234",
"assets/assets/Why-CodeElan-service.png": "b996e8fce7d4c3acee3f171abe4498f4",
"assets/FontManifest.json": "dc3d03800ccca4601324923c0b1d6d57",
"assets/fonts/MaterialIcons-Regular.otf": "8095c70a5df6cf4655f2946f47093c9b",
"assets/NOTICES": "289cf03fab968adab1d2263571ed4a64",
"assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "e986ebe42ef785b27164c36a9abc7818",
"assets/shaders/ink_sparkle.frag": "ecc85a2e95f5e9f53123dcaf8cb9b6ce",
"canvaskit/canvaskit.js": "5fda3f1af7d6433d53b24083e2219fa0",
"canvaskit/canvaskit.js.symbols": "07c19b69fa5f53224712e8471c00344d",
"canvaskit/canvaskit.wasm": "f312edac4fb4c74852dc1a4f069ab100",
"canvaskit/chromium/canvaskit.js": "87325e67bf77a9b483250e1fb1b54677",
"canvaskit/chromium/canvaskit.js.symbols": "100d192729121969872b80009e47a5b7",
"canvaskit/chromium/canvaskit.wasm": "f9074e52c7e9c770f1130c6ed9e2677f",
"canvaskit/skwasm.js": "f17a293d422e2c0b3a04962e68236cc2",
"canvaskit/skwasm.js.symbols": "ab140650f4d351b74f4e6bca3e8dd0e0",
"canvaskit/skwasm.wasm": "7fe5c39ff8466de52fbb0c66473abbe3",
"canvaskit/skwasm.worker.js": "bfb704a6c714a75da9ef320991e88b03",
"favicon.png": "5dcef449791fa27946b3d35ad8803796",
"flutter.js": "383e55f7f3cce5be08fcf1f3881f585c",
"flutter_bootstrap.js": "7446547fddbc38e8cd62373885e30907",
"icons/Icon-192.png": "ac9a721a12bbc803b44f645561ecb1e1",
"icons/Icon-512.png": "96e752610906ba2a93c65f8abe1645f1",
"icons/Icon-maskable-192.png": "c457ef57daa1d16f64b27b786ec2ea3c",
"icons/Icon-maskable-512.png": "301a7604d45b3e739efc881eb04896ea",
"index.html": "56ca6251527a3207b7bd0463d5ad1db3",
"/": "56ca6251527a3207b7bd0463d5ad1db3",
"main.dart.js": "dc8f1ea3789dfa1761baf518c79e0c7a",
"manifest.json": "dd7a7e7e0fe6fadf4c088ec773060612",
"version.json": "b13400fc6810f72e22fb733c1eb96ca4"};
// The application shell files that are downloaded before a service worker can
// start.
const CORE = ["main.dart.js",
"index.html",
"flutter_bootstrap.js",
"assets/AssetManifest.bin.json",
"assets/FontManifest.json"];

// During install, the TEMP cache is populated with the application shell files.
self.addEventListener("install", (event) => {
  self.skipWaiting();
  return event.waitUntil(
    caches.open(TEMP).then((cache) => {
      return cache.addAll(
        CORE.map((value) => new Request(value, {'cache': 'reload'})));
    })
  );
});
// During activate, the cache is populated with the temp files downloaded in
// install. If this service worker is upgrading from one with a saved
// MANIFEST, then use this to retain unchanged resource files.
self.addEventListener("activate", function(event) {
  return event.waitUntil(async function() {
    try {
      var contentCache = await caches.open(CACHE_NAME);
      var tempCache = await caches.open(TEMP);
      var manifestCache = await caches.open(MANIFEST);
      var manifest = await manifestCache.match('manifest');
      // When there is no prior manifest, clear the entire cache.
      if (!manifest) {
        await caches.delete(CACHE_NAME);
        contentCache = await caches.open(CACHE_NAME);
        for (var request of await tempCache.keys()) {
          var response = await tempCache.match(request);
          await contentCache.put(request, response);
        }
        await caches.delete(TEMP);
        // Save the manifest to make future upgrades efficient.
        await manifestCache.put('manifest', new Response(JSON.stringify(RESOURCES)));
        // Claim client to enable caching on first launch
        self.clients.claim();
        return;
      }
      var oldManifest = await manifest.json();
      var origin = self.location.origin;
      for (var request of await contentCache.keys()) {
        var key = request.url.substring(origin.length + 1);
        if (key == "") {
          key = "/";
        }
        // If a resource from the old manifest is not in the new cache, or if
        // the MD5 sum has changed, delete it. Otherwise the resource is left
        // in the cache and can be reused by the new service worker.
        if (!RESOURCES[key] || RESOURCES[key] != oldManifest[key]) {
          await contentCache.delete(request);
        }
      }
      // Populate the cache with the app shell TEMP files, potentially overwriting
      // cache files preserved above.
      for (var request of await tempCache.keys()) {
        var response = await tempCache.match(request);
        await contentCache.put(request, response);
      }
      await caches.delete(TEMP);
      // Save the manifest to make future upgrades efficient.
      await manifestCache.put('manifest', new Response(JSON.stringify(RESOURCES)));
      // Claim client to enable caching on first launch
      self.clients.claim();
      return;
    } catch (err) {
      // On an unhandled exception the state of the cache cannot be guaranteed.
      console.error('Failed to upgrade service worker: ' + err);
      await caches.delete(CACHE_NAME);
      await caches.delete(TEMP);
      await caches.delete(MANIFEST);
    }
  }());
});
// The fetch handler redirects requests for RESOURCE files to the service
// worker cache.
self.addEventListener("fetch", (event) => {
  if (event.request.method !== 'GET') {
    return;
  }
  var origin = self.location.origin;
  var key = event.request.url.substring(origin.length + 1);
  // Redirect URLs to the index.html
  if (key.indexOf('?v=') != -1) {
    key = key.split('?v=')[0];
  }
  if (event.request.url == origin || event.request.url.startsWith(origin + '/#') || key == '') {
    key = '/';
  }
  // If the URL is not the RESOURCE list then return to signal that the
  // browser should take over.
  if (!RESOURCES[key]) {
    return;
  }
  // If the URL is the index.html, perform an online-first request.
  if (key == '/') {
    return onlineFirst(event);
  }
  event.respondWith(caches.open(CACHE_NAME)
    .then((cache) =>  {
      return cache.match(event.request).then((response) => {
        // Either respond with the cached resource, or perform a fetch and
        // lazily populate the cache only if the resource was successfully fetched.
        return response || fetch(event.request).then((response) => {
          if (response && Boolean(response.ok)) {
            cache.put(event.request, response.clone());
          }
          return response;
        });
      })
    })
  );
});
self.addEventListener('message', (event) => {
  // SkipWaiting can be used to immediately activate a waiting service worker.
  // This will also require a page refresh triggered by the main worker.
  if (event.data === 'skipWaiting') {
    self.skipWaiting();
    return;
  }
  if (event.data === 'downloadOffline') {
    downloadOffline();
    return;
  }
});
// Download offline will check the RESOURCES for all files not in the cache
// and populate them.
async function downloadOffline() {
  var resources = [];
  var contentCache = await caches.open(CACHE_NAME);
  var currentContent = {};
  for (var request of await contentCache.keys()) {
    var key = request.url.substring(origin.length + 1);
    if (key == "") {
      key = "/";
    }
    currentContent[key] = true;
  }
  for (var resourceKey of Object.keys(RESOURCES)) {
    if (!currentContent[resourceKey]) {
      resources.push(resourceKey);
    }
  }
  return contentCache.addAll(resources);
}
// Attempt to download the resource online before falling back to
// the offline cache.
function onlineFirst(event) {
  return event.respondWith(
    fetch(event.request).then((response) => {
      return caches.open(CACHE_NAME).then((cache) => {
        cache.put(event.request, response.clone());
        return response;
      });
    }).catch((error) => {
      return caches.open(CACHE_NAME).then((cache) => {
        return cache.match(event.request).then((response) => {
          if (response != null) {
            return response;
          }
          throw error;
        });
      });
    })
  );
}
