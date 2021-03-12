cwlVersion: v1.0
class: CommandLineTool
label: Battenberg
baseCommand: [ Rscript /usr/local/bin/battenberg_wgs.R ]
requirements:
  - class: DockerRequirement
    dockerPull: jcrowdis/battenberg:1.7

inputs:
  tumor:
    type: string
    inputBinding:
      prefix: -t
  normal:
    type: string
    inputBinding:
      prefix: -n
  tumor_bam:
    type: File
    inputBinding:
      prefix: --tb
  normal_bam:
    type: File
    inputBinding:
      prefix: --nb
  refdir
    type: Directory
    inputBinding:
      prefix: --ref
  sex:
    type: string
    default: female
    inputBinding:
      prefix: --sex
  outdir:
    type: Directory
    default: ./
    inputBinding:
      prefix: -o
  skip_allelecount:
    type: boolean
    default: false
    inputBinding:
      prefix: --skip_allelecount
  skip_preprocessing:
    type: boolean
    default: false
    inputBinding:
      prefix: --skip_preprocessing
  skip_phasing:
    type: boolean
    default: false
    inputBinding:
      prefix: --skip_phasing
  cpu:
    type: int
    default: 8
    inputBinding:
      prefix: --cpu
  bp:
    type: File?
    inputBinding:
      prefix: --bp

outputs:
  subclones:
    type: File
    outputBinding:
      glob: $(inputs.tumor)_subclones.txt
  rho_psi:
    type: File
    outputBinding:
      glob: $(inputs.tumor)_rho_and_psi.txt
  profile:
    type: File
    outputBinding:
      glob: $(inputs.tumor)_BattenbergProfile*png
  sublones_chr:
    type: File
    outputBinding:
      glob: $(inputs.tumor)_subclones_chr*.png
  distance:
    type: File
    outputBinding:
      glob: $(inputs.tumor)_distance.png
  qc_tumour:
    type: File
    outputBinding:
      glob: $(inputs.tumor).tumour.png
  qc_germline:
    type: File
    outputBinding:
      glob: $(inputstumor).germline.png
  qc_coverage:
    type: File
    outputBinding:
      glob: $(inputs.tumor)_coverage.png
  qc_allele_ratio:
    type: File
    outputBinding:
      glob: $(inputs.tumor)_alleleratio.png
  fig_het_data:
    type: File
    outputBinding:
      glob: $(inputs.tumor)_chr*_heterozygousData.png
  fig_rafseg:
    type: File
    outputBinding:
      glob: $(inputs.tumor)_RAFseg_chr*.png
  fig_segchr:
    type: File
    outputBinding:
      glob: $(inputs.tumor)_segment_chr*.png
  fig_nonrounded:
    type: File
    outputBinding:
      glob: $(inputs.tumor)_nonroundedprofile.png
  fig_copynumber:
    type: File
    outputBinding:
      glob: $(inputs.tumor)_copynumberprofile.png
