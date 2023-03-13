<template>
    <main class="shop-cart">
        <div class="container">
            <div class="shop-cart__titles">
                <p class="shop-cart__title">Product details</p>
                <p class="shop-cart__title">Unit price</p>
                <p class="shop-cart__title">Quantity</p>
                <p class="shop-cart__title">Shipping</p>
                <p class="shop-cart__title">Subtotal</p>
                <p class="shop-cart__title">Action</p>
            </div>
            <div class="shop-cart__item">
                <div class="product-details">
                    <a href="single-page.html" class="product-details__link">
                        <img src="@/assets/img/product1.jpg" alt="T-short" class="product-details__img"></a>
                    <div class="product-info">
                        <h6 class="product-info__title">Mango People T-Shirt</h6>
                        <div class="product__raiting raiting">
                            <i class="fa fa-star" aria-hidden="true"></i>
                            <i class="fa fa-star" aria-hidden="true"></i>
                            <i class="fa fa-star" aria-hidden="true"></i>
                            <i class="fa fa-star" aria-hidden="true"></i>
                            <i class="fa fa-star-half-o" aria-hidden="true"></i>
                        </div>
                        <p class="product-info__property">Color: <span class="product-info__span">Red</span></p>
                        <p class="product-info__property">Size: <span class="product-info__span">XII</span></p>
                    </div>
                </div>
                <div class="productDetailsMob">
                    <div class="productDetailsMob__row">
                        <p class="productDetailsMob__param">Unit price</p>
                        <p class="productDetailsMob__value">$150</p>
                    </div>
                    <div class="productDetailsMob__row">
                        <p class="productDetailsMob__param">Quantity</p>
                        <div class="productDetailsMob__value">
                            <input type="number" value="2" min="0" max="1000" name="countProduct" class="productDetailsMob__input">
                        </div>
                    </div>
                    <div class="productDetailsMob__row">
                        <p class="productDetailsMob__param">Shipping</p>
                        <p class="productDetailsMob__value">Free</p>
                    </div>
                    <div class="productDetailsMob__row">
                        <p class="productDetailsMob__param">Subtotal</p>
                        <p class="productDetailsMob__value">$300</p>
                    </div>
                </div>
                <p class="product-parameters unit-price">$150</p>
                <div class="product-parameters quantity">
                    <input type="number" value="2" min="0" max="1000" name="countProduct" class="product-parameters__input">
                </div>
                <p class="product-parameters shipping">Free</p>
                <p class="product-parameters subtotal">$300</p>
                <button type="button" class="product-parameters delete">
                    <i class="fa fa-times-circle cancel" aria-hidden="true"></i>
                </button>
            </div>
