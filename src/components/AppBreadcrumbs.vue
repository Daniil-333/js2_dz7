<template>
    <section class="new-arrival">
        <div class="container">
            <div class="new-arrival__content">
                <h2 class="new-arrival__title">New Arrivals</h2>
                <nav class="new-arrival__breadcrumbs">
                    <a href="#" class="new-arrival__link">Home</a>
                    <a href="#" class="new-arrival__link">Men</a>
                    <a href="#" class="new-arrival__link _active">New Arrivals</a>
                </nav>
            </div>
        </div>
    </section>
</template>

<script>
export default {
    name: 'AppBreadcrumbs',
    props: {},
}
</script>

<style lang="less">
.new-arrival {
    background-color: #f8f3f4;
    padding: 4% 0;

    &__title {
        font-size: 24px;
        line-height: 20px;
        font-weight: 900;
        text-transform: uppercase;
        color: @siteColor;
    }

    &__content {
        display: flex;
        align-items: center;
        justify-content: space-between;
    }

    &__breadcrumbs {
        display: flex;
        flex-wrap: wrap;
    }

    &__link {
        font-size: 14px;
        line-height: 20px;
        font-weight: 300;
        text-transform: uppercase;
        color: #636363;
        margin-right: 2px;

        &:nth-of-type(3) {
            font-weight: 700;
            color: @siteColor;
            margin: 0;
        }

        &::after {
            content: " /";
        }

        &_active::after {
            content: none;
        }
    }
}

@media screen and (max-width: 767.98px) {
    .new-arrival {

        &__content {
            display: block;
        }

        &__title {
            margin-bottom: 20px;
        }
    }
}
</style>