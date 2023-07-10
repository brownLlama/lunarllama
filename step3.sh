# Updating LunarVim dependendies
npm install -g npm@9.8.0
python3.11 -m pip install --upgrade pip

echo "export PATH=/home/sanu_maharjan/.local/bin:$PATH" >> ~/.zshrc
echo 'alias lvim="sudo -E env \"PATH=$PATH\" /home/sanu_maharjan/.local/bin/lvim"' >> ~/.zshrc
source ~/.zshrc

# cd .config
# git clone https://github.com/brownLlama/lunarllama.git
# cp -R lunarllama/. lvim/
# rm -rf lunarllama