<!--             <div class="shop-cart__item">
                <div class="product-details">
                    <a href="single-page.html" class="product-details__link">
                        <img src="img/product2.jpg" alt="T-short" class="product-details__img"></a>
                    <div class="product-info">
                        <h6 class="product-info__title">Mango People T-Shirt</h6>
                        <div class="product__raiting">
                            <i class="fa fa-star" aria-hidden="true"></i>
                            <i class="fa fa-star" aria-hidden="true"></i>
                            <i class="fa fa-star" aria-hidden="true"></i>
                            <i class="fa fa-star" aria-hidden="true"></i>
                            <i class="fa fa-star-half-o" aria-hidden="true"></i>
                        </div>
                        <p class="product-info__property">Color: <span class="product-info__span">Red</span></p>
                        <p class="product-info__property">Size: <span class="product-info__span">XII</span></p>
                    </div>
                </div>
                <div class="productDetailsMob">
                    <div class="productDetailsMob__row">
                        <p class="productDetailsMob__param">Unit price</p>
                        <p class="productDetailsMob__value">$150</p>
                    </div>
                    <div class="productDetailsMob__row">
                        <p class="productDetailsMob__param">Quantity</p>
                        <div class="productDetailsMob__value">
                            <input type="number" value="2" min="0" max="1000" name="countProduct" class="productDetailsMob__input">
                        </div>
                    </div>
                    <div class="productDetailsMob__row">
                        <p class="productDetailsMob__param">Shipping</p>
                        <p class="productDetailsMob__value">Free</p>
                    </div>
                    <div class="productDetailsMob__row">
                        <p class="productDetailsMob__param">Subtotal</p>
                        <p class="productDetailsMob__value">$300</p>
                    </div>
                </div>
                <p class="product-parameters unit-price">$150</p>
                <p class="product-parameters quantity"><input type="number" value="2" min="0" max="1000"
                                                                class="product-parameters__input"></p>
                <p class="product-parameters shipping">Free</p>
                <p class="product-parameters subtotal">$300</p>
                <button type="button" class="product-parameters delete"><i class="fa fa-times-circle" aria-hidden="true"></i></button>
            </div>
            <div class="shop-cart__item">
                <div class="product-details">
                    <a href="single-page.html" class="product-details__link">
                        <img src="img/product5.jpg" alt="T-short" class="product-details__img"></a>
                    <div class="product-info">
                        <h6 class="product-info__title">Mango People T-Shirt</h6>
                        <div class="product__raiting">
                            <i class="fa fa-star" aria-hidden="true"></i>
                            <i class="fa fa-star" aria-hidden="true"></i>
                            <i class="fa fa-star" aria-hidden="true"></i>
                            <i class="fa fa-star" aria-hidden="true"></i>
                            <i class="fa fa-star-half-o" aria-hidden="true"></i>
                        </div>
                        <p class="product-info__property">Color: <span class="product-info__span">Red</span></p>
                        <p class="product-info__property">Size: <span class="product-info__span">XII</span></p>
                    </div>
                </div>
                <div class="productDetailsMob">
                    <div class="productDetailsMob__row">
                        <p class="productDetailsMob__param">Unit price</p>
                        <p class="productDetailsMob__value">$150</p>
                    </div>
                    <div class="productDetailsMob__row">
                        <p class="productDetailsMob__param">Quantity</p>
                        <div class="productDetailsMob__value">
                            <input type="number" value="2" min="0" max="1000" name="countProduct" class="productDetailsMob__input">
                        </div>
                    </div>
                    <div class="productDetailsMob__row">
                        <p class="productDetailsMob__param">Shipping</p>
                        <p class="productDetailsMob__value">Free</p>
                    </div>
                    <div class="productDetailsMob__row">
                        <p class="productDetailsMob__param">Subtotal</p>
                        <p class="productDetailsMob__value">$300</p>
                    </div>
                </div>
                <p class="product-parameters unit-price">$150</p>
                <p class="product-parameters quantity"><input type="number" value="2" min="0" max="1000"
                                                                class="product-parameters__input"></p>
                <p class="product-parameters shipping">Free</p>
                <p class="product-parameters subtotal">$300</p>
                <button type="button" class="product-parameters delete"><i class="fa fa-times-circle" aria-hidden="true"></i></button>
            </div> -->
            <div class="shop-cart__buttons">
                <button type="button" class="shop-cart__button">Clear shopping cart</button>
                <button type="button" class="shop-cart__button">Continue shopping</button>
            </div>
            <div class="shop-cart__forms">
                <div class="shop-cart-form">
                    <p class="shop-cart-form__title">Shipping Adress</p>
                    <select class="shop-cart-form__input">
                        <option value="Bangladesh">Bangladesh</option>
                        <option value="#">Country2</option>
                        <option value="#">Country3</option>
                    </select>
                    <input type="text" class="shop-cart-form__input" placeholder="State">
                    <input type="number" min="000000" max="999999" class="shop-cart-form__input no-arrow"
                        placeholder="Postcode / Zip">
                    <button class="shop-cart-form__quote">get a quote</button>
                </div>
                <div class="shop-cart-form">
                    <p class="shop-cart-form__title">coupon discount</p>
                    <p class="shop-cart-form__text">Enter your coupon code if you have one</p>
                    <input type="text" class="shop-cart-form__input" placeholder="State">
                    <button class="shop-cart-form__coupon">Apply coupon</button>
                </div>
                <div class="shop-cart-final">
                    <div class="shop-cart-final__sum">
                        <p class="shop-cart-final__sub">Sub total <span class="shop-cart-final__sub-span">$900</span></p>
                        <p class="shop-cart-final__grand">Grand Total <span class="shop-cart-final__grand-span">$900</span></p>
                    </div>
                    <router-link :to="{ name: 'checkout' }" class="shop-cart-final__buy">proceed to checkout</router-link>
                    <!-- <button class="shop-cart-final__buy">proceed to checkout</button> -->
                </div>
            </div>
        </div>
    </main>
    <AppSubscribe />
