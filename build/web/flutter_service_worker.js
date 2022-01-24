'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';
const RESOURCES = {
  "assets/AssetManifest.json": "ec7b9e8f3b09fcf28aa4fc8f8dbd0361",
"assets/assets/icons/advertencia.png": "b2066cb0c1aa9200a492ab0ca5eff972",
"assets/assets/icons/basura1.png": "7de821e63cc1006053e2661fe4a64e2f",
"assets/assets/icons/basurero.png": "fa3988d18587bd58c30c6a29c1dafbde",
"assets/assets/icons/bloquear.png": "629838a4215c84d3d279919de4768828",
"assets/assets/icons/bolsa.png": "ec63a0ad5c6117c02df69c49d76b2ab8",
"assets/assets/icons/bolsaDinero.png": "e5688b84fe24e0cefa17939370791f7e",
"assets/assets/icons/buscar.png": "ddaf50ea05392230e331bd30d33be700",
"assets/assets/icons/buscar1.png": "964371736a51bfd90fd37e15b784ac16",
"assets/assets/icons/calendario.png": "80a4da98956d8a817dfbbe377dde11a3",
"assets/assets/icons/calendario2.png": "76e1b41b89fa5dd736b77d27537b1fd7",
"assets/assets/icons/calidad.png": "8e6432406441897d73e6373b8c4c7c2f",
"assets/assets/icons/camara.png": "eab44bd28b82a156b34b8155902bd959",
"assets/assets/icons/campa%25C3%25B1as.png": "a4cd440bd5e36c65649ce69c61fe7700",
"assets/assets/icons/card.png": "fbeafd96f300b89f98f08394018596ec",
"assets/assets/icons/cargando.png": "47ad2412b5f84c6383d2afe2ed157f09",
"assets/assets/icons/caritaFeliz.png": "8c4e80d87069f7a6262d4a70b3cf1a92",
"assets/assets/icons/carta.png": "27b8c39f106e57e6fbac4a767b9916b3",
"assets/assets/icons/cartaAbierta.png": "de4aae0720c7de8f671a27e9f099c8f6",
"assets/assets/icons/categorias.png": "74057bfa02a4673965dad78aa4852a48",
"assets/assets/icons/chatarra.png": "dca7c6ce5b4c41a597d801b9f4acbee6",
"assets/assets/icons/comentarios.png": "31d2199487ef7802cc139f5e13fc1671",
"assets/assets/icons/comision.png": "d4aa5ad860f4aa9cda9f02b76081e82b",
"assets/assets/icons/configuracion.png": "5e7730f88ca4c06eb7bf10641811fa58",
"assets/assets/icons/copa.png": "0a96554db062c250016f7a412962619e",
"assets/assets/icons/corazon.png": "53093f408a4c560381c81939f2f97187",
"assets/assets/icons/corazon2.png": "0b20c6667a94493b6fde138a10269bd9",
"assets/assets/icons/corazon3.png": "87d29bcbda70103919f25ad192d99ec6",
"assets/assets/icons/cronometro.png": "607a19b0a3d526bd3764e01a13a114a5",
"assets/assets/icons/dado.png": "0fc9549904a81186039a448309998136",
"assets/assets/icons/dinero.png": "1943411755ec5011a8dfede6bfcbeb97",
"assets/assets/icons/dineroVolando.png": "4ad19c71eb97f0763183cc38d0b0eab4",
"assets/assets/icons/editar.png": "676a2a7851ba2b8577ca2f507c0da3a4",
"assets/assets/icons/electronica.png": "1d4c0046b543fb31c842c3ff0e392bd5",
"assets/assets/icons/empresa.png": "acd42acbc84f02c8decfc41769ff71ce",
"assets/assets/icons/enVivo.png": "b1496d39a6d337a388c9bb808b766150",
"assets/assets/icons/espada.png": "cb3b8f94948dbb6d41544e6998d95748",
"assets/assets/icons/estrella.png": "895a27b33888aa5188368db4e3c987ed",
"assets/assets/icons/estrella0.png": "9f869553498a903f61e39bf4171c2da0",
"assets/assets/icons/facebook.png": "efa553ab981c97f80520c60270bc6167",
"assets/assets/icons/garantia.png": "15ee642e684cbf1fc89d5229413e9407",
"assets/assets/icons/imagen.png": "03f4e32edfbb6350c888731c0b9c3122",
"assets/assets/icons/imagen2.png": "a8d49e829aabe829c32bdf855916ebc0",
"assets/assets/icons/info.png": "c16063d3483e0262b7f285e517b6f90e",
"assets/assets/icons/instagram.png": "adf6b16c559e7dd43c99bb9f36793ec9",
"assets/assets/icons/like.png": "8e32344cbb957ad7ea274d775baca852",
"assets/assets/icons/linkedin.png": "03cf61184b7ff55d52eb050b26957f65",
"assets/assets/icons/localizaciones.png": "a5d2b5976bc40f269691ec70dae24cd2",
"assets/assets/icons/location.png": "4d1ea43c603b11a22ee6ef7bf4af7e8d",
"assets/assets/icons/logo.png": "2a2b08fdea94b516e2586cd00dc3a57d",
"assets/assets/icons/logo0.png": "19b673fd39ca7d954a10e49f9d6530c7",
"assets/assets/icons/mano.png": "4a904acd137470010f6eb33c6fa88335",
"assets/assets/icons/maquinaria.png": "b2d97eaeb06f1d8f59f1c4be464c4b8a",
"assets/assets/icons/martillo.png": "93fc7620221dc15d0b349c62d8f28208",
"assets/assets/icons/martillo1.png": "582fe997df6a85b7180e5bed96092a30",
"assets/assets/icons/mensaje.png": "433703d3d0c33303c905260d65996aca",
"assets/assets/icons/mensaje3.png": "6abad0cdd6673480768315aae66b6899",
"assets/assets/icons/mensajes.png": "9979215617bb8905b3bd6947aab8465a",
"assets/assets/icons/mercadoPago.png": "4b46e3e42c8ad9bbedf169ad46247f7b",
"assets/assets/icons/mobiliaria.png": "9434c917711a987f89688447aa493bb1",
"assets/assets/icons/monetizacion.png": "07fe9fe6d01802793008cd459c9939e0",
"assets/assets/icons/nivel.png": "ff302ee276c26c5aecb6482f219cc9d1",
"assets/assets/icons/ojo.png": "3402cea45e4dff7af2d00c1997208134",
"assets/assets/icons/ojo2.png": "2f13c46a9a1f147da6cdddf5fa112c56",
"assets/assets/icons/paginas.png": "b1262527786823a2212bacd501d6dccb",
"assets/assets/icons/paypal.png": "38df032b8a5d29c9484520404053ecb7",
"assets/assets/icons/persona.png": "262d4449d96523e45809041148a0a011",
"assets/assets/icons/persona1.png": "0d6096f3717bd84ae854c90a7879ae47",
"assets/assets/icons/personas.png": "38400426dd0fd0dd64001bc813021c92",
"assets/assets/icons/play.png": "71564e9c35a436c13d812edf11de43ec",
"assets/assets/icons/porcentaje.png": "e31b62c79998a0dec23051506368f3bd",
"assets/assets/icons/propiedades.png": "0002f4a0e64f38d55eb8d5c270d537f9",
"assets/assets/icons/repuestos.png": "7b7dd34af9e38bfdbf64cffcb1b2b498",
"assets/assets/icons/sinFondos.png": "33c26288194d04c4d236f6c70c321ce4",
"assets/assets/icons/tablero.png": "bdbd82d65e180dec5cf0c005173db9a0",
"assets/assets/icons/tecnologia.png": "8fbbb154790cb0db7c9b38a65820a95a",
"assets/assets/icons/torre.png": "049de7b9ea4e705fb90f7f09040a3024",
"assets/assets/icons/transferencia.png": "08f2eac0040b6b6cffeb894849430aaf",
"assets/assets/icons/ubicaciones.png": "df9cdf00bfc1630cd7ca40823324ce32",
"assets/assets/icons/vehiculos.png": "1e41378d58c0c3c2b893323bd023f51f",
"assets/assets/icons/yape.png": "1ab839e8ba73bd48edd6f960c41d55c8",
"assets/assets/images/autos.png": "04d76f4b72d7d82fcac3f86286a1edc9",
"assets/assets/images/bgSlider.png": "31d5ecc5df468eaeab108aaffea2ec08",
"assets/assets/images/chevrolet.png": "fb378a4ec3b2c4da16bd583f9b11fed0",
"assets/assets/images/chevrolet1.png": "79715ebb2736134e82a58ee7c0a6dc0f",
"assets/assets/images/chevrolet2.png": "67cf74a89b20afa6d5da161b07e17105",
"assets/assets/images/chevrolet3.png": "b66e6089b19ea109e459bfacc46c3086",
"assets/assets/images/chevrolet4.png": "906c029a593af46550b527274d51553d",
"assets/assets/images/logo.png": "7ec79eabdba4901579b5a0cd2e8ed86e",
"assets/assets/images/lote.png": "9d30177d2fe0e0acecd07fd2eccb2d4d",
"assets/assets/images/volquete.png": "539e0ff48227047a68040e5daf48baf1",
"assets/assets/images/volquete0.png": "adab0e4c890ad08b751d65a04ba525e1",
"assets/assets/images/volquete1.png": "a3d51c546675f1267254dfa443b903a9",
"assets/assets/images/volquete2.png": "bb69153e791e88a5b332ceade75c2e51",
"assets/assets/images/volquete3.png": "cff6be734445caf4dc727015172c0030",
"assets/assets/images/volquete4.png": "847cc71a6d6c4416a985ccdfa84c5685",
"assets/assets/jsons/categorias.json": "d50f7a9505acf8eb437266a506436c18",
"assets/assets/jsons/images_subasta.json": "e4f6d63b7b89ea970fd7e70d9f2368c8",
"assets/assets/jsons/subastas.json": "bc7a79d5f0512083830c2eb765080bdd",
"assets/FontManifest.json": "5f9460e45a93927a7a7c1009114a686c",
"assets/fonts/MaterialIcons-Regular.otf": "4e6447691c9509f7acdbf8a931a85ca1",
"assets/fonts/Mulish-Black.ttf": "920c3aa2dd0e07dfbfc2eb1eda861108",
"assets/fonts/Mulish-BlackItalic.ttf": "58014854016d97bdbf3b72c95ba77d69",
"assets/fonts/Mulish-Bold.ttf": "61c613ce75f3ec856472a9c3994c8733",
"assets/fonts/Mulish-BoldItalic.ttf": "84f2f435a9fa0a16c8c77d6ade19334c",
"assets/fonts/Mulish-ExtraBold.ttf": "a6dc005624991fe02e5760a13cef7aaf",
"assets/fonts/Mulish-ExtraBoldItalic.ttf": "66acfa555dff20eb4e907a7c75e9451b",
"assets/fonts/Mulish-ExtraLight.ttf": "0e143dcd4c88d4e37e5b015151a1f013",
"assets/fonts/Mulish-ExtraLightItalic.ttf": "211b7e19ea7b134ed5afb59c756a2600",
"assets/fonts/Mulish-Italic.ttf": "3dc932236db7c9087b5d3cbaadca18a0",
"assets/fonts/Mulish-Light.ttf": "4e94806ba0c3c1f86aadae5c82f76d12",
"assets/fonts/Mulish-LightItalic.ttf": "41295045a119b4ae2b22f4a00fbf5ae4",
"assets/fonts/Mulish-Medium.ttf": "4eb76372082cb710fa7d5ef3b4daa47c",
"assets/fonts/Mulish-MediumItalic.ttf": "454f39daccc0461c06f6074a3f6a0703",
"assets/fonts/Mulish-Regular.ttf": "ea2073481fc08be50e93657c983686e0",
"assets/fonts/Mulish-SemiBold.ttf": "7bd75d34e40623b038e44c78584ceb33",
"assets/fonts/Mulish-SemiBoldItalic.ttf": "c46e7758fa83d2a75cd68915e91207c2",
"assets/NOTICES": "7b5987e76050855d3e82a1ccf9d9f880",
"assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "6d342eb68f170c97609e9da345464e5e",
"canvaskit/canvaskit.js": "43fa9e17039a625450b6aba93baf521e",
"canvaskit/canvaskit.wasm": "04ed3c745ff1dee16504be01f9623498",
"canvaskit/profiling/canvaskit.js": "f3bfccc993a1e0bfdd3440af60d99df4",
"canvaskit/profiling/canvaskit.wasm": "a9610cf39260f60fbe7524a785c66101",
"favicon.png": "5dcef449791fa27946b3d35ad8803796",
"icons/Icon-192.png": "ac9a721a12bbc803b44f645561ecb1e1",
"icons/Icon-512.png": "96e752610906ba2a93c65f8abe1645f1",
"icons/Icon-maskable-192.png": "c457ef57daa1d16f64b27b786ec2ea3c",
"icons/Icon-maskable-512.png": "301a7604d45b3e739efc881eb04896ea",
"index.html": "59315bcf7abc308f0ee700f590193eec",
"/": "59315bcf7abc308f0ee700f590193eec",
"main.dart.js": "b776136d3a838779323dcdcf9506cf09",
"manifest.json": "aceabebbc3e2d79efec9dc8dce9e4c8d",
"version.json": "b5cc1917a5f7cca9032a6b342e4456f8"
};

// The application shell files that are downloaded before a service worker can
// start.
const CORE = [
  "/",
"main.dart.js",
"index.html",
"assets/NOTICES",
"assets/AssetManifest.json",
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
        // lazily populate the cache.
        return response || fetch(event.request).then((response) => {
          cache.put(event.request, response.clone());
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
