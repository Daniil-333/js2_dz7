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
                    <nav class="footer-menu__col">
                        <p class="footer-menu__title">Company</p>
                        <a href="#" class="footer-menu__link">Home</a>
                        <a href="#" class="footer-menu__link">Shop</a>
                        <a href="#" class="footer-menu__link">About</a>
                        <a href="#" class="footer-menu__link">How It Work</a>
                        <a href="#" class="footer-menu__link">Contact</a>
                    </nav>
                    <nav class="footer-menu__col">
                        <p class="footer-menu__title">Information</p>
                        <a href="#" class="footer-menu__link">Tearms & Condition</a>
                        <a href="#" class="footer-menu__link">Privacy Policy</a>
                        <a href="#" class="footer-menu__link">How to Buy</a>
                        <a href="#" class="footer-menu__link">How to Sell</a>
                        <a href="#" class="footer-menu__link">Promotion</a>
                    </nav>
                    <nav class="footer-menu__col">
                        <p class="footer-menu__title">Shop Category</p>
                        <a href="#" class="footer-menu__link">Men</a>
                        <a href="#" class="footer-menu__link">Women</a>
                        <a href="#" class="footer-menu__link">Child</a>
                        <a href="#" class="footer-menu__link">Apparel</a>
                        <a href="#" class="footer-menu__link">Brows All</a>
                    </nav>
                </div>
            </div>
        </div>
        <div class="footer-panel">
            <div class="container">
                <div class="footer__bottom">
                    <p class="footer-panel__policy">&copy; 2020 Brand All Rights Reserved.</p>
                    <div class="footer-social">
                        <a href="#" class="footer-social__link"><i class="fa fa-facebook" aria-hidden="true"></i></a>
                        <a href="#" class="footer-social__link"><i class="fa fa-twitter" aria-hidden="true"></i></a>
                        <a href="#" class="footer-social__link"><i class="fa fa-linkedin" aria-hidden="true"></i></a>
                        <a href="#" class="footer-social__link"><i class="fa fa-pinterest-p" aria-hidden="true"></i></a>
                        <a href="#" class="footer-social__link"><i class="fa fa-google-plus" aria-hidden="true"></i></a>
                    </div>
                </div>
            </div>
        </div>
    </footer>
</template>

<script>
export default {
    name: 'AppFooter',
    props: {}
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