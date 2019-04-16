class: CommandLineTool
cwlVersion: v1.0
doc: Process two tabular BLAST outputs
# Path needs to be changed prior to demo
baseCommand: [python, /home/amanda.ruby/galaxy_blast/tools/blast_rbh/blast_rbh_report.py]

inputs:
    blast_output_1:
        type: File
        inputBinding:
            position: 2
    blast_output_2:
        type: File
        inputBinding:
            position: 3
    out_file:
        type: string
        inputBinding:
            position: 1
            prefix: -o

outputs:
    rbh:
        type: File
        outputBinding:
            glob: $(inputs.out_file)


