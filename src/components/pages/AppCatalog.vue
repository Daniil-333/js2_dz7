<template>
    <main class="main-product">
        <div class="container">
            <div class="main-product__content">
                <div class="filter-aside">
                    <div class="filter-aside-item">
                        <input type="checkbox" id="filter-aside-item-1" class="filter-aside-input" checked>
                        <label for="filter-aside-item-1" class="filter-aside-label">Category</label>
                        <nav class="filter-aside-content">
                            <a href="#" class="filter-aside-link">Accessories</a>
                            <a href="#" class="filter-aside-link">Bags</a>
                            <a href="#" class="filter-aside-link">Denim</a>
                            <a href="#" class="filter-aside-link">Hoodies & Sweatshirts</a>
                            <a href="#" class="filter-aside-link">Jackets & Coats</a>
                            <a href="#" class="filter-aside-link">Pants</a>
                            <a href="#" class="filter-aside-link">Polos</a>
                            <a href="#" class="filter-aside-link">Shirts</a>
                            <a href="#" class="filter-aside-link">Shoes</a>
                            <a href="#" class="filter-aside-link">Shorts</a>
                            <a href="#" class="filter-aside-link">Sweaters & Knits</a>
                            <a href="#" class="filter-aside-link">T-Shirts</a>
                            <a href="#" class="filter-aside-link">Tanks</a>
                        </nav>
                    </div>
                    <div class="filter-aside-item">
                        <input type="checkbox" id="filter-aside-item-2" class="filter-aside-input">
                        <label for="filter-aside-item-2" class="filter-aside-label">Brand</label>
                        <nav class="filter-aside-content">
                            <a href="#" class="filter-aside-link"></a>
                        </nav>
                    </div>
                    <div class="filter-aside-item">
                        <input type="checkbox" id="filter-aside-item-3" class="filter-aside-input">
                        <label for="filter-aside-item-3" class="filter-aside-label">Designer</label>
                        <nav class="filter-aside-content">
                            <a href="#" class="filter-aside-link"></a>
                        </nav>
                    </div>
                </div>
                <div class="products">
                    <div class="filters-center">
                        <form action="#" class="filters-center__form filters-center__form-trending">
                            <h4 class="filters-center-h4">Trending now</h4>
                            <input type="radio" name="trend" id="trend-1" class="filters-center__form-input"><label
                                for="trend-1" class="trending-label">Bohemian
                            </label><span class="board">|</span>
                            <input type="radio" name="trend" id="trend-2" class="filters-center__form-input"><label
                                for="trend-2" class="trending-label">Floral</label><span class="board">|</span>
                            <input type="radio" name="trend" id="trend-3" class="filters-center__form-input"><label
                                for="trend-3" class="trending-label">Lace</label>
                            <input type="radio" name="trend" id="trend-4" class="filters-center__form-input"><label
                                for="trend-4" class="trending-label">Floral</label><span class="board">|</span>
                            <input type="radio" name="trend" id="trend-5" class="filters-center__form-input"><label
                                for="trend-5" class="trending-label">Lace</label><span class="board">|</span>
                            <input type="radio" name="trend" id="trend-6" class="filters-center__form-input"><label
                                for="trend-6" class="trending-label">Bohemian</label>
                        </form>
                        <form action="#" class="filters-center__form filters-center__form-size">
                            <h4 class="filters-center-h4">Size</h4>
                            <div class="size-items-wrapper">
                                <div class="size-vertical-wrapper">
                                    <label class="size-item"><input type="checkbox"
                                            class="filters-center__form-input"><span
                                            class="checkmark"></span>XXS</label>
                                    <label class="size-item"><input type="checkbox"
                                            class="filters-center__form-input"><span class="checkmark"></span>L</label>
                                </div>
                                <div class="size-vertical-wrapper">
                                    <label class="size-item"><input type="checkbox"
                                            class="filters-center__form-input"><span class="checkmark"></span>XS</label>
                                    <label class="size-item"><input type="checkbox"
                                            class="filters-center__form-input"><span class="checkmark"></span>XL</label>
                                </div>
                                <div class="size-vertical-wrapper">
                                    <label class="size-item"><input type="checkbox"
                                            class="filters-center__form-input"><span class="checkmark"></span>S</label>
                                    <label class="size-item"><input type="checkbox"
                                            class="filters-center__form-input"><span
                                            class="checkmark"></span>XXL</label>
                                </div>
                                <div class="size-vertical-wrapper">
                                    <label class="size-item"><input type="checkbox"
                                            class="filters-center__form-input"><span class="checkmark"></span>M</label>
                                </div>
                            </div>
                        </form>
                        <form action="#" class="filters-center__form filters-center__form-price">
                            <h4 class="filters-center-h4">Price</h4>
                            <div class="price-range">
                                <div class="price-range__value"></div>
                            </div>
                            <div class="all-price">
                                <span class="low-price">52$</span><span class="high-price">400$</span>
                            </div>
                        </form>
                    </div>
                    <div class="sorting">
                        <div class="sort">
                            <p class="sort-name">Sort By</p>
                            <select class="sort-select">
                                <!--name="" id=""-->
                                <option value="Name">Name</option>
                            </select>
                        </div>
                        <div class="sort">
                            <p class="sort-name">Show</p>
                            <select class="sort-select" name="" id="">
                                <option value="9">09</option>
                            </select>
                        </div>
                    </div>
                    <div class="main-product__items">
                        <div class="product" v-for="item in products" :key="item.id">
                            <a href="single-page.html" class="product__link">
                                <img :src=getImgUrl(item.img) :alt=item.name class="product__img"></a>
                            <p class="product__name">{{ item.name }}</p>
                            <div class="product__price"><span>${{ item.price }}</span>
                                <div class="product__rating">
                                    <i class="fa fa-star product__stars" aria-hidden="true"></i>
                                    <i class="fa fa-star product__stars" aria-hidden="true"></i>
                                    <i class="fa fa-star product__stars" aria-hidden="true"></i>
                                    <i class="fa fa-star product__stars" aria-hidden="true"></i>
                                    <i class="fa fa-star product__stars" aria-hidden="true"></i>
                                </div>
                            </div>
                            <button type="button" class="product__add"><img src="@/assets/img/basket_small.png"
                                    alt="Добавить в корзину" class="product__basket">Add to Cart</button>
                        </div>
                    </div>
                    <div class="fetured-items-nav">
                        <div class="fetured-items-links">
                            <a href="#" class="fetured-items-nav-link"><i class="fa fa-angle-left"
                                    aria-hidden="true"></i></a>
                            <a href="#" class="fetured-items-nav-link _active">1</a>
                            <a href="#" class="fetured-items-nav-link">2</a>
                            <a href="#" class="fetured-items-nav-link">3</a>
                            <a href="#" class="fetured-items-nav-link">4</a>
                            <a href="#" class="fetured-items-nav-link">5</a>
                            <a href="#" class="fetured-items-nav-link">6</a>
                            <a href="#" class="fetured-items-nav-link">20</a>
                            <a href="#" class="fetured-items-nav-link"><i class="fa fa-angle-right"
                                    aria-hidden="true"></i></a>
                        </div>
                        <button class="view-all">View All</button>
                    </div>
                </div>
            </div>
        </div>
    </main>
    <AppAdvantages />
    <AppSubscribe />
