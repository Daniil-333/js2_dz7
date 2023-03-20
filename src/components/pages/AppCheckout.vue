<template>
    <main class="main-checkout">
        <div class="container">
            <div class="accordion-menu">
                <div class="accordion-menu-item shipping-adress">
                    <input type="radio" id="accordion-menu-item-1" checked class="accordion-menu-input"
                        name="accordion-menu">
                    <label for="accordion-menu-item-1" class="accordion-menu-title">01. Shipping Adress</label>
                    <div class="shipping-adress__forms">
                        <form action="#" class="shipping-adress__form">
                            <p class="shipping-adress__h6">Check as a guest or register</p>
                            <p class="shipping-adress__text">Register with us for future convenience</p>
                            <label class="shipping-adress__radio shipping-adress__h6"><input type="radio"
                                    name="register" class="shipping-adress__radio-input"><span
                                    class="shipping-adress__radio-span"></span>checkout as
                                guest</label>
                            <label class="shipping-adress__radio shipping-adress__h6"><input type="radio"
                                    name="register" class="shipping-adress__radio-input" checked><span
                                    class="shipping-adress__radio-span"></span>register</label>
                            <p class="shipping-adress__h6">register and save time!</p>
                            <p class="shipping-adress__text">Register with us for future convenience</p>
                            <a href="#" class="shipping-adress__link">Fast and easy checkout</a>
                            <a href="#" class="shipping-adress__link">Easy access to your order history and status</a>
                            <button class="shipping-adress__button">Continue</button>
                        </form>
                        <form action="#" class="shipping-adress__form">
                            <p class="shipping-adress__h6">Already registed?</p>
                            <p class="shipping-adress__text">Please log in below</p>
                            <p class="shipping-adress__h6 shipping-adress__req-star">EMAIL ADDRESS <span
                                    class="shipping-adress__req-span">*</span></p>
                            <input type="email" class="shipping-adress__input" required>
                            <p class="shipping-adress__h6 shipping-adress__req-star">PASSWORD <span
                                    class="shipping-adress__req-span">*</span></p>
                            <input type="password" class="shipping-adress__input" required>
                            <p class="shipping-adress__req-fields">* Required Fileds</p>
                            <button class="shipping-adress__button">Log in</button>
                            <a href="#" class="forgot-paswd">Forgot Password ?</a>
                        </form>
                    </div>
                </div>
                <div class="accordion-menu-item billing-info">
                    <input type="radio" id="accordion-menu-item-2" class="accordion-menu-input" name="accordion-menu">
                    <label for="accordion-menu-item-2" class="accordion-menu-title">02. Billing Information</label>
                </div>
                <div class="accordion-menu-item shipping-info">
                    <input type="radio" id="accordion-menu-item-3" class="accordion-menu-input" name="accordion-menu">
                    <label for="accordion-menu-item-3" class="accordion-menu-title">03. Shipping Information</label>
                </div>
                <div class="accordion-menu-item shipping-method">
                    <input type="radio" id="accordion-menu-item-4" class="accordion-menu-input" name="accordion-menu">
                    <label for="accordion-menu-item-4" class="accordion-menu-title">04. Shipping Method</label>
                </div>
                <div class="accordion-menu-item payment method">
                    <input type="radio" id="accordion-menu-item-5" class="accordion-menu-input" name="accordion-menu">
                    <label for="accordion-menu-item-5" class="accordion-menu-title">05. Payment Method</label>
                </div>
                <div class="accordion-menu-item order-review">
                    <input type="radio" id="accordion-menu-item-6" class="accordion-menu-input" name="accordion-menu">
                    <label for="accordion-menu-item-6" class="accordion-menu-title">06. Order Review</label>
                </div>
            </div>
        </div>
    </main>
    <AppSubscribe />
</template>

<script>
import AppSubscribe from '@/components/AppSubscribe.vue';

export default {
    name: 'AppCheckout',
    props: {},
    components: {
        AppSubscribe
    }
}
</script>

