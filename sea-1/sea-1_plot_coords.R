library(tidyverse) 
library(gridExtra)

chr="II"
left=3667179
right=3701405

### NIC526 - p1 ####
df_pacbio <- read_tsv(file="../alignments/NIC526_vs_N2.coords") %>%
  dplyr::rename(N2_start = '[S1]', N2_end = '[E1]', CB4856_start = '[S2]', CB4856_end = '[E2]', 
                N2_length = '[LEN 1]', CB4856_length = '[LEN 2]', Identity = "[% IDY]", 
                N2_chrom_length = '[LEN R]', CB4856_chrom_length='[LEN Q]', CHROM='[TAGS]')

p1 <- df_pacbio %>%
  dplyr::filter(CHROM == chr, N2_length > 1000) %>%
  ggplot(.) +
  aes(xmin=N2_start/1e6, xmax=N2_end/1e6, ymax=Identity+0.5, ymin = Identity-0.5) +
  geom_rect() +
  ggtitle("NIC526") + 
  theme_bw() +
  theme(panel.grid = element_blank(), axis.text = element_text(size=10, color='black'), 
        axis.title=element_text(size=11, color='black'), plot.margin = unit(c(0,2,0,2), "pt")) +
  labs(y="Identity (%)", fill = "") +
  scale_x_continuous(expand = c(0,0)) +
  coord_cartesian(xlim=c(left/1e6, right/1e6)) +
  ylim(90,100.5)

### JU1400 - p2 ####
df_pacbio <- read_tsv(file="../alignments/JU1400_vs_N2.coords") %>%
  dplyr::rename(N2_start = '[S1]', N2_end = '[E1]', CB4856_start = '[S2]', CB4856_end = '[E2]', 
                N2_length = '[LEN 1]', CB4856_length = '[LEN 2]', Identity = "[% IDY]", 
                N2_chrom_length = '[LEN R]', CB4856_chrom_length='[LEN Q]', CHROM='[TAGS]')

p2 <- df_pacbio %>%
  dplyr::filter(CHROM == chr, N2_length > 1000) %>%
  ggplot(.) +
  aes(xmin=N2_start/1e6, xmax=N2_end/1e6, ymax=Identity+0.5, ymin = Identity-0.5) +
  geom_rect() +
  ggtitle("JU1400") + 
  theme_bw() +
  theme(panel.grid = element_blank(), axis.text = element_text(size=10, color='black'), 
        axis.title=element_text(size=11, color='black'), plot.margin = unit(c(0,2,0,2), "pt")) +
  labs(y="Identity (%)", fill = "") +
  scale_x_continuous(expand = c(0,0)) +
  coord_cartesian(xlim=c(left/1e6, right/1e6)) +
  ylim(90,100.5)

### JU310 - p3 ####
df_pacbio <- read_tsv(file="../alignments/JU310_vs_N2.coords") %>%
  dplyr::rename(N2_start = '[S1]', N2_end = '[E1]', CB4856_start = '[S2]', CB4856_end = '[E2]', 
                N2_length = '[LEN 1]', CB4856_length = '[LEN 2]', Identity = "[% IDY]", 
                N2_chrom_length = '[LEN R]', CB4856_chrom_length='[LEN Q]', CHROM='[TAGS]')

p3 <- df_pacbio %>%
  dplyr::filter(CHROM == chr, N2_length > 1000) %>%
  ggplot(.) +
  aes(xmin=N2_start/1e6, xmax=N2_end/1e6, ymax=Identity+0.5, ymin = Identity-0.5) +
  geom_rect() +
  ggtitle("JU310") + 
  theme_bw() +
  theme(panel.grid = element_blank(), axis.text = element_text(size=10, color='black'), 
        axis.title=element_text(size=11, color='black'), plot.margin = unit(c(0,2,0,2), "pt")) +
  labs(y="Identity (%)", fill = "") +
  scale_x_continuous(expand = c(0,0)) +
  coord_cartesian(xlim=c(left/1e6, right/1e6)) +
  ylim(90,100.5)

