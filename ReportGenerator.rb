# Function to read data from a text file
def read_file(file_path)
  # Check if the file exists
  if File.exist?(file_path)
    # Read and return the file content
    File.read(file_path)
  else
    # Provide a user-friendly error message and exit
    puts "Error: The file '#{file_path}' does not exist. Please check the file path."
    exit(1)
  end
end

# Function to process the data from the file
def process_data(data)
  # Split the data into lines
  lines = data.split("\n")
  # Extract the header (first line) and split it by commas
  header = lines[0].split(",")
  # Process the remaining lines (data rows)
  processed_data = lines[1..-1].map do |line|
    # Split each line by commas to get the values
    values = line.split(",")
    # Combine the header and values into a hash for structured data
    Hash[header.zip(values)]
  end
  # Return the processed data as an array of hashes
  processed_data
end

# Function to generate a formatted report from the processed data
def generate_report(processed_data)
  # Initialize the report with a title
  report = "Data Report\n"
  report += "-----------------\n"
  # Iterate over each data entry and format it
  processed_data.each do |entry|
    # Convert each key-value pair into a string and join them with commas
    report += entry.map { |key, value| "#{key}: #{value}" }.join(", ") + "\n"
  end
  # Return the formatted report
  report
end

# Function to write the generated report to a file
def write_report(file_path, report)
  # Open the file in write mode and write the report content
  File.open(file_path, 'w') do |file|
    file.write(report)
  end
end

# Main function to handle the entire report generation process
def generate_complete_report(input_file_path, output_file_path)
  begin
    # Debug: Print the current working directory
    puts "Current working directory: #{Dir.pwd}"

    # Debug: Check if the input file exists
    if File.exist?(input_file_path)
      puts "File found: #{input_file_path}"
    else
      puts "File not found: #{input_file_path}"
      exit(1)
    end

    # Step 1: Read the input file
    puts "Reading file: #{input_file_path}"
    data = read_file(input_file_path)

    # Step 2: Process the data
    processed_data = process_data(data)

    # Step 3: Generate the report
    report = generate_report(processed_data)

    # Step 4: Write the report to the output file
    write_report(output_file_path, report)
    puts "Report successfully generated and saved to #{output_file_path}"
  rescue => e
    # Handle any errors that occur during the process
    puts "Error generating report: #{e.message}"
  end
end

# Example usage
input_file_path = 'data.txt'  # Path to the input file
output_file_path = 'report.txt'  # Path to the output file
generate_complete_report(input_file_path, output_file_path)