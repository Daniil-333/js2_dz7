<template>
    <main class="main-single-page">
        <div class="single-page-slider">
            <button type="button" class="single-page-slider-link _left"><i class="fa fa-angle-left"
                    aria-hidden="true"></i></button>
            <img src="@/assets/img/s-p-slider.jpg" alt="Фото1" class="single-page-slider-img">
            <button type="button" class="single-page-slider-link _right"><i class="fa fa-angle-right"
                    aria-hidden="true"></i></button>
        </div>
        <div class="confirm-order">
            <div class="container">
                <div class="confirm-order__content">
                    <div class="confirm-order-info">
                        <p class="confirm-order-collection">Women Collection</p>
                        <h2 class="confirm-order-h2">Moschino Cheap And Chic</h2>
                        <p class="confirm-order-description">Compellingly actualize fully researched processes before
                            proactive
                            outsourcing. Progressively
                            syndicate collaborative architectures before cutting-edge services. Completely visualize
                            parallel
                            core
                            competencies rather than exceptional portals.</p>
                        <div class="property-items">
                            <p class="property-item">material: <span class="value-item">cotton</span>
                            </p>
                            <p class="property-item">designer: <span class="value-item">binburhan</span></p>
                        </div>
                        <p class="confirm-order-price">$561</p>
                    </div>
                    <form action="#" class="confirm-order-edit">
                        <div class="confirm-order__inputs">
                            <div class="confirm-order-color">
                                <p class="confirm-order-title">Choose color</p>
                                <select class="confirm-order-input">
                                    <option value="red" class="confirm-order-option">Red</option>
                                </select>
                            </div>
                            <div class="confirm-order-size">
                                <p class="confirm-order-title">Choose Size</p>
                                <select class="confirm-order-input">
                                    <option value="xxl" class="confirm-order-option">XXL</option>
                                </select>
                            </div>
                            <div class="confirm-order-quantity">
                                <p class="confirm-order-title">Quantity</p>
                                <input type="number" value="2" class="confirm-order-input no-arrow">
                            </div>
                        </div>
                        <button type="submit" class="confirm-order-buy">Add to Cart</button>
                    </form>
                </div>
            </div>
        </div>
        <div class="singleProducts">
            <h4 class="singleProducts-h4">you may like also</h4>
            <div class="singleProducts__items container">
                <div class="product" v-for="item in products" :key="item.id">
                    <a href="#" class="product__link">
                        <img :src=getImgUrl(item.img) :alt="item.name" class="product__img">
                    </a>
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
        </div>
    </main>
    <AppSubscribe />
</template>

<script>
import axios from "axios";
import AppSubscribe from '@/components/AppSubscribe.vue';

