<template>
    <section class="main-screen">
        <div class="container">
            <h2 class="main-screen-h2">
                <span>THE BRAND</span>
                OF LUXERIOUS <span>FASHION</span>
            </h2>
        </div>
    </section>
</template>

<script>
export default {
    name: 'AppPromo',
}
</script>

<style lang="less">
.main-screen {
    background: url("@/assets/img/main-fon.jpg") no-repeat;
    background-size: cover;
    padding: 14% 0 18.5% 0;
    box-sizing: border-box;

    &-h2 {
        font-size: 40px;
        font-weight: 900;
        position: relative;
        padding-left: 24px;

        &::before {
            content: "";
            background-color: @siteColor;
            position: absolute;
            left: 0;
            top: 15px;
            bottom: 8px;
            display: block;
            width: 12px;
        }

        span:nth-of-type(1) {
            display: block;
            font-size: 60px;
            font-weight: 900;
            letter-spacing: 0.025em;
            color: @textColor;
        }

        span:nth-of-type(2) {
            color: @siteColor;
        }
    }
}


@media screen and (max-width: 1200px) {
    .main-screen {
        &-h2 {
            font-size: 24px;

            span:nth-of-type(1) {
                font-size: 48px;
            }

            &::before {
                top: 11px;
                bottom: 4px;
            }
        }
    }
}

@media screen and (max-width: 767.98px) {
    .main-screen {
        &-h2 {
            font-size: 18px;

            span:nth-of-type(1) {
                font-size: 36px;
            }

            &::before {
                top: 9px;
                bottom: 3px;
            }
        }
    }
}

@media screen and (max-width: 575.98px) {
    .main-screen {
        &-h2 {
            font-size: 16px;

            span:nth-of-type(1) {
                font-size: 32px;
            }

            &::before {
                top: 8px;
                bottom: 3px;
            }
        }
    }
}
</style>