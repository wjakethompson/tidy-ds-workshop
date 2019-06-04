library(tidyverse)
library(here)
library(hexSticker)
library(png)
library(grid)
library(magick)


# Functions --------------------------------------------------------------------
palette_flag <- function(n, palette) {
  data <- tibble(x = rep(1:n, n),
                 y = sample(1:n, n * n, replace = TRUE))
  
  p <- ggplot(data) +
    geom_bar(aes(x, group = y, fill = y), width = 1) +
    scale_fill_gradientn(colors = palette) +
    theme_void() +
    theme(legend.position = "none",
          plot.background = element_rect(fill = "transparent"),
          panel.background = element_rect(fill = "transparent"))
  
  return(p)
}


# Create background ------------------------------------------------------------
atlas_pal <- c("#8FD6BD", "#F2A900", "#9BD3DD", "#F0EC74")
website_pal <- c("#F0F0F0", "#FED766", "#009FB7", "#696773")
flag <- palette_flag(100, atlas_pal)
ggsave("palette-flag.png", plot = flag, path = here("static", "img"),
       width = 10, height = 6.18, units = "in", bg = "transparent",
       dpi = "retina")


# Create initial logo ----------------------------------------------------------
theme_hex <- theme_void() + theme_transparent() +
  theme(axis.ticks.length = unit(0, "mm"))

l <- 1
hex <- tibble(
  x = 1.35 * l * c(-sqrt(3) / 2, 0, rep(sqrt(3) / 2, 2), 0,
                   rep(-sqrt(3) / 2, 2)),
  y = 1.35 * l * c(0.5, 1, 0.5, -0.5, -1, -0.5, 0.5)
)
rim <- tibble(x = c(-2,  2, 2, -2, -2),
              y = c(-2, -2, 2,  2, -2))
full_hex <- bind_rows(rim, hex)

bg <- readPNG(here("static", "img", "palette-flag.png"))
bg_flag <- rasterGrob(bg, interpolate = TRUE)

logo <- ggplot() +
  annotation_custom(bg_flag, xmin = -2.5, xmax = 2.5, ymin = -1.5, ymax = 1.5) +
  geom_polygon(data = full_hex, aes(x, y), fill = "hotpink") +
  geom_polygon(data = hex, aes(x, y), color = "#272727", size = 12, alpha = 0) +
  annotate(geom = "text", label = "Tidy Data\nScience", x = 0, y = 0,
           family = "Oxygen", color = "#272727", fontface = "bold",
           size = 70) +
  coord_equal(xlim = range(hex$x), ylim = range(hex$y), expand = TRUE) +
  theme_hex

png(here("static", "img", "website-logo.png"),
    width = 181 * 6, height = 210 * 6, bg = "transparent")
print(logo)
dev.off()


# Tidy up logo -----------------------------------------------------------------
img <- image_read(here("static", "img", "website-logo.png")) %>%
  image_transparent("hotpink", fuzz = 10) %>%
  image_trim()

img %>%
  image_scale("32x32!") %>%
  image_write(here("static", "img", "icon.png"))

img %>%
  image_scale("192x192!") %>%
  image_write(here("static", "img", "icon-192.png"))

img %>%
  image_scale("181x210!") %>%
  image_write(here("static", "img", "website-hex.png"))

img %>%
  image_scale("905x1050!") %>%
  image_write(here("static", "img", "website-logo.png"))