### JU2600 - p4 ####
df_pacbio <- read_tsv(file="../alignments/JU2600_vs_N2.coords") %>%
  dplyr::rename(N2_start = '[S1]', N2_end = '[E1]', CB4856_start = '[S2]', CB4856_end = '[E2]', 
                N2_length = '[LEN 1]', CB4856_length = '[LEN 2]', Identity = "[% IDY]", 
                N2_chrom_length = '[LEN R]', CB4856_chrom_length='[LEN Q]', CHROM='[TAGS]')

p4 <- df_pacbio %>%
  dplyr::filter(CHROM == chr, N2_length > 1000) %>%
  ggplot(.) +
  aes(xmin=N2_start/1e6, xmax=N2_end/1e6, ymax=Identity+0.5, ymin = Identity-0.5) +
  geom_rect() +
  ggtitle("JU2600") + 
  theme_bw() +
  theme(panel.grid = element_blank(), axis.text = element_text(size=10, color='black'), 
        axis.title=element_text(size=11, color='black'), plot.margin = unit(c(0,2,0,2), "pt")) +
  labs(y="Identity (%)", fill = "") +
  scale_x_continuous(expand = c(0,0)) +
  coord_cartesian(xlim=c(left/1e6, right/1e6)) +
  ylim(90,100.5)

### MY2147 - p4 ####
df_pacbio <- read_tsv(file="../alignments/MY2147_vs_N2.coords") %>%
  dplyr::rename(N2_start = '[S1]', N2_end = '[E1]', CB4856_start = '[S2]', CB4856_end = '[E2]', 
                N2_length = '[LEN 1]', CB4856_length = '[LEN 2]', Identity = "[% IDY]", 
                N2_chrom_length = '[LEN R]', CB4856_chrom_length='[LEN Q]', CHROM='[TAGS]')

p5 <- df_pacbio %>%
  dplyr::filter(CHROM == chr, N2_length > 1000) %>%
  ggplot(.) +
  aes(xmin=N2_start/1e6, xmax=N2_end/1e6, ymax=Identity+0.5, ymin = Identity-0.5) +
  geom_rect() +
  ggtitle("MY2147") + 
  theme_bw() +
  theme(panel.grid = element_blank(), axis.text = element_text(size=10, color='black'), 
        axis.title=element_text(size=11, color='black'), plot.margin = unit(c(0,2,0,2), "pt")) +
  labs(y="Identity (%)", fill = "") +
  scale_x_continuous(expand = c(0,0)) +
  coord_cartesian(xlim=c(left/1e6, right/1e6)) +
  ylim(90,100.5)

### NIC2 - p6 ####
df_pacbio <- read_tsv(file="../alignments/NIC2_vs_N2.coords") %>%
  dplyr::rename(N2_start = '[S1]', N2_end = '[E1]', CB4856_start = '[S2]', CB4856_end = '[E2]', 
                N2_length = '[LEN 1]', CB4856_length = '[LEN 2]', Identity = "[% IDY]", 
                N2_chrom_length = '[LEN R]', CB4856_chrom_length='[LEN Q]', CHROM='[TAGS]')

p6 <- df_pacbio %>%
  dplyr::filter(CHROM == chr, N2_length > 1000) %>%
  ggplot(.) +
  aes(xmin=N2_start/1e6, xmax=N2_end/1e6, ymax=Identity+0.5, ymin = Identity-0.5) +
  geom_rect() +
  ggtitle("NIC2") + 
  theme_bw() +
  theme(panel.grid = element_blank(), axis.text = element_text(size=10, color='black'), 
        axis.title=element_text(size=11, color='black'), plot.margin = unit(c(0,2,0,2), "pt")) +
  labs(y="Identity (%)", fill = "") +
  scale_x_continuous(expand = c(0,0)) +
  coord_cartesian(xlim=c(left/1e6, right/1e6)) +
  ylim(90,100.5)

