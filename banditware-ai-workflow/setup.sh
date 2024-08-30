conda init bash
source ~/.bashrc
conda remove --name python_env --all -y
conda env create --name python_env -f python_env.yml
source activate python_env

echo AWS_S3_BUCKET="mlflow"
echo MLFLOW_TRACKING_URI="http://localhost:5000"

python -m ipykernel install --user --name python_env --display-name "Python (python_env)"

