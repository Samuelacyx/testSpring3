'use strict'

var router = new VueRouter({
    routes: [
        /*{
            path: '/admin',
            redirect: '/admin/index',
            component: Admin,
            children: [
                {
                    path: '/admin/index',
                    component: Index
                },
                {
                    path: '/admin/club-form',
                    component: ClubForm
                },
                {
                    path: '/admin/club-list',
                    component: ClubList
                },
                {
                    path: '/admin/club-join',
                    component: ClubJoin
                },
                {
                    path: '/admin/club-info',
                    component: ClubInfo
                },
                {
                    path: '/admin/activity-form',
                    component: ActivityForm
                },
                {
                    path: '/admin/activity-list',
                    component: ActivityList
                },
                {
                    path: '/admin/user-list',
                    component: UserList
                },
                {
                    path: '/admin/user-form',
                    component: UserForm
                },
                {
                    path: '/admin/word',
                    component: Word
                }
            ]
        },*/
        {
            path: '/',
            component: hello
        },
        {
            path: '/hello',
            component: hello
        },
        {
            path: '/table',
            component: table
        },
        {
            path: '/user',
            component: user
        },
        {
            path: '/shop',
            component: shop
        },
        {
            path: '/usershop',
            component: usershop
        },
        {
            path: '/info',
            component: info
        },
        {
            path: '/word',
            component: word
        },
        {
            path: '/orderinfo',
            component: orderinfo
        },
        {
            path: '/addshop',
            component: addshop
        },
        {
            path: '/addword',
            component: addword
        },
        {
            path: '/buyshop',
            component: buyshop
        },
    ]
});

new Vue({
  router
}).$mount('#app');