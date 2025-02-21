# Report Generator in Ruby

This is a Ruby-based application that reads data from a text file, processes the information, and generates a formatted report. It is designed as a learning project to practice file handling, data processing, and error management in Ruby.

---

## Features

- **File Reading**: Reads data from a `.txt` file.
- **Data Processing**: Processes the data into a structured format (array of hashes).
- **Report Generation**: Generates a formatted report based on the processed data.
- **Error Handling**: Gracefully handles errors such as missing files or invalid data formats.
- **Modular Design**: The code is divided into reusable functions for better maintainability.

---

## Prerequisites

- **Ruby**: Ensure you have Ruby installed on your system. You can check by running:
  ```bash
  ruby --version
  ```
  If Ruby is not installed, download it from [ruby-lang.org](https://www.ruby-lang.org/).

---

## Getting Started

### 1. Clone the Repository

Clone this repository to your local machine:
```bash
git clone https://github.com/DragonKzWy/ReportGenerator.git
cd ReportGenerator
```

### 2. Prepare the Input File

Create a `data.txt` file in the project directory with the following format:
```
Name,Age,Location
Alice,30,New York
Bob,25,Los Angeles
Charlie,35,Chicago
```

### 3. Run the Script

Execute the script to generate the report:
```bash
ruby ReportGenerator.rb
```

### 4. Check the Output

The script will generate a `report.txt` file in the same directory with the following content:
```
Data Report
-----------------
Name: Alice, Age: 30, Location: New York
Name: Bob, Age: 25, Location: Los Angeles
Name: Charlie, Age: 35, Location: Chicago
```

---

## Code Structure

The project consists of a single Ruby script (`ReportGenerator.rb`) with the following functions:

1. **`read_file(file_path)`**:
   - Reads the content of a text file.
   - Raises an error if the file is not found.

2. **`process_data(data)`**:
   - Splits the data into lines and processes it into an array of hashes.
   - Each hash represents a row of data with keys from the header.

3. **`generate_report(processed_data)`**:
   - Formats the processed data into a readable report.

4. **`write_report(file_path, report)`**:
   - Writes the generated report to a specified file.

5. **`generate_complete_report(input_file_path, output_file_path)`**:
   - Orchestrates the entire process: reading, processing, generating, and writing the report.
   - Includes error handling for a smooth user experience.

---

## Customization

- **Input File**: Modify the `data.txt` file to include your own data. Ensure the first line contains the headers.
- **Output File**: Change the `output_file_path` variable in the script to save the report to a different location or with a different name.
- **Report Format**: Update the `generate_report` function to customize the report format (e.g., HTML, JSON, or additional calculations).

---

## Error Handling

The script handles the following errors gracefully:
- **File Not Found**: Displays a user-friendly error message if the input file is missing.
- **Invalid Data Format**: Ensures the input file follows the expected format (CSV-like structure).

---

## Contributing

Contributions are welcome! If you find any issues or have suggestions for improvements, please open an issue or submit a pull request.

---

## License

This project is licensed under the MIT License. See the [LICENSE](LICENSE) file for details.

---

## Author

- **Wesley**  
  GitHub: Wesley Santos(https://github.com/DragonKzWy)  

---

## Acknowledgments

- This project was created as part of my journey to learn Ruby and improve my programming skills.
- Special thanks to the Ruby community for providing excellent resources and support.

---

## Screenshots

### Input File (`data.txt`)
```
Name,Age,Location
Alice,30,New York
Bob,25,Los Angeles
Charlie,35,Chicago
```

### Output File (`report.txt`)
```
Data Report
-----------------
Name: Alice, Age: 30, Location: New York
Name: Bob, Age: 25, Location: Los Angeles
Name: Charlie, Age: 35, Location: Chicago
```
