<template>
    <AppPromo />
    <section class="gender">
        <div class="container">
            <div class="gender__content">
                <div class="left-side">
                    <div class="gender__item">
                        <a href="#" class="gender__link">
                            <span>Hot Deal</span> 
                            <span class="gender__link_span">For Men</span>
                        </a>
                        <img src="@/assets/img/gender_item_men.jpg"
                            alt="Мужчинам" class="gender__img">
                    </div>
                    <div class="gender__item"><a href="#" class="gender__link">
                        <span>Luxirous & trendy</span>
                        <span
                                class="gender__link_span">Accsesories
                            </span></a>
                        <img src="@/assets/img/gender_item_acceso.jpg" alt="Аксессуары" class="gender__img">
                    </div>
                </div>
                <div class="right-side">
                    <div class="gender__item">
                        <a href="#" class="gender__link">
                            <span>30% offer</span>
                            <span class="gender__link_span">
                                women</span>
                        </a>
                        <img src="@/assets/img/gender_item_women.jpg" alt="Женщинам" class="gender__img">
                    </div>
                    <div class="gender__item"><a href="#" class="gender__link">
                        <span>new arrivals</span>
                        <span
                                class="gender__link_span">FOR kids</span>
                        </a>
                        <img src="@/assets/img/gender_item_kids.jpg"
                            alt="Детям" class="gender__img">
                    </div>
                </div>
            </div>
        </div>
    </section>
    <section class="fetured">
        <div class="container">
            <div class="fetured__content">
                <h2 class="fetured__h2">Fetured Items</h2>
                <p class="fetured__subtitle">Shop for items based on what we featured in this week</p>
                <!-- <Products ref="products"></Products>
                <error ref="error"></error> -->
                <div class="fetured__box">
                    <div class="product" v-for="item in featuredItems" :key="item.id">
                        <router-link :to="{ name: 'product' }" class="product__link">
                            <img :src=getImgUrl(item.img) :alt="`{{ item.name }}`" class="product__img">
                        </router-link>
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
                        <button type="button" class="product__add">
                            <img src="@/assets/img/basket_small.png" alt="Добавить в корзину" class="product__basket">
                            Add toCart
                        </button>
                    </div>
