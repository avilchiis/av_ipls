RegisterCommand("galaxy", function(_, args)
    local state = args and args[1] or false
    if state then
        -- Nightclubs
        exports['av_ipls']:loadLocal('nightclubs')
        exports['av_ipls']:setVariantLocal('nightclubs', 'Bands', 'cyan')
        exports['av_ipls']:setVariantLocal('nightclubs', 'Droplets', 'purple')
        exports['av_ipls']:setVariantLocal('nightclubs', 'Interior', 'basic')
        exports['av_ipls']:setVariantLocal('nightclubs', 'Lasers', 'purple')
        exports['av_ipls']:setVariantLocal('nightclubs', 'Name', 'galaxy')
        exports['av_ipls']:setVariantLocal('nightclubs', 'Neons', 'purple')
        exports['av_ipls']:setVariantLocal('nightclubs', 'Podium', 'edgy')
        exports['av_ipls']:setVariantLocal('nightclubs', 'Posters', 'dixon')
        exports['av_ipls']:setVariantLocal('nightclubs', 'Style', 'edgy')
        exports['av_ipls']:setVariantLocal('nightclubs', 'Trophy', 'battler')
        exports['av_ipls']:setVariantLocal('nightclubs', 'Turntables', 'style03')
    else
        -- Nightclubs
        exports['av_ipls']:resetLocal('nightclubs')
    end
end,false)