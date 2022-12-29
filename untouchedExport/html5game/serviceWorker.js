const cacheName = 'PWA-v2'
// const contentToCache = [
//     'options.ini',
//     'index.html',
//     'favicon.ico',
//     '/html5game/chunkie-run_texture_0.png',
//     '/html5game/chunkie-run_texture_1.png',
//     '/html5game/chunkie-run_texture_2.png',
//     '/html5game/chunkie-run_texture_3.png',
//     '/html5game/chunkie-run.js',
//     '/html5game/tph_custom_script.js',
// ]

self.addEventListener('install', (e) => {
    console.log('[Service Worker] Install');
    e.waitUntil((async () => {
        //const cache = await caches.open(cacheName);
        //console.log('[Service Worker] Caching all: app shell and content');
        // await cache.addAll(contentToCache);
    })());
});

// Fetching content using Service Worker
self.addEventListener('fetch', (e) => {
    e.respondWith((async () => {
        const r = await caches.match(e.request);
        console.log(`[Service Worker] Fetching resource: ${e.request.url}`);
        if (r) return r;
        const response = await fetch(e.request);
        const cache = await caches.open(cacheName);
        console.log(`[Service Worker] Caching new resource: ${e.request.url}`);
        cache.put(e.request, response.clone());
        return response;
    })());
});