</template>

<script>
import axios from "axios";
import AppAdvantages from '@/components/AppAdvantages.vue';
import AppSubscribe from '@/components/AppSubscribe.vue';


export default {
    name: 'AppCatalog',
    props: {},
    components: {
        AppAdvantages,
        AppSubscribe
    },
    inject: ['getImgUrl', 'host'],

    data() {
        return {
            products: [],
        }
    },

    methods: {
        async getProducts() {
            try {
                const response = await axios.get(`${this.host}/products`);
                this.products = response.data.filter(product => product.id >= 12 && product.id <= 17);
            } catch (err) {
                console.log(err);
            }
        },
    },

    created() {
        this.getProducts();
    },

}
</script>

<style lang="less">
.main-product {

    &__content {
        position: relative;
        display: grid;
        grid-template-columns: 240px 1fr;
        gap: 50px;
        padding: 60px 0;
    }

    &__items {
        display: grid;
        grid-template-columns: repeat(3, 1fr);
        gap: 30px;
        margin-bottom: 30px;
    }

    .filter-aside {

        &-item {}

        &-input {
            display: none;

            &:checked+label {
                color: #ef5b70;
            }

            &:checked+label:after {
                content: "\f0d8";
                font-family: FontAwesome;
                color: #ef5b70;
            }

            &:checked~.filter-aside-content {
                display: block;
            }
        }

        &-label {
            display: flex;
            font-size: 14px;
            line-height: 20px;
            font-weight: 700;
            text-transform: uppercase;
            color: #6f6e6e;
            border-left: 5px solid #ef5b70;
            border-bottom: 1px solid #ebebeb;
            cursor: pointer;
            padding: 5px;
            box-sizing: border-box;

            &::after {
                content: "\f0d7";
                font-family: FontAwesome;
                font-size: 14px;
                line-height: 19px;
                font-weight: 400;
                text-transform: uppercase;
                color: #6f6e6e;
                margin-left: auto;
            }
        }

        &-content {
            display: none;
            font-size: 14px;
            line-height: 33px;
            font-weight: 400;
            color: #6f6e6e;
            padding: 22px 17px;

            .filter-aside-link {
                display: block;
                color: #6f6e6e;

                &:hover {
                    color: #ef5b70;
                }
            }
        }
    }

    .filters-center {
        display: grid;
        grid-template-columns: repeat(3, 1fr);
        gap: 40px;
        margin-bottom: 40px;

        .filters-center__form {}

        .filters-center-h4 {
            font-size: 14px;
            line-height: 20px;
            font-weight: 700;
            text-transform: uppercase;
            color: #6f6e6e;
            margin-bottom: 5%;
        }

        .filters-center__form-trending {
            width: 180px;

            .filters-center__form-input {
                display: none;

                &:checked+label {
                    background-color: @siteColor;
                }
            }

            .trending-label {
                font-size: 14px;
                line-height: 26px;
                font-weight: 400;
                color: #6f6e6e;
                cursor: pointer;
            }

            .board {
                color: #dfdfdf;
                padding: 0 4%;
            }
        }

        .filters-center__form-size {
            width: 235px;

            .size-items-wrapper {
                display: flex;
                justify-content: space-between;

                .size-vertical-wrapper {
                    display: flex;
                    flex-direction: column;

                    .size-item:nth-child(1) {
                        margin-bottom: 6px;
                    }

                    .size-item {
                        font-family: 'Open Sans', sans-serif;
                        font-size: 14px;
                        line-height: 20px;
                        font-weight: 400;
                        text-transform: uppercase;
                        color: #6f6e6e;
                        display: flex;
                        align-items: center;
                        position: relative;

                        &:hover {
                            cursor: pointer;
                        }

                        .filters-center__form-input {
                            display: none;

                            &:checked+.checkmark {
                                background-color: @siteColor;
                            }
                        }

                        .checkmark {
                            display: inline-block;
                            width: 13px;
                            height: 13px;
                            background-color: #ffffff;
                            border: 1px solid #ebebeb;
                            margin-right: 10px;
                        }
                    }
                }
            }
        }

        .filters-center__form-price {
            width: 260px;
        }

        .price-range {
            height: 6px;
            background-color: #f0f0f0;
            border-radius: 3px;
            margin-bottom: 6%;

            .price-range__value {
                display: flex;
                align-items: center;
                width: 124px;
                height: 6px;
                background-color: @siteColor;
                margin-left: 25px;

                &::before {
                    content: "";
                    display: inline-block;
                    width: 14px;
                    height: 14px;
                    background-color: @siteColor;
                    border-radius: 50%;
                }

                &::after {
                    content: "";
                    display: inline-block;
                    width: 14px;
                    height: 14px;
                    background-color: @siteColor;
                    border-radius: 50%;
                    margin-left: auto;
                }
            }
        }

        .all-price {
            display: flex;
            justify-content: space-between;

            .low-price,
            .high-price {
                font-family: 'Open Sans', sans-serif;
                font-size: 14px;
                line-height: 26px;
                font-weight: 400;
                color: #6f6e6e;
            }
        }
    }

    .sorting {
        background-color: #f3f3f3;
        padding: 10px 10px;
        display: flex;
        margin-bottom: 50px;

        .sort:nth-child(1) {
            min-width: 150px;
            margin-right: 10px;
        }

        .sort:nth-child(2) {
            min-width: 120px;
        }

        .sort {
            background-color: #ffffff;
            border: 1px solid #ebebeb;

            .sort-name {
                display: inline-block;
                font-size: 14px;
                line-height: 26px;
                font-weight: 400;
                color: #6f6e6e;
                padding: 0 7%;
                border-right: 1px solid #ebebeb;
            }

            .sort-select {
                border: none;
                font-size: 14px;
                line-height: 26px;
                font-weight: 400;
                color: #6f6e6e;
                padding-left: 2%;
            }
        }
    }

    .fetured-items-nav {
        display: flex;
        justify-content: space-between;
    }

    .fetured-items-links {
        background-color: #ffffff;
        display: flex;
        flex-wrap: wrap;
        border: 1px solid #ebebeb;
        border-radius: 3px;
        padding: 10px;
    }

    .fetured-items-nav-link {
        display: inline-block;
        font-size: 16px;
        line-height: 26px;
        font-weight: 300;
        color: #c4c4c4;
        padding: 0 10px;

        &:hover {
            color: #ef5b70;
        }

        &._active {
            color: #ef5b70;
        }

        .fa-angle-right {
            font-size: 20px;
            line-height: 26px;
            font-weight: 400;
            color: #ef5b70;
        }
    }

    .view-all {
        width: 150px;
        min-height: 45px;
        background-color: #ffffff;
        border: 1px solid #ef5b70;
        border-radius: 3px;
        font-size: 16px;
        line-height: 26px;
        font-weight: 300;
        color: #ef5b70;

        &:hover {
            cursor: pointer;
            font-weight: 600;
        }

        &:active {
            opacity: 0.8;
            border: 2px solid #ef5b70;
            border-radius: 3px;
        }
    }
}

@media screen and (max-width: 1200px) {
    .main-product {

        .filters-center {
            grid-template-columns: 1fr;
        }
    }
}

@media screen and (max-width: 991.98px) {
    .main-product {

        &__content {
            grid-template-columns: 1fr;
            padding: 40px 0;
        }

        .filter-aside {
            position: absolute;
            right: 15px;
            top: 40px;
            z-index: 1;
            width: 240px;
            background: #ffffff;
            box-shadow: 0 0 10px 3px rgba(30, 30, 30, .2);
        }

        &__items {
            grid-template-columns: repeat(2, 1fr);
        }
    }
}

@media screen and (max-width: 767.98px) {
    .main-product {

        .sorting {
            flex-direction: column;

            .sort {
                &:nth-child(1) {
                    margin: 0 0 16px 0;
                }
            }
        }

        &__items {
            grid-template-columns: 1fr;
        }

        .fetured-items-nav {
            flex-direction: column;
            align-items: flex-start;
        }

        .fetured-items-links {
            margin-bottom: 20px;
        }

        .view-all {
            align-self: center;
        }
    }
}
</style>