### MY2693 - p7 ####
df_pacbio <- read_tsv(file="../alignments/MY2693_vs_N2.coords") %>%
  dplyr::rename(N2_start = '[S1]', N2_end = '[E1]', CB4856_start = '[S2]', CB4856_end = '[E2]', 
                N2_length = '[LEN 1]', CB4856_length = '[LEN 2]', Identity = "[% IDY]", 
                N2_chrom_length = '[LEN R]', CB4856_chrom_length='[LEN Q]', CHROM='[TAGS]')

p7 <- df_pacbio %>%
  dplyr::filter(CHROM == chr, N2_length > 1000) %>%
  ggplot(.) +
  aes(xmin=N2_start/1e6, xmax=N2_end/1e6, ymax=Identity+0.5, ymin = Identity-0.5) +
  geom_rect() +
  ggtitle("MY2693") + 
  theme_bw() +
  theme(panel.grid = element_blank(), axis.text = element_text(size=10, color='black'), 
        axis.title=element_text(size=11, color='black'), plot.margin = unit(c(0,2,0,2), "pt")) +
  labs(y="Identity (%)", fill = "") +
  scale_x_continuous(expand = c(0,0)) +
  coord_cartesian(xlim=c(left/1e6, right/1e6)) +
  ylim(90,100.5)


### EG4725 - p8 ####
df_pacbio <- read_tsv(file="../alignments/EG4725_vs_N2.coords") %>%
  dplyr::rename(N2_start = '[S1]', N2_end = '[E1]', CB4856_start = '[S2]', CB4856_end = '[E2]', 
                N2_length = '[LEN 1]', CB4856_length = '[LEN 2]', Identity = "[% IDY]", 
                N2_chrom_length = '[LEN R]', CB4856_chrom_length='[LEN Q]', CHROM='[TAGS]')

p8 <- df_pacbio %>%
  dplyr::filter(CHROM == chr, N2_length > 1000) %>%
  ggplot(.) +
  aes(xmin=N2_start/1e6, xmax=N2_end/1e6, ymax=Identity+0.5, ymin = Identity-0.5) +
  geom_rect() +
  ggtitle("EG4725") + 
  theme_bw() +
  theme(panel.grid = element_blank(), axis.text = element_text(size=10, color='black'), 
        axis.title=element_text(size=11, color='black'), plot.margin = unit(c(0,2,0,2), "pt")) +
  labs(y="Identity (%)", fill = "") +
  scale_x_continuous(expand = c(0,0)) +
  coord_cartesian(xlim=c(left/1e6, right/1e6)) +
  ylim(90,100.5)

### JU2526 - p9 ####
df_pacbio <- read_tsv(file="../alignments/JU2526_vs_N2.coords") %>%
  dplyr::rename(N2_start = '[S1]', N2_end = '[E1]', CB4856_start = '[S2]', CB4856_end = '[E2]', 
                N2_length = '[LEN 1]', CB4856_length = '[LEN 2]', Identity = "[% IDY]", 
                N2_chrom_length = '[LEN R]', CB4856_chrom_length='[LEN Q]', CHROM='[TAGS]')

p9 <- df_pacbio %>%
  dplyr::filter(CHROM == chr, N2_length > 1000) %>%
  ggplot(.) +
  aes(xmin=N2_start/1e6, xmax=N2_end/1e6, ymax=Identity+0.5, ymin = Identity-0.5) +
  geom_rect() +
  ggtitle("JU2526") + 
  theme_bw() +
  theme(panel.grid = element_blank(), axis.text = element_text(size=10, color='black'), 
        axis.title=element_text(size=11, color='black'), plot.margin = unit(c(0,2,0,2), "pt")) +
  labs(y="Identity (%)", fill = "") +
  scale_x_continuous(expand = c(0,0)) +
  coord_cartesian(xlim=c(left/1e6, right/1e6)) +
  ylim(90,100.5)

