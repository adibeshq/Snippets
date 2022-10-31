## Remove all route containing `linkdown`

```bash
ip route | grep linkdown | while read -r line ; do
    l=$(echo $line | sed 's/linkdown//g' )
    echo "Processing $l"
    command="sudo ip route del $l"
    eval $command
done
```
