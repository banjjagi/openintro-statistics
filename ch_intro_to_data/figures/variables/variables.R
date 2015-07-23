library(openintro)
data(COL)

#par(family = "NanumMyeongjo")
#loadfonts()

## A CID font for Japanese using a different CMap and
## corresponding cmapEncoding.
# `Jp_UCS-2` <- CIDFont("TestUCS2",
#                       c("Adobe-Japan1-UniJIS-UCS2-H.afm",
#                         "Adobe-Japan1-UniJIS-UCS2-H.afm",
#                         "Adobe-Japan1-UniJIS-UCS2-H.afm",
#                         "Adobe-Japan1-UniJIS-UCS2-H.afm"),
#                       "UniJIS-UCS2-H", "UCS-2")
# pdfFonts(`Jp_UCS-2` = `Jp_UCS-2`)
# names(pdfFonts())

pdfFonts(`Korea1deb`)
# myPDF('variables.pdf', 4.2, 1.5, mar = rep(0,4), family = 'NanumMyeongjo')
myPDF('variables.pdf', 4.2, 1.5, mar = rep(0,4))


plot(c(-0.15, 1.3),
     c(0, 1),
     type = 'n',
     axes = FALSE)

text(0.6, 0.9, '전체 변수')
rect(0.4, 0.8, 0.8, 1)

text(0.25, 0.5, '숫자형')
rect(0.1, 0.4, 0.4, 0.6)
arrows(0.45, 0.78, 0.34, 0.62, length = 0.08)

text(0.9, 0.5, '범주형')
rect(0.73, 0.4, 1.07, 0.6)
arrows(0.76, 0.78, 0.85, 0.62, length = 0.08)

text(0, 0.1, '연속형')
rect(-0.17, 0, 0.17, 0.2)
arrows(0.13, 0.38, 0.05, 0.22, length = 0.08)

text(0.39, 0.1, '이산형')
rect(0.25, 0, 0.53, 0.2)
arrows(0.35, 0.38, 0.4, 0.22, length = 0.08)

text(0.77, 0.14, '명목형', col = COL[6], cex = 0.7)
text(0.77, 0.05, '(순서없는 범주형)',
     col = COL[6],
     cex = 0.5)
rect(0.6, 0, 0.94, 0.2, border = COL[6])
arrows(0.82, 0.38, 0.77, 0.22, length = 0.08, col = COL[6])

text(1.14, 0.14, '서수형', col = COL[6], cex = 0.7)
text(1.14, 0.05, '(순서있는 범주형)', col = COL[6], cex = 0.5)
rect(0.98, 0, 1.3, 0.2, border = COL[6])
arrows(1.03, 0.38, 1.11, 0.22, length = 0.08, col = COL[6])

dev.off()



