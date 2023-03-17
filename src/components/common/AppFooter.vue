<template>
    <footer class="footer">
        <div class="container">
            <div class="footer__content">
                <div class="footer__logo">
                    <a href="index.html" class="logo">
                        <img src="@/assets/img/logo.png" alt="Логотип" class="logo__img">
                        <span class="logo__title">bran<span class="logo__title_span">d</span></span>
                    </a>
                    <p class="footer__text">Objectively transition extensive data rather than cross functional
                        solutions.
                        Monotonectally syndicate multidisciplinary materials before go forward benefits. Intrinsicly
                        syndicate an expanded array of processes and cross-unit partnerships.</p>
                    <p class="footer__text">Efficiently plagiarize 24/365 action items and focused infomediaries.</p>
                    <p class="footer__text">Distinctively seize superior initiatives for wireless technologies.
                        Dynamically
                        optimize.</p>
                </div>
                <div class="footer-menu">
                    <nav class="footer-menu__col" v-for="(arr, name) in navMenu" :key="name">
                        <p class="footer-menu__title">{{ name.replace('_', ' ') }}</p>
                        <a href="#" class="footer-menu__link" v-for="item in arr" :key="item">{{ item }}</a>
                    </nav>
                </div>
            </div>
        </div>
        <div class="footer-panel">
            <div class="container">
                <div class="footer__bottom">
                    <p class="footer-panel__policy">&copy; 2020 Brand All Rights Reserved.</p>
                    <div class="footer-social">
                        <a :href=link class="footer-social__link" v-for="(link, name) in social" :key="name">
                            <i :class=getClassName(name) aria-hidden="true"></i>
                        </a>
                    </div>
                </div>
            </div>
        </div>
    </footer>
</template>

<script>
export default {
    name: 'AppFooter',
    
    data() {
        return {
            navMenu: {
                company: ['Home','Shop','About','How It Work','Contact'],
                information: ['Tearms & Condition','Privacy Policy','How to Buy','How to Sell','Promotion'],
                shop_category: ['Men','Women','Child','Apparel','Brows All'],
            },
            social: {
                facebook: '#',
                twitter: '#',
                linkedin: '#',
                pinterest_p: '#',
                google_plus: '#'
            }
        }
    },

    methods: {
        getClassName(name) {
            return `fa fa-${name.replace('_', '-')}`
        }
    }
}
</script>

<style lang="less">
.footer {

    &__content {
        display: flex;
        padding: 110px 0;
    }

    &__logo {

        .footer__text {
            font-size: 14px;
            line-height: 24px;
            font-weight: 300;
            letter-spacing: 0.025em;
            color: #898989;
            width: 430px;
        }

        .footer__text:nth-of-type(1) {
            margin: 25px 0 20px 0;
        }
    }

    &-menu {
        display: flex;
        max-width: 610px;
        box-sizing: border-box;
        margin-left: auto;
    }

    .footer-menu__col:not(:last-child) {
        margin-right: 110px;
    }

    .footer-menu__title {
        text-transform: uppercase;
        font-size: 18px;
        font-weight: 700;
        letter-spacing: 0.025em;
        color: @siteColor;
        line-height: 40px;
        padding-bottom: 22px;
        white-space: nowrap;
    }

    .footer-menu__link {
        display: block;
        font-size: 16px;
        line-height: 42px;
        font-weight: 400;
        color: #898989;
        white-space: nowrap;
        transition: color .3s, opacity .3s;

        &:hover {
            color: @siteColor;
        }

        &:active {
            opacity: 0.7;
        }
    }

    &-panel {
        background-color: #e6e6e6;
        padding: 1% 0;
    }

    &__bottom {
        display: flex;
        justify-content: space-between;
        align-items: center;
    }

    .footer-panel__policy {
        font-size: 16px;
        line-height: 42px;
        font-weight: 400;
        letter-spacing: 0.025em;
        color: #7a7a7a;
    }

    .footer-social {
        display: flex;

        .footer-social__link {
            display: flex;
            justify-content: center;
            padding: 8px 0;
            width: 32px;
            background-color: #ffffff;
            margin-right: 4px;
            transition: transform 1s;

            &:hover {
                background-color: @siteColor;
                transform: translateY(-5px);
            }

            &:active {
                opacity: 0.5;
                background-color: #ffffff;
            }

            &:hover .fa {
                color: #f7f7f8;
            }

            .fa {
                font-size: 16px;
                font-weight: 400;
                letter-spacing: 0.025em;
                color: #b2b2b2;
            }
        }

        .footer-social__link:nth-of-type(1) .fa {
            align-self: center;
        }
    }
}

@media screen and (max-width: 1200px) {
    .footer {

        &__logo {
            display: none;
        }

        &-menu {
            margin: 0 auto;
        }

    }
}

@media screen and (max-width: 991.98px) {
    .footer {
        .footer-menu__col:not(:last-child) {
            margin-right: 60px;
        }
    }
}

@media screen and (max-width: 767.98px) {

    .footer {

        &__content {
            padding: 40px 0;
        }

        &-menu {
            flex-direction: column;
        }

        .footer-menu__col:not(:nth-of-type(3)) {
            margin: 0 0 24px 0;
        }

        .footer-menu__title {
            padding-bottom: 0;
        }

        &__bottom {
            display: block;
        }
    }
}
</style>