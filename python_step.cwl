class: CommandLineTool
cwlVersion: v1.0
doc: Process two tabular BLAST outputs
baseCommand: [python, /home/amanda.ruby/galaxy_blast/tools/blast_rbh/blast_rbh_report.py]

inputs:
    blast_output_1:
        type: string
        default: "/home/madden/4896.tab"
        inputBinding:
            position: 2
    blast_output_2:
        type: string
        default: "/home/madden/559292.tab"
        inputBinding:
            position: 3
    out_file:
        type: string
        default: "rbh_output.tab"
        inputBinding:
            position: 1
            prefix: -o

outputs:
    rbh:
        type: File
        outputBinding:
            glob: $(inputs.out_file)


