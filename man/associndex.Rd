% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/associndex.R
\name{associndex}
\alias{associndex}
\title{Calculate interaction strength indices}
\usage{
associndex(
  int_data = NULL,
  cover_data = NULL,
  area_sampled = NULL,
  thr_dens = 100
)
}
\arguments{
\item{int_data}{data frame with at least four columns:
\itemize{
\item Study_site (unique name of the study site),
\item Recruit (species of the recruit),
\item Canopy (species of the canopy, or "Open"), and
\item Frequency (number of recruits of that species observed under that
canopy species in any plot, with "Open" representing recruits observed
without a canopy species).
If available, the dimensions of the study plots can be also included as
variables PlotdimX and PlotdimY.
}}

\item{cover_data}{data frame with at least five columns:
\itemize{
\item Study_site (unique name of the study site),
\item Plot (unique name of each plot within a study site),
\item Canopy (species of the canopy),
\item Cover (percentage of cover of that species in that plot), and
\item Sampled_distance_or_area (total area of the plot).
}}

\item{area_sampled}{Total area surveyed in the study site (in m2).}

\item{thr_dens}{Maximum density considered as reasonable. For example, if a canopy species is rare
(e.g. 0.01 m2) but there is one sapling growing beneath, we would estimate a density of 100 saplings/m2
for this interaction, what is likely an overestimate because it seems reasonable that increasing the
effort under this canopy species we would obtain a much lower density estimate. The threshold is set
by default to 100 recruits/m2.}
}
\value{
data frame with indices of pair-wise interaction strength and the data neeeded for their estimation.
Each row corresponds to each pair-wise interaction, and contains the following columns:
Recruit: recruit species.
Canopy: canopy species.
inter_ID: a unique identifier for each pair-wise interaction, combining Study_site, Recruit, and Canopy species.
Study_site: name of the study site.
Canopy_Freq: number of recruits found in the vicinity of the canopy species.
Open_Freq: number of recruits found in open spaces.
Canopy_cover: percentage of the total area sampled in the study site occupied by the canopy species.
Open_cover: percentage of the total area sampled in the study site occupied by Open spaces.
Freq_tot: sum of Canopy_Freq and Open_Freq (total number of recruits of the recruit species in the area sampled
in the study site.
RecrDens_canopy: density of recruits under the canopy species (recruits/m2).
RecrDens_open: density of recruits in open spaces (recruits/m2).
Max_Recr_Density: maximum recruitment density between under the canopy species vs in open spaces.
max_Recr: maximum recruitment density of the recruit species in the study site.
Ns: Normalized Neighbour Suitability index (Mingo, 2014).
NintC: commutative symmetry intensity index (Díaz-Sierra et al., 2017)
NintA:additive symmetry intensity index (Díaz-Sierra et al., 2017)
RII: Relative Interaction Index (Armas et al., 2004).
}
\description{
Calculate interaction strength indices
}
\examples{
data(RecruitNet)
data(CanopyCover)
int_data <- comm_subset(RecruitNet, site = "Ventisquero")
cover_data <- CanopyCover[CanopyCover$Study_site == "Ventisquero", ]
Ventisquero_int <- associndex(int_data, cover_data)

}
