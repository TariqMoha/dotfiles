require'colorizer' .setup(
  {'*';},
  {
    RGB        = true;        -- #RGB hex code
    RRGGBB     = true;        -- #RRGGBB hex code
    names      = true;        -- "Name" codes like Blue
    RRGGBBAA   = true;        -- #RRGGBBAA hex code
    rgb_fn     = true;        -- CSS rgb() and rgba() function
    hsl_fn     = true;        -- CSS hsl() and hsla() function
    css        = true;        -- Enable all CSS features: rgb_fn, hsl_fn, names, RGB, RRGGBB
    css_fn     = true;        -- Enabel all CSS *functions*: rgb_fn, hsl_fn
  })
