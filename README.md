# BIO-IT 2019 Hackathon: BLAST, Pipelines, and FAIR

### What's happening?

This team will build pipelines using a framework (Common Workflow Language or CWL) that should make the resulting pipeline more FAIR (not to mention understandable and robust).  The idea will be to build the pipeline with modules, one of which runs BLAST, that accomplish the task.  Some modules already exist (see the blast-pipelines directory listed below), but we'll certainly need to write more.  

Please see https://github.com/ncbi/cwl-demos/blob/master/blast-pipelines/README.md for a quick description and the contents of https://github.com/ncbi/cwl-demos/tree/master/blast-pipelines for some CWL modules.  You may want to start with the CWL [Video][cwl_video] first though.

### Which Pipelines?

We'll be working on pipelines with a workflow along the lines of "do something", run BLAST of some flavor, "do something else".  I've come up with a few pipelines that fit the bill (see below), but team members should come with their own suggestions.  I'll add a few more as we get closer to the hackathon.

1.) Reciprocal Best Hits: https://github.com/peterjc/galaxy_blast/tree/master/tools/blast_rbh  I know it says "galaxy" but these scripts can run outside of galaxy.  (https://www.ncbi.nlm.nih.gov/pubmed/26336600)

2.) Outlier detection in BLAST hits: https://github.com/shahnidhi/outlier_in_BLAST_hits  (https://www.ncbi.nlm.nih.gov/pubmed/29588650)

3.) SPADE: https://github.com/yachielab/SPADE (https://www.ncbi.nlm.nih.gov/pubmed/30304510)

### Where will we do this?

We'll be using some recently developed BLAST cloud resources on GCS that includes a dockerized version of BLAST and databases hosted on the cloud provider.  There will be lots of coding and even some thinking.  Because of the CWL, there will also be lots of YAML and JSON!  

Take a look at the links on this page to find out more.  The CWL video (below) is a good introduction to CWL.




### Resources
* [CWL User Guide][cwl_man] 
* [Video on CWL][cwl_video] 
* [BLAST docker documentation][docker_man]
* [Troubleshooting docker](https://github.com/ncbi/docker/blob/master/blast/README.md#troubleshooting)
* [NCBI workbench documentation][workbench_man]
* [Using BLAST in the Cloud][blast_in_cloud]
* [Using BLAST Well][blast_well]
* [FAIR principles][fair_principles]

[cwl_man]: https://www.commonwl.org/user_guide/
[cwl_video]: https://www.youtube.com/watch?v=jfQb1HJWRac&feature=youtu.be
[docker_man]: https://github.com/ncbi/docker/blob/master/blast/README.md
[workbench_man]: https://github.com/ncbi/docker/tree/master/ncbi-workbench
[fair_principles]: https://www.force11.org/group/fairgroup/fairprinciples
[cwl_mods]: https://github.com/common-workflow-language/workflows/tree/master/tools
[blast_in_cloud]: https://docs.google.com/presentation/d/1kgIiF2jGZwqLZ1eqyM8ihMtZEwd8w3Bq3IwTIa2AQ-0/edit#slide=id.p
[blast_well]: https://ftp.ncbi.nlm.nih.gov/pub/education/public_webinars/2018/10Oct03_Using_BLAST/Using_BLAST_Well2.pdf