export default {
    name: 'AppProduct',
    components: {
        AppSubscribe
    },
    inject: ['getImgUrl', 'host'],

    data() {
        return {
            products: []
        }
    },

    methods: {
        async getProducts() {
            try {
                const response = await axios.get(`${this.host}/products`);
                this.products = response.data.filter(product => product.is_also == true);
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
.main-single-page {

    .single-page-slider {
        position: relative;
        display: flex;
        justify-content: center;
        align-items: center;
        background-color: #f7f7f7;
        border: 1px solid #eaeaea;
        padding-bottom: 30px;
    }

    .single-page-slider-link {
        position: absolute;
        top: 50%;
        transform: translateY(-50% - 30px);
        width: 47px;
        display: flex;
        justify-content: center;
        background-color: rgba(42, 42, 42, 0.14);
        cursor: pointer;

        &:hover {
            opacity: 0.7;
        }

        .fa {
            font-size: 24px;
            line-height: 24px;
            font-weight: 400;
            color: #ffffff;
            padding: 11px 0;
        }

        &._left {
            left: 0;
        }

        &._right {
            right: 0;
        }
    }

    .single-page-slider-img {
        width: 100%;
        max-width: 597px;

    }

    .confirm-order {

        &__content {
            display: flex;
            flex-direction: column;
            align-items: center;
            border: 1px solid #eaeaea;
            background-color: #ffffff;
            padding: 70px 15px;
            transform: translateY(-60px);
        }

        &-info {
            max-width: 640px;
            display: flex;
            flex-direction: column;
            align-items: center;
            border-bottom: 1px solid #eaeaea;
            padding-bottom: 45px;
            margin-bottom: 60px;
        }

        &-collection {
            position: relative;
            font-size: 14px;
            line-height: 24px;
            font-weight: 700;
            color: @siteColor;
            text-transform: uppercase;
            text-align: center;
            border-bottom: 1px solid #eaeaea;
            padding-bottom: 10px;
            margin-bottom: 15px;

            &::before {
                content: "";
                position: absolute;
                left: 27%;
                top: 100%;
                width: 63px;
                height: 3px;
                background-color: #ef5b70;
            }
        }

        &-h2 {
            font-size: 18px;
            line-height: 24px;
            font-weight: 900;
            text-transform: uppercase;
            text-align: center;
            color: #4d4d4d;
            margin-bottom: 65px;
        }

        &-description {
            font-size: 14px;
            line-height: 24px;
            font-weight: 300;
            color: #5e5e5e;
            text-align: center;
            padding-bottom: 25px;
        }

        .property-items {
            display: grid;
            grid-template-columns: repeat(2, auto);
            gap: 40px;
            margin-bottom: 35px;
        }

        .property-item {
            text-transform: uppercase;
            font-size: 14px;
            line-height: 24px;
            font-weight: 700;
            color: #b9b9b9;

            .value-item {
                text-transform: uppercase;
                color: #2f2f2f;
            }
        }

        &-price {
            font-size: 24px;
            line-height: 24px;
            font-weight: 700;
            color: #ef5b70;
        }

        &-edit {
            max-width: 540px;
        }

        &__inputs {
            display: grid;
            grid-template-columns: repeat(3, 1fr);
            gap: 30px;
        }

        &-title {
            font-size: 14px;
            line-height: 24px;
            font-weight: 700;
            color: #2f2f2f;
            text-transform: uppercase;
            padding-bottom: 15px;
        }

        &-input {
            width: 144px;
            height: 35px;
            background-color: #ffffff;
            border: 1px solid #eaeaea;
            font-size: 13px;
            line-height: 24px;
            font-weight: 400;
            color: #bcbcbc;
            padding: 10px 15px;
            cursor: pointer;
            transition: border 1s;

            &:hover {
                border: 1px solid #000;
            }
        }

        &-color {}

        &-option {
            &::before {
                content: "";
                display: inline-block;
                width: 12px;
                height: 12px;
                background-color: #ef5b70;
            }
        }

        &-buy {
            max-width: 540px;
            width: 100%;
            background: url("@/assets/img/basket_red.png") 36% 46% no-repeat #ffffff;
            border: 1px solid #ef5b70;
            margin-top: 25px;
            font-size: 16px;
            line-height: 1.2;
            font-weight: 700;
            color: #ef5b70;
            padding: 15px;
            cursor: pointer;
        }

    }

    .singleProducts {
        padding-bottom: 30px;

        &-h4 {
            font-size: 24px;
            line-height: 20px;
            font-weight: 900;
            text-transform: uppercase;
            color: #4d4d4d;
            text-align: center;
            margin-bottom: 70px;
        }

        &__items {
            display: grid;
            grid-template-columns: repeat(4, 1fr);
            gap: 30px;
        }
    }
}

@media screen and (max-width: 1200px) {

    .main-single-page {

        .singleProducts {

            &__items {
                gap: 20px;
            }
        }
    }
}

@media screen and (max-width: 991.98px) {

    .main-single-page {

        .singleProducts {

            &__items {
                grid-template-columns: repeat(3, 1fr);
            }
        }
    }
}

@media screen and (max-width: 767.98px) {

    .main-single-page {

        .singleProducts {

            &__items {
                grid-template-columns: 1fr;
            }
        }

        .confirm-order {

            .property-items {
                grid-template-columns: 1fr;
                gap: 20px;
            }

            &__inputs {
                width: 240px;
                grid-template-columns: 1fr;
                gap: 20px;
            }

            &-buy {
                background: url("@/assets/img/basket_red.png") 15% 46% no-repeat #ffffff;
            }
        }
    }
}
</style>