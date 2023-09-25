local Translations = {
    info = {
        open_shop = "[E] Ouvrir Magazin",
        open_shop_target = "Ouvrir Magazin",
    },
}

if GetConvar('qb_locale', 'en') == 'fr' then
    Lang = Locale:new({
        phrases = Translations,
        warnOnMissing = true,
        fallbackLang = Lang,
    })
end