</template>

<script>
import AppSubscribe from '@/components/views/AppSubscribe.vue';

export default {
    name: 'AppCart',
    props: {},
    components: {
        AppSubscribe
    }
}
</script>

<style lang="less">
.shop-cart {
    padding: 90px 0;

    &__titles {
        display: grid;
        grid-template-columns: 40% repeat(5, auto);
        justify-content: space-between;
        padding-bottom: 20px;
        border-bottom: 1px solid #eaeaea;

        .shop-cart__title {
            font-size: 13px;
            line-height: 20px;
            font-weight: 700;
            text-transform: uppercase;
            letter-spacing: -0.015em;
            color: @textColor;
        }
    }

    &__item {
        display: grid;
        grid-template-columns: 39% repeat(5, auto);
        justify-content: space-between;
        align-items: center;
        padding: 20px 0;
        border-bottom: 1px solid #eaeaea;
    }

    .product-details {
        display: flex;

        &__link {
            &:hover~.product-info .product__raiting {
                visibility: visible;
            }
        }

        &__img {
            max-width: 100px;
            margin-right: 20px;
            display: block;
        }
    }

    .product-info {
        padding-top: 10px;

        &__title {
            font-size: 13px;
            line-height: 1.2;
            font-weight: 400;
            text-transform: uppercase;
            color: @textColor;
            margin-bottom: 5px;
        }

        .product__raiting {
            margin-bottom: 5px;
            visibility: hidden;
        }

        &__property {
            font-size: 13px;
            line-height: 20px;
            font-weight: 400;
            color: #575757;

            .product-info__span {
                font-weight: 300;
                color: #6f6e6e;
            }
        }
    }

    .product-parameters {
        font-size: 13px;
        line-height: 20px;
        font-weight: 400;
        color: #656565;

        .product-parameters__input {
            width: 54px;
            border: 1px solid #eaeaea;
            text-align: center;
            font-size: 13px;
            line-height: 20px;
            font-weight: 400;
            color: #656565;
            padding: 4px 0 4px 10px;
        }
    }

    .shipping,
    .subtotal,
    .delete {
        text-transform: uppercase;
        transform: translateX(-20px);
    }

    .quantity {
        transform: translateX(-7px);
    }

    &__buttons {
        display: flex;
        justify-content: space-between;
        margin: 40px 0 60px 0;
    }

    &__button {
        display: block;
        flex: 0 1 235px;
        background-color: #ffffff;
        border: 1px solid #eaeaea;
        font-size: 14px;
        line-height: 1.2;
        font-weight: 700;
        text-transform: uppercase;
        color: #4a4a4a;
        padding: 15px 0;
        cursor: pointer;

        &:hover {
            border: 1px solid #000;
        }
    }

    &__forms {
        display: grid;
        grid-template-columns: repeat(3, 1fr);
        gap: 50px;
    }

    &-form {

        .shop-cart-form__title {
            font-size: 16px;
            line-height: 1.2;
            font-weight: 700;
            text-transform: uppercase;
            color: @textColor;
            padding-bottom: 20px;
        }

        .shop-cart-form__input {
            width: 100%;
            background-color: #ffffff;
            border: 1px solid #eaeaea;
            padding: 13px;
            font-size: 13px;
            line-height: 1.2;
            font-weight: 300;
            color: #b1b1b1;
            box-sizing: border-box;
            margin-bottom: 20px;
            cursor: pointer;
            display: block;

            &::placeholder {
                font-size: 13px;
                line-height: 1.2;
                font-weight: 300;
                color: #b1b1b1;
            }
        }

        .shop-cart-form__quote {
            width: 100px;
            background-color: #ffffff;
            border: 1px solid #eaeaea;
            font-size: 11px;
            line-height: 1.2;
            font-weight: 700;
            text-transform: uppercase;
            color: #4a4a4a;
            padding: 10px 0;
            cursor: pointer;

            &:hover {
                border: 1px solid #000;
            }
        }

        .shop-cart-form__text {
            font-size: 14px;
            line-height: 1.2;
            font-weight: 300;
            color: #000000;
            margin-bottom: 23px;
        }

        .shop-cart-form__coupon {
            width: 118px;
            background-color: #ffffff;
            border: 1px solid #eaeaea;
            padding: 10px 0;
            font-size: 11px;
            line-height: 1.2;
            font-weight: 700;
            text-transform: uppercase;
            color: #4a4a4a;
            cursor: pointer;

            &:hover {
                border: 1px solid #000;
            }
        }
    }

    &-final {
        padding: 40px;
        background-color: #f5f3f3;
    }

    &-final__sum {
        text-align: right;
        box-sizing: border-box;
        padding-bottom: 20px;
        border-bottom: 1px solid #e2e2e2;
        margin-bottom: 15px;

        .shop-cart-final__sub {
            font-size: 11px;
            line-height: 1.2;
            font-weight: 400;
            text-transform: uppercase;
            margin-bottom: 15px;
            color: #4a4a4a;

            .shop-cart-final__sub-span {
                margin-left: 15px;
            }
        }

        .shop-cart-final__grand {
            font-size: 16px;
            line-height: 1.2;
            font-weight: 700;
            text-transform: uppercase;
            color: @textColor;

            .shop-cart-final__grand-span {
                color: @siteColor;
                margin-left: 15px;
            }
        }
    }

    &-final__buy {
        background-color: @siteColor;
        font-size: 16px;
        line-height: 1.2;
        font-weight: 700;
        text-transform: uppercase;
        color: #ffffff;
        padding: 15px 30px;
        border: none;
        white-space: nowrap;
        cursor: pointer;

        &:hover {
            background-color: #ffffff;
            color: @siteColor;
        }
    }

}

