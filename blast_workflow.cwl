#!/usr/bin/env cwl-runner

# Nested CWL file that runs BlastP twice and then runs the RBH_python script to compares results in tab delimited file.
# This workflow has three steps:
# 1) run BLAST for sequence 1
# 2) run BLAST for sequence 2
# 3) run a python script for RBH

cwlVersion: v1.0
class: Workflow
label: BlastP_RBH_workflow
inputs:
  user_db_dir: landmark_v5
    user_query: File
  user_search_db:   string
  user_parse_results: string
  user_outfmt_flag: string
  user_length_flag: int
  user_percent_flag: float
  user_idsonly_flag: int



outputs:
  blast_out_class:
    type: File
    outputSource: parse_blast_step/parse_blast_results

requirements:
  SubworkflowFeatureRequirement: {}

steps:
  blast_step1:
    run: blastp_docker.cwl
    in:
      query_flag: user_query
      db_flag: user_search_db
      blastdb_dir: user_db_dir
      outfmt_flag: user_outfmt_flag
    out: [4896_to_559292_blastp.out]

  blast_step2:
    run: blastp_docker.cwl
    in:
      query_flag: user_query
      db_flag: user_search_db
      blastdb_dir: user_db_dir
      outfmt_flag: user_outfmt_flag
    out: [559292_to_4896_to_blastp.out]

  rbh_python:
    run: python_step.cwl
    in:
      length_flag: user_length_flag
      percent_flag: user_percent_flag
      idsonly_flag: user_idsonly_flag
      in_flag: blast_step/blast_results
      out_flag: user_parse_results
    out: [parse_blast_results]
