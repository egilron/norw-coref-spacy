source /etc/profile
module purge
module use -a /fp/projects01/ec30/software/easybuild/modules/all/
module load nlpl-cython/0.29.32-foss-2021a-Python-3.9.5

python3 -m venv ~/venvs/spacy-exp --clear
source ~/venvs/spacy-exp/bin/activate
pip install -r requirements.txt

# git clone https://github.com/explosion/projects.git
cd projects/experimental/coref/
# salloc --ntasks=1 --mem-per-cpu=16G --time=02:00:00  --account=ec30 --partition=accel --gres=gpu:1