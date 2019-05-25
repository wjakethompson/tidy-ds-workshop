### Packages -------------------------------------------------------------------
library(tidyverse)
library(hexSticker)
library(png)
library(grid)
library(wjake)
library(here)


### Make blank logo ------------------------------------------------------------
l <- 1

hex <- data_frame(
  x = 1.35 * l * c(-sqrt(3) / 2, 0, rep(sqrt(3) / 2, 2), 0,
                   rep(-sqrt(3) / 2, 2)),
  y = 1.35 * l * c(0.5, 1, 0.5, -0.5, -1, -0.5, 0.5)
)


theme_hex <- theme_void() + theme_transparent() +
  theme(axis.ticks.length = unit(0, "mm"))


blank_logo <- ggplot() +
  geom_polygon(data = hex, aes(x, y), color = "#FFFFFF", fill = "#FFFFFF",
               size = 2) +
  coord_equal(xlim = range(hex$x), ylim = range(hex$y)) +
  scale_x_continuous(expand = c(0.04, 0)) +
  scale_y_continuous(expand = c(0.04, 0)) +
  theme_hex

png(here("static", "img", "logo", "06-blank.png"),
    width = 181 * 5, height = 210 * 5, bg = "transparent")
print(blank_logo)
dev.off()

png(here("static", "img", "logo", "10-blank.png"),
    width = 181 * 5, height = 210 * 5, bg = "transparent")
print(blank_logo)
dev.off()

png(here("static", "img", "logo", "15-blank.png"),
    width = 181 * 5, height = 210 * 5, bg = "transparent")
print(blank_logo)
dev.off()

png(here("static", "img", "logo", "19-blank.png"),
    width = 181 * 5, height = 210 * 5, bg = "transparent")
print(blank_logo)
dev.off()


### Make hex wall --------------------------------------------------------------
wall <- hexwall(here("static", "img", "logo"), sticker_row_size = 5,
                sort_mode = "filename", bg = "white")

magick::image_write(wall, path = here("static", "img", "hex-stickers.png"))
