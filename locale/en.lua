local Translations = {
    info = {
        open_shop = "[E] Open Shop",
        open_shop_target = "Open Shop",
    },
}

Lang = Lang or Locale:new({
    phrases = Translations,
    warnOnMissing = true
})
