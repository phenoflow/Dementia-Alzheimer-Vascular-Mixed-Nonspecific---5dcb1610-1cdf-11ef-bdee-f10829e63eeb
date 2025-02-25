# Richard Hoile, Naji Tabet, Helen Smith, Stephen Bremner, Jackie Cassell, Elizabeth Ford, 2024.

import sys, csv, re

codes = [{"code":"Eu02z11","system":"readv2"},{"code":"E00..11","system":"readv2"},{"code":"E00..12","system":"readv2"},{"code":"E001z00","system":"readv2"},{"code":"Eu00011","system":"readv2"},{"code":"Eu02z14","system":"readv2"},{"code":"Eu00112","system":"readv2"},{"code":"E001.00","system":"readv2"}];
REQUIRED_CODES = 1;
with open(sys.argv[1], 'r') as file_in, open('dementia-alzheimer-vascular-mixed-nonspecific-potential-cases.csv', 'w', newline='') as file_out:
    csv_reader = csv.DictReader(file_in)
    csv_writer = csv.DictWriter(file_out, csv_reader.fieldnames + ["dementia-alzheimer-vascular-mixed-nonspecific-presenile---primary-identified"])
    csv_writer.writeheader();
    codes_identified = 0;
    for row in csv_reader:
        newRow = row.copy();
        for cell in row:
            # Iterate cell lists (e.g. codes)
            for item in re.findall(r'\(([^,]*)\,', row[cell]):
                if(item in list(map(lambda code: code['code'], codes))): codes_identified+=1;
                if(codes_identified>=REQUIRED_CODES):
                    newRow["dementia-alzheimer-vascular-mixed-nonspecific-presenile---primary-identified"] = "CASE";
                    break;
            if(codes_identified>=REQUIRED_CODES): break;
        if(codes_identified<REQUIRED_CODES):
            newRow["dementia-alzheimer-vascular-mixed-nonspecific-presenile---primary-identified"] = "UNK";
        codes_identified=0;
        csv_writer.writerow(newRow)
