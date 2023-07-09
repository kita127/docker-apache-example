import './bootstrap';

// import axios from 'axios';
// window.axios = axios;

// window.axios.defaults.headers.common['X-Requested-With'] = 'XMLHttpRequest';

import { createApp } from 'vue';

const app = createApp();

console.log(app.version);

app.mount('#app');
