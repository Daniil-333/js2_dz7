import { createRouter, createWebHistory } from 'vue-router';

import AppHome from '@/components/pages/AppHome';
import AppCatalog from '@/components/pages/AppCatalog';
import AppProduct from '@/components/pages/AppProduct';
import AppCart from '@/components/pages/AppCart';
import AppCheckout from '@/components/pages/AppCheckout';
import AppE404 from '@/components/pages/AppE404';

const routes = [
    {
		name: 'home',
		path: '/',
		component: AppHome
	},
	{
		name: 'catalog',
		path: '/catalog',
		component: AppCatalog
	},
	{
		name: 'cart',
		path: '/cart',
		component: AppCart
	},
	{
		name: 'checkout',
		path: '/checkout',
		component: AppCheckout
	},
	{
		name: 'product',
		path: '/product',
		component: AppProduct
	},
    {
		name: 'json',
		path: '/src/db/*.json',
		component: AppHome
	},
	{
        name: '404',
		path: '/:any(.*)', // .*
		component: AppE404
	}
];

export default createRouter({
	routes,
	history: createWebHistory(),
    linkActiveClass: 'active-link',
    linkExactActiveClass: 'exact-active-link',
});