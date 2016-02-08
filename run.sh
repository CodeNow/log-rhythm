if [ $1 = '' ]; then
  echo 'missing LINE_SIZE_IN_BYTES (run.sh <LINE_SIZE_IN_BYTES> <NUM_LINES>)'
  exit 1
fi

LINE_SIZE_IN_BYTES="$1"

if [ $2 = '' ]; then
  echo 'missing NUM_LINES (run.sh <LINE_SIZE_IN_BYTES> <NUM_LINES>)'
  exit 1
fi

NUM_LINES="$2"

for LINE in `seq 1 $NUM_LINES`; do
  echo `base64 /dev/urandom | head -c $LINE_SIZE_IN_BYTES`
done

echo ENDRunnableTestEND