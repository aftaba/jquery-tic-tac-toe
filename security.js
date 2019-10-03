
sfdx force:mdapi:listmetadata --metadatatype=EmailFolder --targetusername=$1 --json | jq '.result[].fullName' > temp.txt
input="temp.txt"
echo "  <types>" >> package_temp.xml
while IFS= read -r line
do
    folderName="${line//\"/}" 
    echo "$folderName"
    rm -f temp_1.txt
    sfdx force:mdapi:listmetadata --metadatatype=EmailTemplate --folder=$folderName --targetusername=$1 --json | jq '.result[].fullName' >> temp_1.txt
    while IFS= read -r line1
    do
        templateName="${line1//\"/}"
        echo "    <members>$templateName</members>" >> package_temp.xml
    done < "temp_1.txt"
    rm -f temp_1.txt
done < "$input"
echo "    <name>EmailTemplate</name>" >> package_temp.xml
echo "  </types>" >> package_temp.xml
