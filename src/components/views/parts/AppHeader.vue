<template>
    <header class="header">
        <div class="header__top">
            <div class="container">
                <div class="header__content">
                    <router-link :to="{ name: 'home' }" class="logo">
                        <img src="@/assets/img/logo.png" alt="Логотип" class="logo__img">
                        <span class="logo__title">bran<span class="logo__title_span">d</span></span>
                    </router-link>
                    <form action="#" class="header__form">
                        <details class="header__browse">
                            <summary class="header__summary"><span>Browse</span></summary>
                            <div class="drop">
                                <div class="drop__col">
                                    <h3 class="drop__h3">Women</h3>
                                    <ul class="drop__ul">
                                        <li><a href="#" class="drop__link">Dresses</a></li>
                                        <li><a href="#" class="drop__link">Tops</a></li>
                                        <li><a href="#" class="drop__link">Sweaters/Knits</a></li>
                                        <li><a href="#" class="drop__link">Jackets/Coats</a></li>
                                        <li><a href="#" class="drop__link">Blazers</a></li>
                                        <li><a href="#" class="drop__link">Denim</a></li>
                                        <li><a href="#" class="drop__link">Leggings/Pants</a></li>
                                        <li><a href="#" class="drop__link">Skirts/Shorts</a></li>
                                        <li><a href="#" class="drop__link">Accessories</a></li>
                                    </ul>
                                    <h3 class="drop__h3">Women</h3>
                                    <ul class="drop__ul">
                                        <li><a href="#" class="drop__link">Dresses</a></li>
                                        <li><a href="#" class="drop__link">Tops</a></li>
                                        <li><a href="#" class="drop__link">Sweaters/Knits</a></li>
                                        <li><a href="#" class="drop__link">Jackets/Coats</a></li>
                                    </ul>
                                </div>
                            </div>
                        </details>
                        <input type="search" class="search__input" placeholder="Search for item...">
                        <a href="#" class="search__btn"><i class="fa fa-search" aria-hidden="true"></i></a>
                    </form>
                    <div class="cart">
                        <router-link :to="{ name: 'cart' }">
                            <img src="@/assets/img/basket.png" alt="Корзина" class="cart__img">
                        </router-link>
                        <details class="cart__btn">
                            <summary class="cart__summary">My Account</summary>
                            <div class="cart-drop">
                                <div class="cart-drop__item">
                                    <a href="#" class="cart-drop__link"><img src="@/assets/img/cart_drop1.jpg"
                                            alt="product photo" class="cart-drop__img"></a>
                                    <div class="cart-drop__info">
                                        <p class="cart-drop__title">Rebox Zane</p>
                                        <div class="cart-drop__raiting raiting">
                                            <i class="fa fa-star" aria-hidden="true"></i>
                                            <i class="fa fa-star" aria-hidden="true"></i>
                                            <i class="fa fa-star" aria-hidden="true"></i>
                                            <i class="fa fa-star" aria-hidden="true"></i>
                                            <i class="fa fa-star-half-o" aria-hidden="true"></i>
                                        </div>
                                        <p class="cart-drop__price">1 <span class="cart-drop__span">x</span> $250</p>
                                    </div>
                                    <button type="button" class="cart-drop__action cancel">
                                        <i class="fa fa-times-circle" aria-hidden="true"></i>
                                    </button>
                                </div>
                                <div class="cart-drop__item">
                                    <a href="#" class="cart-drop__link"><img src="@/assets/img/s-p-slider.jpg"
                                            alt="product photo" class="cart-drop__img" width="72px"></a>
                                    <div class="cart-drop__info">
                                        <p class="cart-drop__title">Rebox Zane</p>
                                        <div class="cart-drop__raiting raiting">
                                            <i class="fa fa-star" aria-hidden="true"></i>
                                            <i class="fa fa-star" aria-hidden="true"></i>
                                            <i class="fa fa-star" aria-hidden="true"></i>
                                            <i class="fa fa-star" aria-hidden="true"></i>
                                            <i class="fa fa-star-half-o" aria-hidden="true"></i>
                                        </div>
                                        <p class="cart-drop__price">1 <span class="cart-drop__span">x</span> $250</p>
                                    </div>
                                    <button type="button" class="cart-drop__action cancel">
                                        <i class="fa fa-times-circle" aria-hidden="true"></i>
                                    </button>
                                </div>
                                <p class="cart-drop__total">Total <span class="cart-drop__span">$500.00</span></p>
                                <router-link :to="{ name: 'checkout' }" class="cart-drop__button">Checkout</router-link>
                                <router-link :to="{ name: 'cart' }" class="cart-drop__button">Go to cart</router-link>
                            </div>
                        </details>
                    </div>
                </div>
            </div>
        </div>
        <div class="header__bottom">
            <div class="container">
                <nav class="header__nav nav">
                    <label for="navCollapse" class="nav__btn"><span class="fa fa-bars"></span></label>
                    <input type="checkbox" id="navCollapse" class="nav__input">
                    <div class="menu">
                        <ul class="menu__list">
                            <li class="menu__item">
                                <router-link :to="{ name: 'home' }" class="menu__item-link">Home</router-link>
                                <div class="drop">
                                    <div class="drop__content">
                                        <div class="drop__col">
                                            <h3 class="drop__h3">Women</h3>
                                            <ul class="drop__ul">
                                                <li><a href="#" class="drop__link">Dresses</a></li>
                                                <li><a href="#" class="drop__link">Tops</a></li>
                                                <li><a href="#" class="drop__link">Sweaters/Knits</a></li>
                                                <li><a href="#" class="drop__link">Jackets/Coats</a></li>
                                                <li><a href="#" class="drop__link">Blazers</a></li>
                                                <li><a href="#" class="drop__link">Denim</a></li>
                                                <li><a href="#" class="drop__link">Leggings/Pants</a></li>
                                                <li><a href="#" class="drop__link">Skirts/Shorts</a></li>
                                                <li><a href="#" class="drop__link">Accessories</a></li>
                                            </ul>
                                        </div>
                                        <div class="drop__col">
                                            <h3 class="drop__h3">Women</h3>
                                            <ul class="drop__ul">
                                                <li><a href="#" class="drop__link">Dresses</a></li>
                                                <li><a href="#" class="drop__link">Tops</a></li>
                                                <li><a href="#" class="drop__link">Sweaters/Knits</a></li>
                                                <li><a href="#" class="drop__link">Jackets/Coats</a></li>
                                            </ul>
                                            <h3 class="drop__h3">Women</h3>
                                            <ul class="drop__ul">
                                                <li><a href="#" class="drop__link">Dresses</a></li>
                                                <li><a href="#" class="drop__link">Tops</a></li>
                                                <li><a href="#" class="drop__link">Sweaters/Knits</a></li>
                                            </ul>
                                        </div>
                                        <div class="drop__col">
                                            <h3 class="drop__h3">Women</h3>
                                            <ul class="drop__ul">
                                                <li><a href="#" class="drop__link">Dresses</a></li>
                                                <li><a href="#" class="drop__link">Tops</a></li>
                                                <li><a href="#" class="drop__link">Sweaters/Knits</a></li>
                                                <li><a href="#" class="drop__link">Jackets/Coats</a></li>
                                                <li class="drop__supersale">Super sale!</li>
                                            </ul>
                                        </div>
                                    </div>
                                </div>
                            </li>
                            <li class="menu__item">
                                <router-link :to="{ name: 'catalog' }" class="menu__item-link">Man</router-link>
                                <div class="drop">
                                    <div class="drop__content">
                                        <div class="drop__col">
                                            <h3 class="drop__h3">Women</h3>
                                            <ul class="drop__ul">
                                                <li><a href="#" class="drop__link">Dresses</a></li>
                                                <li><a href="#" class="drop__link">Tops</a></li>
                                                <li><a href="#" class="drop__link">Sweaters/Knits</a></li>
                                                <li><a href="#" class="drop__link">Jackets/Coats</a></li>
                                                <li><a href="#" class="drop__link">Blazers</a></li>
                                                <li><a href="#" class="drop__link">Denim</a></li>
                                                <li><a href="#" class="drop__link">Leggings/Pants</a></li>
                                                <li><a href="#" class="drop__link">Skirts/Shorts</a></li>
                                                <li><a href="#" class="drop__link">Accessories</a></li>
                                            </ul>
                                        </div>
                                        <div class="drop__col">
                                            <h3 class="drop__h3">Women</h3>
                                            <ul class="drop__ul">
                                                <li><a href="#" class="drop__link">Dresses</a></li>
                                                <li><a href="#" class="drop__link">Tops</a></li>
                                                <li><a href="#" class="drop__link">Sweaters/Knits</a></li>
                                                <li><a href="#" class="drop__link">Jackets/Coats</a></li>
                                            </ul>
                                            <h3 class="drop__h3">Women</h3>
                                            <ul class="drop__ul">
                                                <li><a href="#" class="drop__link">Dresses</a></li>
                                                <li><a href="#" class="drop__link">Tops</a></li>
                                                <li><a href="#" class="drop__link">Sweaters/Knits</a></li>
                                            </ul>
                                        </div>
                                        <div class="drop__col">
                                            <h3 class="drop__h3">Women</h3>
                                            <ul class="drop__ul">
                                                <li><a href="#" class="drop__link">Dresses</a></li>
                                                <li><a href="#" class="drop__link">Tops</a></li>
                                                <li><a href="#" class="drop__link">Sweaters/Knits</a></li>
                                                <li><a href="#" class="drop__link">Jackets/Coats</a></li>
                                                <li class="drop__supersale">Super sale!</li>
                                            </ul>
                                        </div>
                                    </div>
                                </div>
                            </li>
                            <li class="menu__item">
                                <router-link :to="{ name: 'catalog' }" class="menu__item-link">Women</router-link>
                                <div class="drop">
                                    <div class="drop__content">
                                        <div class="drop__col">
                                            <h3 class="drop__h3">Women</h3>
                                            <ul class="drop__ul">
                                                <li><a href="#" class="drop__link">Dresses</a></li>
                                                <li><a href="#" class="drop__link">Tops</a></li>
                                                <li><a href="#" class="drop__link">Sweaters/Knits</a></li>
                                                <li><a href="#" class="drop__link">Jackets/Coats</a></li>
                                                <li><a href="#" class="drop__link">Blazers</a></li>
                                                <li><a href="#" class="drop__link">Denim</a></li>
                                                <li><a href="#" class="drop__link">Leggings/Pants</a></li>
                                                <li><a href="#" class="drop__link">Skirts/Shorts</a></li>
                                                <li><a href="#" class="drop__link">Accessories</a></li>
                                            </ul>
                                        </div>
                                        <div class="drop__col">
                                            <h3 class="drop__h3">Women</h3>
                                            <ul class="drop__ul">
                                                <li><a href="#" class="drop__link">Dresses</a></li>
                                                <li><a href="#" class="drop__link">Tops</a></li>
                                                <li><a href="#" class="drop__link">Sweaters/Knits</a></li>
                                                <li><a href="#" class="drop__link">Jackets/Coats</a></li>
                                            </ul>
                                            <h3 class="drop__h3">Women</h3>
                                            <ul class="drop__ul">
                                                <li><a href="#" class="drop__link">Dresses</a></li>
                                                <li><a href="#" class="drop__link">Tops</a></li>
                                                <li><a href="#" class="drop__link">Sweaters/Knits</a></li>
                                            </ul>
                                        </div>
                                        <div class="drop__col">
                                            <h3 class="drop__h3">Women</h3>
                                            <ul class="drop__ul">
                                                <li><a href="#" class="drop__link">Dresses</a></li>
                                                <li><a href="#" class="drop__link">Tops</a></li>
                                                <li><a href="#" class="drop__link">Sweaters/Knits</a></li>
                                                <li><a href="#" class="drop__link">Jackets/Coats</a></li>
                                                <li class="drop__supersale">Super sale!</li>
                                            </ul>
                                        </div>
                                    </div>
                                </div>
                            </li>
                            <li class="menu__item menu__item_center">
                                <router-link :to="{ name: 'catalog' }" class="menu__item-link">Kids</router-link>
                                <div class="drop">
                                    <div class="drop__content">
                                        <div class="drop__col">
                                            <h3 class="drop__h3">Women</h3>
                                            <ul class="drop__ul">
                                                <li><a href="#" class="drop__link">Dresses</a></li>
                                                <li><a href="#" class="drop__link">Tops</a></li>
                                                <li><a href="#" class="drop__link">Sweaters/Knits</a></li>
                                                <li><a href="#" class="drop__link">Jackets/Coats</a></li>
                                                <li><a href="#" class="drop__link">Blazers</a></li>
                                                <li><a href="#" class="drop__link">Denim</a></li>
                                                <li><a href="#" class="drop__link">Leggings/Pants</a></li>
                                                <li><a href="#" class="drop__link">Skirts/Shorts</a></li>
                                                <li><a href="#" class="drop__link">Accessories</a></li>
                                            </ul>
                                        </div>
                                        <div class="drop__col">
                                            <h3 class="drop__h3">Women</h3>
                                            <ul class="drop__ul">
                                                <li><a href="#" class="drop__link">Dresses</a></li>
                                                <li><a href="#" class="drop__link">Tops</a></li>
                                                <li><a href="#" class="drop__link">Sweaters/Knits</a></li>
                                                <li><a href="#" class="drop__link">Jackets/Coats</a></li>
                                            </ul>
                                            <h3 class="drop__h3">Women</h3>
                                            <ul class="drop__ul">
                                                <li><a href="#" class="drop__link">Dresses</a></li>
                                                <li><a href="#" class="drop__link">Tops</a></li>
                                                <li><a href="#" class="drop__link">Sweaters/Knits</a></li>
                                            </ul>
                                        </div>
                                        <div class="drop__col">
                                            <h3 class="drop__h3">Women</h3>
                                            <ul class="drop__ul">
                                                <li><a href="#" class="drop__link">Dresses</a></li>
                                                <li><a href="#" class="drop__link">Tops</a></li>
                                                <li><a href="#" class="drop__link">Sweaters/Knits</a></li>
                                                <li><a href="#" class="drop__link">Jackets/Coats</a></li>
                                                <li class="drop__supersale">Super sale!</li>
                                            </ul>
                                        </div>
                                    </div>
                                </div>
                            </li>
                            <li class="menu__item">
                                <router-link :to="{ name: 'catalog' }" class="menu__item-link">Accoseriese</router-link>
                                <div class="drop">
                                    <div class="drop__content">
                                        <div class="drop__col">
                                            <h3 class="drop__h3">Women</h3>
                                            <ul class="drop__ul">
                                                <li><a href="#" class="drop__link">Dresses</a></li>
                                                <li><a href="#" class="drop__link">Tops</a></li>
                                                <li><a href="#" class="drop__link">Sweaters/Knits</a></li>
                                                <li><a href="#" class="drop__link">Jackets/Coats</a></li>
                                                <li><a href="#" class="drop__link">Blazers</a></li>
                                                <li><a href="#" class="drop__link">Denim</a></li>
                                                <li><a href="#" class="drop__link">Leggings/Pants</a></li>
                                                <li><a href="#" class="drop__link">Skirts/Shorts</a></li>
                                                <li><a href="#" class="drop__link">Accessories</a></li>
                                            </ul>
                                        </div>
                                        <div class="drop__col">
                                            <h3 class="drop__h3">Women</h3>
                                            <ul class="drop__ul">
                                                <li><a href="#" class="drop__link">Dresses</a></li>
                                                <li><a href="#" class="drop__link">Tops</a></li>
                                                <li><a href="#" class="drop__link">Sweaters/Knits</a></li>
                                                <li><a href="#" class="drop__link">Jackets/Coats</a></li>
                                            </ul>
                                            <h3 class="drop__h3">Women</h3>
                                            <ul class="drop__ul">
                                                <li><a href="#" class="drop__link">Dresses</a></li>
                                                <li><a href="#" class="drop__link">Tops</a></li>
                                                <li><a href="#" class="drop__link">Sweaters/Knits</a></li>
                                            </ul>
                                        </div>
                                        <div class="drop__col">
                                            <h3 class="drop__h3">Women</h3>
                                            <ul class="drop__ul">
                                                <li><a href="#" class="drop__link">Dresses</a></li>
                                                <li><a href="#" class="drop__link">Tops</a></li>
                                                <li><a href="#" class="drop__link">Sweaters/Knits</a></li>
                                                <li><a href="#" class="drop__link">Jackets/Coats</a></li>
                                                <li class="drop__supersale">Super sale!</li>
                                            </ul>
                                        </div>
                                    </div>
                                </div>
                            </li>
                            <li class="menu__item menu__item_last">
                                <router-link :to="{ name: 'catalog' }" class="menu__item-link">Featured</router-link>
                                <div class="drop">
                                    <div class="drop__content">
                                        <div class="drop__col">
                                            <h3 class="drop__h3">Women</h3>
                                            <ul class="drop__ul">
                                                <li><a href="#" class="drop__link">Dresses</a></li>
                                                <li><a href="#" class="drop__link">Tops</a></li>
                                                <li><a href="#" class="drop__link">Sweaters/Knits</a></li>
                                                <li><a href="#" class="drop__link">Jackets/Coats</a></li>
                                                <li><a href="#" class="drop__link">Blazers</a></li>
                                                <li><a href="#" class="drop__link">Denim</a></li>
                                                <li><a href="#" class="drop__link">Leggings/Pants</a></li>
                                                <li><a href="#" class="drop__link">Skirts/Shorts</a></li>
                                                <li><a href="#" class="drop__link">Accessories</a></li>
                                            </ul>
                                        </div>
                                        <div class="drop__col">
                                            <h3 class="drop__h3">Women</h3>
                                            <ul class="drop__ul">
                                                <li><a href="#" class="drop__link">Dresses</a></li>
                                                <li><a href="#" class="drop__link">Tops</a></li>
                                                <li><a href="#" class="drop__link">Sweaters/Knits</a></li>
                                                <li><a href="#" class="drop__link">Jackets/Coats</a></li>
                                            </ul>
                                            <h3 class="drop__h3">Women</h3>
                                            <ul class="drop__ul">
                                                <li><a href="#" class="drop__link">Dresses</a></li>
                                                <li><a href="#" class="drop__link">Tops</a></li>
                                                <li><a href="#" class="drop__link">Sweaters/Knits</a></li>
                                            </ul>
                                        </div>
                                        <div class="drop__col">
                                            <h3 class="drop__h3">Women</h3>
                                            <ul class="drop__ul">
                                                <li><a href="#" class="drop__link">Dresses</a></li>
                                                <li><a href="#" class="drop__link">Tops</a></li>
                                                <li><a href="#" class="drop__link">Sweaters/Knits</a></li>
                                                <li><a href="#" class="drop__link">Jackets/Coats</a></li>
                                                <li class="drop__supersale">Super sale!</li>
                                            </ul>
                                        </div>
                                    </div>
                                </div>
                            </li>
                            <li class="menu__item menu__item_last">
                                <router-link :to="{ name: 'catalog' }" class="menu__item-link">Hot Deals</router-link>
                                <div class="drop">
                                    <div class="drop__content">
                                        <div class="drop__col">
                                            <h3 class="drop__h3">Women</h3>
                                            <ul class="drop__ul">
                                                <li><a href="#" class="drop__link">Dresses</a></li>
                                                <li><a href="#" class="drop__link">Tops</a></li>
                                                <li><a href="#" class="drop__link">Sweaters/Knits</a></li>
                                                <li><a href="#" class="drop__link">Jackets/Coats</a></li>
                                                <li><a href="#" class="drop__link">Blazers</a></li>
                                                <li><a href="#" class="drop__link">Denim</a></li>
                                                <li><a href="#" class="drop__link">Leggings/Pants</a></li>
                                                <li><a href="#" class="drop__link">Skirts/Shorts</a></li>
                                                <li><a href="#" class="drop__link">Accessories</a></li>
                                            </ul>
                                        </div>
                                        <div class="drop__col">
                                            <h3 class="drop__h3">Women</h3>
                                            <ul class="drop__ul">
                                                <li><a href="#" class="drop__link">Dresses</a></li>
                                                <li><a href="#" class="drop__link">Tops</a></li>
                                                <li><a href="#" class="drop__link">Sweaters/Knits</a></li>
                                                <li><a href="#" class="drop__link">Jackets/Coats</a></li>
                                            </ul>
                                            <h3 class="drop__h3">Women</h3>
                                            <ul class="drop__ul">
                                                <li><a href="#" class="drop__link">Dresses</a></li>
                                                <li><a href="#" class="drop__link">Tops</a></li>
                                                <li><a href="#" class="drop__link">Sweaters/Knits</a></li>
                                            </ul>
                                        </div>
                                        <div class="drop__col">
                                            <h3 class="drop__h3">Women</h3>
                                            <ul class="drop__ul">
                                                <li><a href="#" class="drop__link">Dresses</a></li>
                                                <li><a href="#" class="drop__link">Tops</a></li>
                                                <li><a href="#" class="drop__link">Sweaters/Knits</a></li>
                                                <li><a href="#" class="drop__link">Jackets/Coats</a></li>
                                                <li class="drop__supersale">Super sale!</li>
                                            </ul>
                                        </div>
                                    </div>
                                </div>
                            </li>
                        </ul>
                    </div>
                </nav>
            </div>
        </div>
    </header>
    <AppBreadcrumbs v-if="!isShowBreadcrumbs" />
