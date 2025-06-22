import './bootstrap';
import { createApp } from 'vue/dist/vue.esm-bundler.js';
import CommentList from './components/comments/CommentList.vue';
import AddComment from './components/comments/AddComment.vue';
import SearchButton from './components/search/SearchButton.vue';
import SearchTab from './components/search/SearchTab.vue';
import { createPinia } from "pinia";

const app = createApp({});
const pinia = createPinia();

app.component("comment-list", CommentList);
app.component("add-comment", AddComment);
app.component("search-button", SearchButton);
app.component("search-tab", SearchTab);
app.use(pinia);
app.mount("#app");

