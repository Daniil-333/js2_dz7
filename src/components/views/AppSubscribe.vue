<template>
    <section class="subscribe">
        <div class="subscribe__content">
            <div class="container">
                <div class="subscribe__main">
                    <div class="subscribe-review">
                        <img src="@/assets/img/subsc_foto.png" alt="Фото" class="subscribe-review__img">
                        <article class="subscribe-review__article">
                            <p>“Vestibulum quis porttitor dui! Quisque viverra nunc mi,
                                a pulvinar purus condimentum a. Aliquam condimentum mattis neque sed pretium”</p>
                            <p>Bin Burhan</p> <span class="subscribe-review__span">Dhaka, Bd</span>
                            <div class="subscribe-review__pagination">
                                <button type="button" class="subscribe-review__link"></button>
                                <button type="button"
                                    class="subscribe-review__link subscribe-review__link-active"></button>
                                <button type="button" class="subscribe-review__link"></button>
                            </div>
                        </article>
                    </div>
                    <div class="subscribe-form">
                        <h6 class="subscribe-container-h6">Subscribe</h6>
                        <p class="subscribe-container__subtitle">FOR OUR NEWLETTER AND PROMOTION</p>
                        <form action="#" class="send-form">
                            <input type="email" placeholder="Enter Your Email" class="send-form__input">
                            <button type="submit" class="send-form__button">Subscribe</button>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </section>
</template>

<script>
export default {
    name: 'AppSubcribe',
    props: {}
}
</script>

<style lang="less">
.subscribe {

    &__content {
        background: url("@/assets/img/subsc-fon.jpg") no-repeat, rgba(242, 242, 242, 0.5);
        background-size: cover;
        background-blend-mode: overlay;
    }

    &__main {
        display: flex;
        position: relative;

        &::before {
            content: "";
            border: 1px solid #ffffff;
            height: 100%;
            position: absolute;
            left: 50%;
        }
    }

    &-review {
        display: flex;
        align-items: end;
        width: 50%;
        padding: 10% 6% 18% 0;

        .subscribe-review__img {
            margin-right: 28px;
            transition: transform 1.5s;

            &:hover {
                transform: scale(1.5);
            }
        }

        .subscribe-review__article {
            p:nth-of-type(1) {
                font-size: 16px;
                line-height: 26px;
                font-weight: 400;
                font-style: italic;
                letter-spacing: 0.025em;
                color: #222224;
                margin-bottom: 15px;
            }

            p:nth-of-type(2) {
                font-size: 16px;
                line-height: 26px;
                font-weight: 700;
                letter-spacing: 0.025em;
                color: @siteColor;

                .subscribe-review__span {
                    font-size: 12px;
                    line-height: 14px;
                    font-weight: 300;
                    color: #222224;
                }
            }

            .subscribe-review__pagination {
                margin-top: 35px;
                display: flex;
                justify-content: space-between;
                width: 140px;

                .subscribe-review__link {
                    width: 38px;
                    border-bottom: 4px solid #d6d6d6;

                    &:hover {
                        border-color: #edb4be;
                    }

                    &:active {
                        border-color: @siteColor;
                    }
                }

                .subscribe-review__link-active {
                    border-bottom: 4px solid @siteColor;
                }
            }
        }
    }

    &-form {
        display: flex;
        flex-direction: column;
        align-items: center;
        width: 50%;
        padding: 11% 0;
        box-sizing: border-box;

        .subscribe-container-h6 {
            font-size: 24px;
            line-height: 30px;
            font-weight: 400;
            text-transform: uppercase;
            letter-spacing: 0.025em;
            color: #222224;
        }

        .subscribe-container__subtitle {
            font-size: 14px;
            line-height: 24px;
            text-transform: none;
            padding-bottom: 35px;
            text-align: center;
        }
    }

    .send-form {
        display: flex;
        margin: 0 auto;

        &__input {
            width: 275px;
            background-color: #e1e1e1;
            border-radius: 23px 0 0 23px;
            padding: 17px 28px;
            border: none;
            box-sizing: border-box;

            &:focus {
                outline: none;
            }
        }

        &__button {
            width: 105px;
            background-color: @siteColor;
            border-radius: 0 23px 23px 0;
            font-size: 14px;
            font-weight: 400;
            letter-spacing: 0.025em;
            color: #ffffff;
            border: none;
            padding: 16px 0;
            box-sizing: border-box;

            &:hover {
                color: @textColor;
                cursor: pointer;
            }

            &:active {
                outline: none;
            }

            &:focus {
                outline: none;
            }
        }
    }
}

@media screen and (max-width: 991.98px) {
    .subscribe {
        &__main {
            flex-direction: column-reverse;
            align-items: center;

            &::before {
                height: 1px;
                border: 0;
                background: #ffffff;
                width: 100%;
                left: 0;
                top: 50%;
            }
        }
    }
}

@media screen and (max-width: 767.98px) {
    .subscribe {

        &-review,
        &-form {
            width: 100%;
        }

        .send-form {
            flex-direction: column;

            &__input {
                border-radius: 23px
            }

            &__button {
                width: 100%;
                border-radius: 23px
            }
        }
    }
}

@media screen and (max-width: 575.98px) {

    .subscribe {
        &__main {
            &::before {
                content: none;

            }
        }
    }
}
</style>