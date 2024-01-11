#It removes lines containing the 'X' character and updates the original file with this modified content.
for file in *.words; do                                                              
    grep -v 'X' "$file" > tmpfile && mv tmpfile "$file"
done

# CHANGE FİLE FORMAT AND SAVE
for file in *.words; do
    fasta_file="${file%.words}.fas"
    
awk '{ print ">"NR"\n"$0 }' "$file" > "$fasta_file"

done