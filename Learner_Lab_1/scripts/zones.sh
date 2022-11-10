z=$(aws ec2 describe-regions --all-regions --output json | jq -r ".Regions[].RegionName" | wc -l)

for ((i=0; i<$z; i++))
do
        RES=$(aws ec2 describe-regions --all-regions --output json | jq -r ".Regions[$i].RegionName")
		echo REGION NAME:	$RES
        aws ec2 describe-availability-zones --all-availability-zones --region $RES --output table
done
