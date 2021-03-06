% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/prepare_SNP6.R
\name{cel2baf.logr}
\alias{cel2baf.logr}
\title{Transform cel files into BAF and LogR}
\usage{
cel2baf.logr(
  normal_cel_file,
  tumour_cel_file,
  output_file,
  snp6_reference_info_file,
  apt.probeset.genotype.exe = "apt-probeset-genotype",
  apt.probeset.summarize.exe = "apt-probeset-summarize",
  norm.geno.clust.exe = "normalize_affy_geno_cluster.pl"
)
}
\arguments{
\item{normal_cel_file}{String that points to the cel file containing the matched normal data}

\item{tumour_cel_file}{String that points to the cel file containing the tumour data}

\item{output_file}{String where the BAF and LogR should be written}

\item{snp6_reference_info_file}{String to the SNP6 reference info file that comes with Battenberg SNP6}

\item{apt.probeset.genotype.exe}{Path to the apt.probeset.genotype executable (Default $PATH)}

\item{apt.probeset.summarize.exe}{Path to the apt.probeset.summarize executable (Default $PATH)}

\item{norm.geno.clust.exe}{Path to the normalize_affy_geno_cluster.pl script (Default $PATH)}
}
\description{
This function takes a cel file from a tumour and a matched normal and
extracts the BAF and LogR, which is saved into a single file. The \code{gc.correct}
function can read that file and transforms it into separate BAF and LogR files that
both Battenberg and ASCAT can use.
}
\author{
sd11
}
