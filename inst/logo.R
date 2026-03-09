# =============================================================================
# surveyverse hex sticker
# Packages needed: hexSticker, ggplot2, sysfonts, showtext
#
# install.packages(c("hexSticker", "ggplot2", "sysfonts", "showtext"))
#
# Run from project root: source("inst/logo.R")
# Output: man/figures/logo.png
# =============================================================================

library(ggplot2)
library(hexSticker)
library(sysfonts)
library(showtext)

# ── Font ──────────────────────────────────────────────────────────────────────
font_add(
  family  = "MonaNeon",
  regular = "~/Downloads/Static Fonts/Monaspace Neon/MonaspaceNeon-SemiBold.otf",
  bold    = "~/Downloads/Static Fonts/Monaspace Neon/MonaspaceNeon-Bold.otf"
)
showtext_auto()

# ── Design tokens ─────────────────────────────────────────────────────────────
col_core    <- "#8888DD"   # surveycore   — periwinkle (lightened)
col_tidy    <- "#44BBCC"   # surveytidy   — teal       (lightened)
col_weights <- "#CC55AA"   # surveyweights — mauve     (lightened)
col_black   <- "#1C1C1C"   # hex background
col_border  <- "#3A3A3A"   # hex border
col_white   <- "#FFFFFF"

# ── Three-arc inner graphic ───────────────────────────────────────────────────
# Each package gets a 120° arc of a shared ring
make_arc <- function(start_deg, end_deg, r = 0.5, n = 80) {
  a <- seq(start_deg * pi / 180, end_deg * pi / 180, length.out = n)
  data.frame(x = cos(a) * r, y = sin(a) * r)
}

arc_core    <- make_arc(90,  210)   # surveycore
arc_tidy    <- make_arc(210, 330)   # surveytidy
arc_weights <- make_arc(330, 450)   # surveyweights

p <- ggplot() +
  geom_path(data = arc_core,    aes(x, y), color = col_core,    linewidth = 6.5, lineend = "round") +
  geom_path(data = arc_tidy,    aes(x, y), color = col_tidy,    linewidth = 6.5, lineend = "round") +
  geom_path(data = arc_weights, aes(x, y), color = col_weights, linewidth = 6.5, lineend = "round") +
  coord_equal(xlim = c(-1, 1), ylim = c(-1, 1)) +
  theme_void() +
  theme(
    panel.background = element_rect(fill = NA, color = NA),
    plot.background  = element_rect(fill = NA, color = NA)
  )

# ── Hex sticker ───────────────────────────────────────────────────────────────
sticker(
  subplot  = p,
  s_x      = 1,
  s_y      = 0.85,
  s_width  = 1.25,
  s_height = 1.25,

  package  = "surveyverse",
  p_x      = 1,
  p_y      = 1.45,
  p_size   = 17,
  p_color  = col_white,
  p_family = "MonaNeon",

  h_fill  = col_black,
  h_color = col_border,
  h_size  = 1.4,

  filename             = "man/figures/logo.png",
  dpi                  = 300,
  white_around_sticker = FALSE
)

message("Logo written to man/figures/logo.png")