@media screen and (min-width: 767.98px) {
    .shop-cart {

        .productDetailsMob {
            display: none;
        }
    }
}

@media screen and (max-width: 991.98px) {
    .shop-cart {

        &__forms {
            grid-template-columns: 1fr;
        }

        &-final {
            padding: 24px;

            &__buy {
                width: 100%;
            }
        }

        &__buttons {
            flex-direction: column;
            margin: 24px 0 30px 0;
        }

        &__button {
            flex: 0 1 100%;

            &:not(:last-child) {
                margin-bottom: 24px;
            }
        }
    }
}

@media screen and (max-width: 767.98px) {
    .shop-cart {
        padding: 32px 0;

        &__titles {
            display: none;
        }

        .product-parameters:not(.delete) {
            display: none;
        }

        &__item {
            position: relative;
            display: block;
        }

        .product-details {
            margin-bottom: 20px;
        }

        .delete {
            transform: none;
            position: absolute;
            right: 0;
            top: 0;
        }

        .productDetailsMob {

            &__row {
                display: flex;
                align-items: center;

                &:not(:last-child) {
                    margin-bottom: 10px;
                }
            }

            &__param {
                font-size: 13px;
                line-height: 20px;
                font-weight: 700;
                text-transform: uppercase;
                letter-spacing: -0.015em;
                color: #222222;
                margin-right: 20px;
            }

            &__value {
                font-size: 13px;
                line-height: 20px;
                font-weight: 400;
                color: #656565;
            }

            &__input {
                min-width: 30px;
                text-align: center;
                font-size: 13px;
                line-height: 20px;
                font-weight: 400;
                color: #656565;
                padding: 4px;
                border: 1px solid #eaeaea;
            }

        }
    }
}
</style>