#!/data/data/com.termux/files/usr/bin/bash

# Define yellow color and reset
YELLOW='\033[1;33m'
RESET='\033[0m'

echo -e "${YELLOW}"
echo "==============================="
echo "     Moranda LocallyTools      "
echo "==============================="
echo -e "${RESET}"
echo "Choose a category:"
echo "1) Image Tools"
echo "2) PDF Tools"
echo "3) Developer Tools"
echo "0) Exit"
read -p "Enter choice: " main_choice

if [ "$main_choice" == "1" ]; then
    echo -e "\n== Image Tools =="
    echo "1) Convert to JPEG"
    echo "2) Resize Image"
    echo "3) Compress Image"
    echo "4) Rotate Image"
    echo "5) Image to Base64"
    read -p "Enter choice: " img_choice

    case $img_choice in
        1)
            read -p "Input file: " infile
            read -p "Output file (e.g. out.jpg): " outfile
            magick "$infile" "$outfile"
            echo "Converted to JPEG!"
            ;;
        2)
            read -p "Input file: " infile
            read -p "Width (e.g. 800): " width
            read -p "Height (e.g. 600): " height
            read -p "Output file: " outfile
            magick "$infile" -resize ${width}x${height} "$outfile"
            echo "Resized!"
            ;;
        3)
            read -p "Input file: " infile
            read -p "Quality (1-100): " quality
            read -p "Output file: " outfile
            magick "$infile" -quality $quality "$outfile"
            echo "Compressed!"
            ;;
        4)
            read -p "Input file: " infile
            read -p "Degrees (e.g. 90): " degrees
            read -p "Output file: " outfile
            magick "$infile" -rotate $degrees "$outfile"
            echo "Rotated!"
            ;;
        5)
            read -p "Input file: " infile
            base64 "$infile" > "$infile.base64.txt"
            echo "Base64 saved to $infile.base64.txt"
            ;;
        *) echo "Invalid choice";;
    esac

elif [ "$main_choice" == "2" ]; then
    echo -e "\n== PDF Tools =="
    echo "1) PDF to JPEG"
    echo "2) PDF to PNG"
    read -p "Enter choice: " pdf_choice

    case $pdf_choice in
        1)
            read -p "Input PDF: " infile
            pdftoppm "$infile" output -jpeg
            echo "Saved as output-1.jpg, output-2.jpg, etc."
            ;;
        2)
            read -p "Input PDF: " infile
            pdftoppm "$infile" output -png
            echo "Saved as output-1.png, output-2.png, etc."
            ;;
        *) echo "Invalid choice";;
    esac

elif [ "$main_choice" == "3" ]; then
    echo -e "\n== Developer Tools =="
    echo "1) Format CSS file"
    echo "2) Format JSON file"
    read -p "Enter choice: " dev_choice

    case $dev_choice in
        1)
            read -p "Input CSS file: " infile
            prettier --write "$infile"
            echo "Formatted!"
            ;;
        2)
            read -p "Input JSON file: " infile
            prettier --write "$infile"
            echo "Formatted!"
            ;;
        *) echo "Invalid choice";;
    esac

elif [ "$main_choice" == "0" ]; then
    echo "Goodbye!"
else
    echo "Invalid choice"
fi