### QX1794 - p10 ####
df_pacbio <- read_tsv(file="../alignments/QX1794_vs_N2.coords") %>%
  dplyr::rename(N2_start = '[S1]', N2_end = '[E1]', CB4856_start = '[S2]', CB4856_end = '[E2]', 
                N2_length = '[LEN 1]', CB4856_length = '[LEN 2]', Identity = "[% IDY]", 
                N2_chrom_length = '[LEN R]', CB4856_chrom_length='[LEN Q]', CHROM='[TAGS]')

p10 <- df_pacbio %>%
  dplyr::filter(CHROM == chr, N2_length > 1000) %>%
  ggplot(.) +
  aes(xmin=N2_start/1e6, xmax=N2_end/1e6, ymax=Identity+0.5, ymin = Identity-0.5) +
  geom_rect() +
  ggtitle("QX1794") + 
  theme_bw() +
  theme(panel.grid = element_blank(), axis.text = element_text(size=10, color='black'), 
        axis.title=element_text(size=11, color='black'), plot.margin = unit(c(0,2,0,2), "pt")) +
  labs(y="Identity (%)", fill = "") +
  scale_x_continuous(expand = c(0,0)) +
  coord_cartesian(xlim=c(left/1e6, right/1e6)) +
  ylim(90,100.5)

### DL238 - p11 ####
df_pacbio <- read_tsv(file="../alignments/DL238_vs_N2.coords") %>%
  dplyr::rename(N2_start = '[S1]', N2_end = '[E1]', CB4856_start = '[S2]', CB4856_end = '[E2]', 
                N2_length = '[LEN 1]', CB4856_length = '[LEN 2]', Identity = "[% IDY]", 
                N2_chrom_length = '[LEN R]', CB4856_chrom_length='[LEN Q]', CHROM='[TAGS]')

p11 <- df_pacbio %>%
  dplyr::filter(CHROM == chr, N2_length > 1000) %>%
  ggplot(.) +
  aes(xmin=N2_start/1e6, xmax=N2_end/1e6, ymax=Identity+0.5, ymin = Identity-0.5) +
  geom_rect() +
  ggtitle("DL238") + 
  theme_bw() +
  theme(panel.grid = element_blank(), axis.text = element_text(size=10, color='black'), 
        axis.title=element_text(size=11, color='black'), plot.margin = unit(c(0,2,0,2), "pt")) +
  labs(y="Identity (%)", fill = "") +
  scale_x_continuous(expand = c(0,0)) +
  coord_cartesian(xlim=c(left/1e6, right/1e6)) +
  ylim(90,100.5)

### CB4856 -p12 ####
df_pacbio <- read_tsv(file="../alignments/CB4856_vs_N2.coords") %>%
  dplyr::rename(N2_start = '[S1]', N2_end = '[E1]', CB4856_start = '[S2]', CB4856_end = '[E2]', 
                N2_length = '[LEN 1]', CB4856_length = '[LEN 2]', Identity = "[% IDY]", 
                N2_chrom_length = '[LEN R]', CB4856_chrom_length='[LEN Q]', CHROM='[TAGS]')

p12 <- df_pacbio %>%
  dplyr::filter(CHROM == chr, N2_length > 1000) %>%
  ggplot(.) +
  aes(xmin=N2_start/1e6, xmax=N2_end/1e6, ymax=Identity+0.5, ymin = Identity-0.5) +
  geom_rect() +
  ggtitle("CB4856") + 
  theme_bw() +
  theme(panel.grid = element_blank(), axis.text = element_text(size=10, color='black'), 
        axis.title=element_text(size=11, color='black'), plot.margin = unit(c(0,2,0,2), "pt")) +
  labs(y="Identity (%)", fill = "") +
  scale_x_continuous(expand = c(0,0)) +
  coord_cartesian(xlim=c(left/1e6, right/1e6)) +
  ylim(90,100.5)

