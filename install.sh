for f in *rc* *conf*
do

	ln -s $(pwd)/$f ~/.$f
done