<!--                     <div class="product">
                        <a href="single-page.html" class="product__link">
                            <img src="img/fetured-item2.jpg" alt="T-Short" class="product__img"></a>
                        <p class="product__name">Mango People T-shirt</p>
                        <div class="product__price"><span>$52.00</span>
                            <div class="product__rating">
                                <i class="fa fa-star product__stars" aria-hidden="true"></i>
                                <i class="fa fa-star product__stars" aria-hidden="true"></i>
                                <i class="fa fa-star product__stars" aria-hidden="true"></i>
                                <i class="fa fa-star product__stars" aria-hidden="true"></i>
                                <i class="fa fa-star product__stars" aria-hidden="true"></i>
                            </div>
                        </div>
                        <button type="button" class="product__add"><img src="img/basket_small.png"
                                alt="Добавить в корзину" class="product__basket">Add to
                            Cart</button>
                    </div>
                    <div class="product">
                        <a href="single-page.html" class="product__link">
                            <img src="img/fetured-item3.jpg" alt="T-Short" class="product__img"></a>
                        <p class="product__name">Mango People T-shirt</p>
                        <div class="product__price"><span>$52.00</span>
                            <div class="product__rating">
                                <i class="fa fa-star product__stars" aria-hidden="true"></i>
                                <i class="fa fa-star product__stars" aria-hidden="true"></i>
                                <i class="fa fa-star product__stars" aria-hidden="true"></i>
                                <i class="fa fa-star product__stars" aria-hidden="true"></i>
                                <i class="fa fa-star product__stars" aria-hidden="true"></i>
                            </div>
                        </div>
                        <button type="button" class="product__add"><img src="img/basket_small.png"
                                alt="Добавить в корзину" class="product__basket">Add to
                            Cart</button>
                    </div>
                    <div class="product">
                        <a href="single-page.html" class="product__link">
                            <img src="img/fetured-item4.jpg" alt="T-Short" class="product__img"></a>
                        <p class="product__name">Mango People T-shirt</p>
                        <div class="product__price"><span>$52.00</span>
                            <div class="product__rating">
                                <i class="fa fa-star product__stars" aria-hidden="true"></i>
                                <i class="fa fa-star product__stars" aria-hidden="true"></i>
                                <i class="fa fa-star product__stars" aria-hidden="true"></i>
                                <i class="fa fa-star product__stars" aria-hidden="true"></i>
                                <i class="fa fa-star product__stars" aria-hidden="true"></i>
                            </div>
                        </div>
                        <button type="button" class="product__add"><img src="img/basket_small.png"
                                alt="Добавить в корзину" class="product__basket">Add to
                            Cart</button>
                    </div>
                    <div class="product">
                        <a href="single-page.html" class="product__link">
                            <img src="img/fetured-item5.jpg" alt="T-Short" class="product__img"></a>
                        <p class="product__name">Mango People T-shirt</p>
                        <div class="product__price"><span>$52.00</span>
                            <div class="product__rating">
                                <i class="fa fa-star product__stars" aria-hidden="true"></i>
                                <i class="fa fa-star product__stars" aria-hidden="true"></i>
                                <i class="fa fa-star product__stars" aria-hidden="true"></i>
                                <i class="fa fa-star product__stars" aria-hidden="true"></i>
                                <i class="fa fa-star product__stars" aria-hidden="true"></i>
                            </div>
                        </div>
                        <button type="button" class="product__add"><img src="img/basket_small.png"
                                alt="Добавить в корзину" class="product__basket">Add to
                            Cart</button>
                    </div>
                    <div class="product">
                        <a href="single-page.html" class="product__link">
                            <img src="img/fetured-item6.jpg" alt="T-Short" class="product__img"></a>
                        <p class="product__name">Mango People T-shirt</p>
                        <div class="product__price"><span>$52.00</span>
                            <div class="product__rating">
                                <i class="fa fa-star product__stars" aria-hidden="true"></i>
                                <i class="fa fa-star product__stars" aria-hidden="true"></i>
                                <i class="fa fa-star product__stars" aria-hidden="true"></i>
                                <i class="fa fa-star product__stars" aria-hidden="true"></i>
                                <i class="fa fa-star product__stars" aria-hidden="true"></i>
                            </div>
                        </div>
                        <button type="button" class="product__add"><img src="img/basket_small.png"
                                alt="Добавить в корзину" class="product__basket">Add to
                            Cart</button>
                    </div>
                    <div class="product">
                        <a href="single-page.html" class="product__link">
                            <img src="img/fetured-item7.jpg" alt="T-Short" class="product__img"></a>
                        <p class="product__name">Mango People T-shirt</p>
                        <div class="product__price"><span>$52.00</span>
                            <div class="product__rating">
                                <i class="fa fa-star product__stars" aria-hidden="true"></i>
                                <i class="fa fa-star product__stars" aria-hidden="true"></i>
                                <i class="fa fa-star product__stars" aria-hidden="true"></i>
                                <i class="fa fa-star product__stars" aria-hidden="true"></i>
                                <i class="fa fa-star product__stars" aria-hidden="true"></i>
                            </div>
                        </div>
                        <button type="button" class="product__add"><img src="img/basket_small.png"
                                alt="Добавить в корзину" class="product__basket">Add to
                            Cart</button>
                    </div>
                    <div class="product">
                        <a href="single-page.html" class="product__link">
                            <img src="img/fetured-item8.jpg" alt="T-Short" class="product__img"></a>
                        <p class="product__name">Mango People T-shirt</p>
                        <div class="product__price"><span>$52.00</span>
                            <div class="product__rating">
                                <i class="fa fa-star product__stars" aria-hidden="true"></i>
                                <i class="fa fa-star product__stars" aria-hidden="true"></i>
                                <i class="fa fa-star product__stars" aria-hidden="true"></i>
                                <i class="fa fa-star product__stars" aria-hidden="true"></i>
                                <i class="fa fa-star product__stars" aria-hidden="true"></i>
                            </div>
                        </div>
                        <button type="button" class="product__add"><img src="img/basket_small.png"
                                alt="Добавить в корзину" class="product__basket">Add to
                            Cart</button>
                    </div> -->
                </div>
                <router-link :to="{ name: 'catalog' }" class="fetured__browse">Browse All Product</router-link>
            </div>
        </div>
    </section>
    <AppSale />
    <AppSubscribe />