### ECA36 -p13 ####
df_pacbio <- read_tsv(file="../alignments/ECA36_vs_N2.coords") %>%
  dplyr::rename(N2_start = '[S1]', N2_end = '[E1]', CB4856_start = '[S2]', CB4856_end = '[E2]', 
                N2_length = '[LEN 1]', CB4856_length = '[LEN 2]', Identity = "[% IDY]", 
                N2_chrom_length = '[LEN R]', CB4856_chrom_length='[LEN Q]', CHROM='[TAGS]')

p13 <- df_pacbio %>%
  dplyr::filter(CHROM == chr, N2_length > 1000) %>%
  ggplot(.) +
  aes(xmin=N2_start/1e6, xmax=N2_end/1e6, ymax=Identity+0.5, ymin = Identity-0.5) +
  geom_rect() +
  ggtitle("ECA36") + 
  theme_bw() +
  theme(panel.grid = element_blank(), axis.text = element_text(size=10, color='black'), 
        axis.title=element_text(size=11, color='black'), plot.margin = unit(c(0,2,0,2), "pt")) +
  labs(y="Identity (%)", fill = "") +
  scale_x_continuous(expand = c(0,0)) +
  coord_cartesian(xlim=c(left/1e6, right/1e6)) +
  ylim(90,100.5)

### ECA396 -p14 ####
df_pacbio <- read_tsv(file="../alignments/ECA396_vs_N2.coords") %>%
  dplyr::rename(N2_start = '[S1]', N2_end = '[E1]', CB4856_start = '[S2]', CB4856_end = '[E2]', 
                N2_length = '[LEN 1]', CB4856_length = '[LEN 2]', Identity = "[% IDY]", 
                N2_chrom_length = '[LEN R]', CB4856_chrom_length='[LEN Q]', CHROM='[TAGS]')

p14 <- df_pacbio %>%
  dplyr::filter(CHROM == chr, N2_length > 1000) %>%
  ggplot(.) +
  aes(xmin=N2_start/1e6, xmax=N2_end/1e6, ymax=Identity+0.5, ymin = Identity-0.4) +
  geom_rect() +
  ggtitle("ECA396") + 
  theme_bw() +
  theme(panel.grid = element_blank(), axis.text = element_text(size=10, color='black'), 
        axis.title=element_text(size=11, color='black'), plot.margin = unit(c(0,2,0,2), "pt")) +
  labs(y="Identity (%)", fill = "") +
  scale_x_continuous(expand = c(0,0)) +
  coord_cartesian(xlim=c(left/1e6, right/1e6)) +
  ylim(90,100.5)

### XZ1516 -p15 ####
df_pacbio <- read_tsv(file="../alignments/XZ1516_vs_N2.coords") %>%
  dplyr::rename(N2_start = '[S1]', N2_end = '[E1]', CB4856_start = '[S2]', CB4856_end = '[E2]', 
                N2_length = '[LEN 1]', CB4856_length = '[LEN 2]', Identity = "[% IDY]", 
                N2_chrom_length = '[LEN R]', CB4856_chrom_length='[LEN Q]', CHROM='[TAGS]')

p15 <- df_pacbio %>%
  dplyr::filter(CHROM == chr, N2_length > 1000) %>%
  ggplot(.) +
  aes(xmin=N2_start/1e6, xmax=N2_end/1e6, ymax=Identity+0.5, ymin = Identity-0.5) +
  geom_rect() +
  ggtitle("XZ1516") + 
  theme_bw() +
  theme(panel.grid = element_blank(), axis.text = element_text(size=10, color='black'), 
        axis.title=element_text(size=11, color='black'), plot.margin = unit(c(0,2,0,2), "pt")) +
  labs(y="Identity (%)", fill = "") +
  scale_x_continuous(expand = c(0,0)) +
  coord_cartesian(xlim=c(left/1e6, right/1e6)) +
  ylim(90,100.5)

# plot
pdf(file="II_3667179-3701405_long_read_alignment.pdf", width=10.11, height=13.85)
grid.arrange(p1, p2, p3, p4, p5, p6, p7, p8, p9, p10, p11, p12, p13, p14, p15, nrow = 15)
dev.off()

