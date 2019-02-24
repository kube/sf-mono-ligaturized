INPUT_FOLDER=original
OUTPUT_FOLDER=ligaturized

for file in $INPUT_FOLDER/*.otf
do
  docker run --rm \
    -v $(pwd)/$file:/input \
    -v $(pwd)/$OUTPUT_FOLDER:/output \
    --user $(id -u) \
    rfvgyhn/ligaturizer
done