</template>

<script>
import AppBreadcrumbs from '@/components/views/AppBreadcrumbs.vue'

export default {
    name: 'AppHeader',
    components: {
        AppBreadcrumbs
    },

    computed: {
        isShowBreadcrumbs() {
            return this.$route.name == 'home' || this.$route.name == '404'
        }
    }

}
</script>

<style lang="less">
.header {

    &__top {
        box-shadow: 0px 0px 10px 0px rgba(0, 0, 0, 0.17);
        padding: 30px 0;
    }

    &__content {
        display: flex;
        justify-content: space-between;
        align-items: center;
    }

    &__browse {
        display: block;
        width: 87px;
        height: 38px;
        background-color: #cdcdcc;
        background-image: linear-gradient(180.0deg, #f9f9f9 0%, #f5f5f5 100%);
        border-right: 1px solid #e6e6e6;
        font-size: 14px;
        line-height: 36px;
        font-weight: 300;
        letter-spacing: 0.025em;
        color: @textColor;
        padding: 0 10px;
        box-sizing: border-box;

        .drop {
            right: auto;
        }

        &[open] .drop {
            display: flex;
            margin-top: 5px;
        }

        &[open] .header__summary::after {
            content: '\f0d7';
        }

        &:hover {
            cursor: pointer;
            background-image: linear-gradient(180.0deg, @siteColor 0%, @siteColor 100%);
        }
    }

    &__summary {

        &::after {
            content: '\f0da';
            font-family: FontAwesome;
            font-size: 14px;
            line-height: 32px;
            font-weight: 400;
            letter-spacing: 0.025em;
            color: #838383;
            margin-left: 8px;
        }
    }

    .logo {
        margin-right: 35px;
    }

    &__form {
        display: flex;
        align-items: center;
        position: relative;
        border: 1px solid #e6e6e6;
        ;
        border-radius: 3px 3px 3px 3px;
        margin-right: 15px;

        .search__input {
            width: 317px;
            height: 38px;
            padding: 0 16px;
            border: none;

            &::placeholder {
                font-size: 14px;
                line-height: 32px;
                font-weight: 300;
                letter-spacing: 0.025em;
                color: #a4a4a4;
            }

            &:focus {
                outline: none;
            }
        }

        .search__btn {
            display: block;
            height: 38px;
            border-left: 1px solid #e8e8e8;
            box-sizing: border-box;
            position: absolute;
            right: 3%;
            padding-left: 3%;
            transition: opacity 1s;

            .fa {
                font-size: 14px;
                line-height: 36px;
                font-weight: 400;
                letter-spacing: 0.025em;
                color: #a4a4a4;
            }

            &:hover {
                opacity: 0.7;
            }
        }
    }
}

.cart {
    display: flex;
    align-items: center;
    margin-left: auto;
    position: relative;

    &__img {
        display: block;
        margin-right: 25px;
        transition: transform 1s;

        &:hover {
            transform: rotate(360deg);
        }
    }

    &__btn {
        width: 130px;
        height: 38px;
        background-color: @siteColor;
        font-size: 15px;
        line-height: 36px;
        font-weight: 400;
        letter-spacing: 0.025em;
        color: #ffffff;
        padding-left: 19px;
        box-sizing: border-box;

        &[open] .cart-drop {
            display: block;
        }

        &[open] .cart__summary::after {
            content: '\f0d7';
        }

        .cart__summary::after {
            content: '\f0da';
            font-family: FontAwesome;
            font-size: 14px;
            line-height: 32px;
            font-weight: 400;
            letter-spacing: 0.025em;
            color: #ffffff;
            margin-left: 8px;
        }

        &:hover {
            cursor: pointer;
            outline: 3px solid @siteColor - @textColor;
        }

        &:active {
            outline: 3px solid #e6e6e6;
        }
    }

    &-drop {
        background-color: #ffffff;
        border-radius: 5px;
        padding: 5px 15px 20px;
        box-sizing: border-box;
        position: absolute;
        top: 60px;
        right: 0;
        z-index: 1;
        display: none;
        box-shadow: 0px 0px 10px 0px rgba(0, 0, 0, 0.17);


        &__link {
            margin-right: 15px;
        }

        &__item {
            width: 260px;
            display: flex;
            padding: 15px;
            box-sizing: border-box;
            border-bottom: 1px solid rgba(237, 237, 237, 0.74);
        }

        &__info {
            padding-top: 10px;
        }

        &__title {
            font-size: 12px;
            line-height: 1.2;
            font-weight: 700;
            text-transform: uppercase;
            color: @textColor;
            margin-bottom: 5px;
        }

        &__raiting {
            margin-bottom: 8px;
        }

        &__price {
            font-size: 14px;
            line-height: 1.2;
            font-weight: 400;
            text-transform: uppercase;
            color: #f16d7f;

            .cart-drop__span {
                font-size: 10px;
            }
        }

        &__action {
            align-self: center;
            margin-left: auto;
        }

        &__total {
            font-size: 16px;
            line-height: 1.2;
            font-weight: 700;
            text-transform: uppercase;
            color: @textColor;
            margin: 20px 0 30px 0;

            .cart-drop__span {
                margin-left: 118px;
            }
        }

        &__button {
            display: block;
            font-size: 14px;
            line-height: 1.2;
            font-weight: 700;
            text-transform: uppercase;
            color: #4a4a4a;
            border: 1px solid #eaeaea;
            text-align: center;
            padding: 16px;

            &:hover {
                color: #f16d7f;
                border: 1px solid #f16d7f;
            }

            &:nth-of-type(1) {
                margin-bottom: 10px;
            }
        }
    }
}

.nav {

    &__content {
        display: flex;
        justify-content: center;
    }

    &__btn {
        display: none;
        cursor: pointer;

        .fa {
            font-size: 24px;
        }
    }

    &__input {
        display: none;
    }
}

.menu {

    &__list {
        display: flex;
        justify-content: center;
        list-style-type: none;
    }

    &__item {
        padding: 18px 0;
        position: relative;

        &_last .drop {
            right: 0;
        }

        &_center .drop {
            left: -300px;
        }

        &:nth-of-type(5) .drop {
            right: -95px;
        }

        &-link {
            font-size: 14px;
            font-weight: 700;
            text-transform: uppercase;
            padding: 18px;
            color: @textColor;

            &:hover {
                border-bottom: 3px solid #ef5b70;
                padding-bottom: 15px;
            }

            &.active-link {
                border-bottom: 3px solid #ef5b70;
                padding-bottom: 15px;
            }

            &.exact-active-link {
                border-bottom: 3px solid #ef5b70;
                padding-bottom: 15px;
            }
        }
    }
}

@media screen and (min-width: 991.98px) {
    .menu {

        &__item {

            &:hover {

                .drop {
                    display: block;
                }

            }
        }
    }
}

@media screen and (max-width: 991.98px) {
    .header {

        &__top {
            padding: 15px 0;
        }

        &__content {
            flex-direction: column;
        }

        .logo {
            margin: 0 0 20px 0;
        }

        &__form {
            margin-bottom: 24px;
        }

        .account {
            margin: 0;
        }
    }

    .cart {
        margin-right: auto;

        &-drop {
            right: 50%;
            transform: translateX(50%);
        }
    }

    .menu {
        display: none;

        &__list {
            flex-direction: column;
            align-items: flex-end;
            width: 100%;
        }

        &__link {
            width: 100%;
            text-align: center;
        }

    }

    .nav {
        &__btn {
            display: flex;
            justify-content: flex-end;
        }

        &__input {
            &:checked+.menu {
                display: flex;
            }
        }
    }

    .drop {
        right: 0;

        &__content {
            grid-template-columns: 1fr;
            gap: 10px;
        }
    }
}

@media screen and (max-width: 767.98px) {
    .header {

        &__browse {
            width: 100%;
            border: 1px solid #e6e6e6;
            border-bottom: 0;

            .header__summary {
                display: flex;

                >span {
                    flex: 1;
                }
            }
        }

        &__form {
            flex-direction: column;
            align-items: flex-start;
            border: 0;
        }

        .search__input {
            width: 280px;
            border: 1px solid #e6e6e6;
        }

        .search__btn {
            bottom: 0;
        }
    }
}
</style>