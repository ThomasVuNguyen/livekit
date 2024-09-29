#Create new environment (run once)
python3 -m venv myenv

# Run the environment (run everytime)
source myenv/bin/activate
```sh
# Run the environment (run everytime)
myenv\Scripts\activate
```
# add dependency to requirements.txt (run before deployment)
pip freeze > requirements.txt

# Install from requirements.txt 
pip install -r requirements.txt