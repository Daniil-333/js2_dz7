<template>
    <section class="sale">
        <div class="container">
            <div class="sale__content">
                <img src="@/assets/img/offer-women-fon.jpg" alt="Offer" class="sale__img">
                <div class="sale__heading">
                    <h3 class="sale__h3">30% <span class="sale__span">OFFER</span></h3>
                    <p class="sale__subtitle">FOR WOMEN</p>
                </div>
                <div class="sale__right">
                    <div class="sale__item itemAdv">
                        <img src="@/assets/img/off_wom_car.png" class="sale__icon" alt="Free Delivery">
                        <div>
                            <p class="sale__itemHeading itemAdv__heading">Free Delivery</p>
                            <p class="itemAdv__text">
                                Worldwide delivery on all. Authorit tively
                                morph
                                next-generation
                                innov tion with extensive models.
                            </p>
                        </div>
                    </div>
                    <div class="sale__item itemAdv">
                        <img src="@/assets/img/off_wom_sale.png" class="sale__icon" alt="Sales & discounts">
                        <div>
                            <p class="sale__itemHeading itemAdv__heading">Sales & discounts</p>
                            <p class="itemAdv__text">Worldwide delivery on all. Authorit
                                tively
                                morph
                                next-generation
                                innov tion with extensive models.
                            </p>
                        </div>
                    </div>
                    <div class="sale__item itemAdv">
                        <img src="@/assets/img/off_wom_crown.png" class="sale__icon" alt="Quality assurance">
                        <div>
                            <p class="sale__itemHeading itemAdv__heading">Quality assurance</p>
                            <p class="itemAdv__text">Worldwide delivery on all. Authorit
                                tively
                                morph
                                next-generation
                                innov tion with extensive models.
                            </p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
</template>

<script>
export default {
    name: 'AppSale',
}
</script>

<style lang="less">
.sale {

    &__content {
        position: relative;
        background: @textColor;
        padding-top: 47.66%;
        margin-bottom: 95px;
    }

    &__img {
        position: absolute;
        top: 0;
        left: 0;
        max-width: 100%;
    }

    &__heading {
        position: absolute;
        top: 140px;
        left: 40px;
    }

    &__h3 {
        font-size: 53.7px;
        line-height: 1.2;
        font-weight: 700;
        letter-spacing: 0.025em;
        color: #ffffff;
    }

    &__span {
        font-size: 53.7px;
        color: @siteColor;
    }

    &__subtitle {
        font-weight: 700;
        font-size: 32.2px;
        line-height: 1.2;
        letter-spacing: 0.025em;
        color: #ffffff;
    }

    &__right {
        position: absolute;
        right: 0;
        top: 0;
        max-width: 372px;
        background: @textColor;
        display: flex;
        flex-direction: column;
        padding: 48px 36px 67px;
    }

    &__item {
        display: grid;
        grid-template-columns: 40px 1fr;
        gap: 0 30px;

        &Heading {
            margin-bottom: 12px;
        }

        &:not(:last-child) {
            margin-bottom: 45px;
        }
    }

}

@media screen and (max-width: 991.98px) {
    .sale {
        &__content {
            padding-top: 0;
        }

        &__img {
            position: static;
            width: 100%;
        }

        &__right {
            position: static;
            max-width: none;
            flex-direction: row;
            padding: 36px 24px;
        }

        &__item {
            display: block;
            text-align: center;

            &:not(:last-child) {
                margin: 0 20px 0 0;
            }
        }

        &__icon {
            margin-bottom: 15px;
        }
    }
}

@media screen and (max-width: 767.98px) {
    .sale {

        &__heading {
            top: 36px;
            left: 36px;
        }

        &__h3 {
            font-size: 36px;
        }

        &__span {
            font-size: 36px;
        }

        &__subtitle {
            font-size: 24px;
        }

        &__img {
            opacity: .5;
        }

        &__right {
            flex-direction: column;
        }

        &__item {
            &:not(:last-child) {
                margin: 0 0 20px 0;
            }
        }
    }
}
</style>