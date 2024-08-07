% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/comm_summary.R
\name{comm_summary}
\alias{comm_summary}
\title{Summarise metadata of a community}
\usage{
comm_summary(dataset = NULL)
}
\arguments{
\item{dataset}{A data frame for a single site (or a group of sites).
For example, a data frame created with \code{\link[=comm_subset]{comm_subset()}}. This function relies on
the variable names used in the original RecruitNet database, so it cannot be used
with other datasets unless they follow exactly the ordering and the names used in RecruitNet.}
}
\value{
A data frame with summary information of the local community/ies.
}
\description{
This function provides a summary of the characteristics (i.e. metadata) of
a local community.
}
\examples{
All_sites_details <- comm_summary(RecruitNet)
Ventisquero <- comm_subset(RecruitNet, site = "Ventisquero")
Ventisquero_details <- comm_summary(Ventisquero)
}
