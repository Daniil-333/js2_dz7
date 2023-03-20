<template>
    <section class="advantages">
        <div class="container">
            <div class="advantages__content">
                <div class="advantages__item itemAdv">
                    <img src="@/assets/img/off_wom_car.png" alt="Доставка" class="advantages__icon">
                    <p class="advantages__itemHeading itemAdv__heading">Free Delivery</p>
                    <p class="advantages__itemText itemAdv__text">
                        Worldwide delivery on all.
                        Authorit tively
                        morph
                        next-generation
                        innov tion with extensive models.
                    </p>
                </div>
                <div class="advantages__item itemAdv">
                    <img src="@/assets/img/off_wom_sale.png" alt="Доставка" class="advantages__icon">
                    <p class="advantages__itemHeading itemAdv__heading">Sales & discounts</p>
                    <p class="advantages__itemText itemAdv__text">Worldwide delivery on
                        all. Authorit
                        tively
                        morph
                        next-generation
                        innov tion with extensive models.
                    </p>
                </div>
                <div class="advantages__item itemAdv">
                    <img src="@/assets/img/off_wom_crown.png" alt="Доставка" class="advantages__icon">
                    <p class="advantages__itemHeading itemAdv__heading">Quality assurance</p>
                    <p class="advantages__itemText itemAdv__text">
                        Worldwide delivery on
                        all. Authorit
                        tively
                        morph
                        next-generation
                        innov tion with extensive models.
                    </p>
                </div>
            </div>
        </div>
    </section>
</template>

<script>
export default {
    name: 'AppAdvantages',
}
</script>

<style lang="less">
.advantages {
    background-color: @textColor;
    padding: 5% 0 8%;

    &__content {
        display: grid;
        grid-template-columns: repeat(3, 1fr);
        gap: 5%;
    }

    &__item {
        flex: 0 1 310px;
        display: flex;
        flex-direction: column;
        align-items: center;

        &Heading {
            margin-bottom: 16px;
        }

        &Text {
            text-align: center;
        }
    }

    &__icon {
        margin-bottom: 24px;
    }
}

@media screen and (max-width: 767.98px) {
    .advantages {
        padding: 24px 0;

        &__content {
            grid-template-columns: 1fr;
            gap: 20px;
        }
    }
}
</style>