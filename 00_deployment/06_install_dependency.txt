# Commands run from within an admin terminal within the JupyterHub

## Install python dependency
sudo -E pip install numpy==1.25.2
sudo -E pip install matplotlib==3.7.2
sudo -E pip install scipy==1.11.1

sudo -E pip install pandas
sudo -E pip install scikit-learn
sudo -E pip install seaborn

## From within an admin terminal within the JupyterHub
# sudo R
# R> if (!require("BiocManager", quietly = TRUE))
# R>   install.packages("BiocManager")

# R> install.packages("devtools")
# R> remotes::install_version('ggplot2', version='3.3.6')
# R> BiocManager::install("clusterProfiler")

# R> BiocManager::install("org.Hs.eg.db")

# R> install.packages("pheatmap")
# R> install.packages('Seurat')

## Not used
##devtools::install_github("YuLab-SMU/ggtree")

# GWAS
wget https://s3.amazonaws.com/plink2-assets/alpha5/plink2_linux_x86_64_20230923.zip
unzip plink2_linux_x86_64_20230923.zip
chmod +x plink2
#./plink2 --help
sudo cp plink2 /opt/tljh/user/bin/

mkdir gwas_data
cd gwas_data
wget https://zzz.bwh.harvard.edu/plink/hapmap1.zip
unzip hapmap1.zip
sudo mkdir -p /srv/data/gwas_data
sudo cp * /srv/data/gwas_data/

# This will place a symlink in all NEW user folders
cd /etc/skel
sudo ln -s /srv/data/gwas_data gwas_data

# Otherwise each student can run this locally
ln -s /srv/data/gwas_data gwas_data