</template>

<script>
import axios from "axios";
import AppPromo from '@/components/AppPromo.vue';
import AppSale from '@/components/AppSale.vue';
import AppSubscribe from '@/components/AppSubscribe.vue';

export default {
    name: 'AppHome',
    components: {
        AppPromo,
        AppSale,
        AppSubscribe
    },

    data() {
        return {
            featuredItems: []
        }
    },

    methods: {
        async getProducts() {
            try {
                const response = await axios.get("http://localhost:3080/products");
                this.featuredItems = response.data.filter(product => product.is_main == true);
            } catch (err) {
                console.log(err);
            }
        },
        getImgUrl(pic) {
            return require(`@/assets/img/${pic}`);
        },  
    },

    created() {
        this.getProducts();
    },
}
</script>

<style lang="less">
    .gender {
        padding: 5% 0;

        &__content {
            display: flex;
            justify-content: space-between;
        }

        &__item {
            position: relative;
            margin-bottom: 2.5%;
        }

        &__link {
            background-color: #ffffff;
            font-size: 18px;
            line-height: 1.2;
            font-weight: 900;
            text-transform: uppercase;
            letter-spacing: 0.025em;
            color: @textColor;
            box-sizing: border-box;
            padding: 16px;
            position: absolute;
            top: 26px;

            .gender__link_span {
                font-size: 30px;
                color: @siteColor;
                display: block;
            }

            &:hover {
                background-color: #edb4be;
            }

            &:active {
                opacity: 0.7;
            }
        }

        &__img {
            max-width: 100%;
        }

        .left-side {
            margin-right: 2%;
        }


    }

    .fetured {
        margin-bottom: 110px;

        &__content {
            display: flex;
            flex-direction: column;
        }

        &__h2 {
            font-size: 30px;
            font-weight: 700;
            letter-spacing: 0.025em;
            color: @textColor;
            text-align: center;
        }

        &__subtitle {
            font-size: 14px;
            font-weight: 400;
            line-height: 30px;
            letter-spacing: 0.025em;
            color: #9f9f9f;
            margin-bottom: 59px;
            text-align: center;
        }

        &__box {
            display: grid;
            grid-template-columns: repeat(4, 1fr);
            gap: 30px;
            margin-bottom: 40px;
        }

        &__browse {
            display: inline-block;
            margin: 0 auto;
            width: 212px;
            height: 48px;
            background-color: @siteColor;
            font-size: 16px;
            line-height: 48px;
            font-weight: 700;
            letter-spacing: 0.025em;
            color: #ffffff;
            text-align: center;

            &::after {
                content: "\f178";
                font-family: FontAwesome;
                font-size: 15px;
                line-height: 50px;
                font-weight: 400;
                letter-spacing: 0.025em;
                color: #ffffff;
                padding-left: 9px;
            }

            &:hover {
                outline: 1px solid @textColor;
            }

            &:active {
                opacity: 0.7;
            }
        }
    }

    @media screen and (max-width: 1200px) {

        .fetured {
            &__box {
                grid-template-columns: repeat(3, 1fr);
            }
        }
    }

    @media screen and (max-width: 991.98px) {
        .fetured {
            &__box {
                grid-template-columns: repeat(2, 1fr);
            }
        }
    }

    @media screen and (max-width: 767.98px) {

        .gender {

            &__content {
                flex-direction: column;
                align-items: center;
            }
        }

        .fetured {
            &__box {
                grid-template-columns: 1fr;
            }
        }
    }

    @media screen and (max-width: 575.98px) {

        .gender {
            .left-side {
                .gender__item {
                    &:nth-child(2) .gender__link {
                        width: 120px;
                        height: 60px;
                        background-color: #ffffff;
                    }
                }
            }

            .gender__item {
                .gender__link {
                    width: 95px;
                    height: 50px;
                    font-size: 9px;
                    padding: 10px;

                    .gender__link_span {
                        font-size: 16px;
                        color: @siteColor;
                    }
                }
            }
        }
    }
</style>