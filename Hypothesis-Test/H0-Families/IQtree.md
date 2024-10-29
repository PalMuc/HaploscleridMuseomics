# IQtree Hypothesis Testing: settings and parameters

we used IQ-TREE 2 version 2.1.4-β (Minh et al. 2020).


## To generate the best ML
```python
iqtree2 -s Backbone_25p.phylip -m GTR+G+F -T 24 --prefix best_ml
```

## To test the different tree hypotheses
```python
iqtree2 -s Backbone_25p.phylip -m GTR+G+F -T 24 -z haplo_genera_monophyletic.tre -n 0 -zb 10000 -zw -au
```


## Reference
Minh, B. Q., Schmidt, H. A., Chernomor, O., Schrempf, D., Woodhams, M. D., Von Haeseler, A., & Lanfear, R. (2020). IQ-TREE 2: new models and efficient methods for phylogenetic inference in the genomic era. Molecular biology and evolution, 37(5), 1530-1534.