<style lang="less">
.main-checkout {
    padding: 60px 0;

    .accordion-menu {

        &-item {
            border-bottom: 1px solid #e8e8e8;
            padding: 30px 0;

            .accordion-menu-title {
                display: block;
                font-size: 16px;
                line-height: 1.2;
                font-weight: 700;
                text-transform: uppercase;
                color: @textColor;
                cursor: pointer;
            }
        }

        .shipping-adress {

            &__forms {
                display: none;
                grid-template-columns: repeat(2, auto);
                padding: 40px 0 0 0;
            }

            &__h6 {
                font-size: 13px;
                line-height: 1.2;
                font-weight: 600;
                text-transform: uppercase;
                color: @textColor;
                padding-bottom: 5px;
            }

            &__req-star {
                .shipping-adress__req-span {
                    font-size: 17px;
                    line-height: 20px;
                    font-weight: 400;
                    color: #ff0d0d;
                }
            }

            &__text {
                font-size: 13px;
                line-height: 20px;
                font-weight: 400;
                color: #b3b2b2;
                padding-bottom: 5px;
            }

            &__text:nth-of-type(2) {
                margin-bottom: 25px;
            }

            &__text:nth-of-type(3) {
                margin-top: 30px;
            }

            &__text:nth-of-type(4) {
                margin-bottom: 10px;
            }

            &__link {
                display: block;
                font-size: 13px;
                line-height: 20px;
                font-weight: 400;
                color: #b3b2b2;
                padding-bottom: 5px;

                &::before {
                    content: "\f101";
                    font-family: FontAwesome;
                    font-size: 13px;
                    line-height: 20px;
                    font-weight: 400;
                    color: #b3b2b2;
                }

                &:hover {
                    color: #000;
                }
            }

            &__radio {
                display: block;
                margin-bottom: 10px;

                .shipping-adress__radio-input {
                    display: none;

                    &:checked+span::before {
                        content: '';
                        position: absolute;
                        width: 8px;
                        height: 8px;
                        left: 50%;
                        top: 50%;
                        transform: translate(-50%, -50%);
                        background-color: #000000;
                        border-radius: 50%;
                    }
                }

                .shipping-adress__radio-span {
                    position: relative;
                    display: inline-block;
                    width: 14px;
                    height: 14px;
                    background-color: #ffffff;
                    border: 2px solid #555555;
                    border-radius: 50%;
                    margin-right: 14px;
                    vertical-align: text-bottom;
                }
            }

            &__button {
                width: 180px;
                height: 50px;
                background-color: #ffffff;
                border: 1px solid #eaeaea;
                font-size: 14px;
                line-height: 1.2;
                font-weight: 700;
                text-transform: uppercase;
                color: #4a4a4a;
                margin-top: 30px;

                &:hover {
                    border-color: #000;
                    color: #000;
                    cursor: pointer;
                }
            }

            //ВСЕГДА в конце иначе не сработает
            &__form {
                padding: 0 30px;

                &:last-child {

                    .shipping-adress__text:nth-of-type(2) {
                        margin-bottom: 10px;
                    }

                    .shipping-adress__text:nth-of-type(3) {
                        margin-top: 0;
                    }

                    .shipping-adress__text:nth-of-type(4) {
                        margin-bottom: 0;
                    }

                    .shipping-adress__req-fields {
                        font-size: 13px;
                        line-height: 20px;
                        font-weight: 400;
                        color: #ff0d0d;
                        margin-top: 15px;
                    }

                    .shipping-adress__input {
                        width: 390px;
                        border: 1px solid #eaeaea;
                        padding: 14px 16px;

                        &:nth-of-type(1) {
                            margin-bottom: 20px;
                        }
                    }

                    .shipping-adress__button {
                        margin-top: 22px;
                    }

                    .forgot-paswd {
                        display: inline;
                        font-size: 14px;
                        line-height: 20px;
                        font-weight: 600;
                        color: @textColor;
                        margin-left: 30px;

                        &::before {
                            content: none;
                        }

                        &:hover {
                            opacity: 0.7;
                        }
                    }
                }
            }
        }

        //ВСЕГДА в конце иначе :checked не сработает
        &-input {
            display: none;

            &:checked~.shipping-adress__forms {
                display: grid;
            }
        }
    }
}

@media screen and (max-width: 767.98px) {
    .main-checkout {

        .accordion-menu {

            .shipping-adress {

                &__forms {
                    grid-template-columns: 1fr;
                    gap: 30px;
                }

                &__form {
                    padding: 0 0 0 15px;

                    &:last-child {

                        .shipping-adress__input {
                            width: 100%;
                        }

                        .shipping-adress__button {
                            margin-bottom: 20px;
                        }

                        .forgot-paswd {
                            margin: 0;
                        }
                    }
                }

                &__button {
                    width: 100%;
                }
            }
        }
    }
}
</style>