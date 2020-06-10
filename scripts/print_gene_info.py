#!/usr/bin/env python2.7
import sys

def print_gene_info(gff3_file, chromosome, start_coordinate, stop_coordinate):
	with open(gff3_file) as gff3:
		for line in gff3:
			columns = line.rstrip("\n").split("\t")
			chr, feature, start, stop, col9 = columns[0], columns[2], int(columns[3]), int(columns[4]), columns[8]
			if chr == chromosome and feature == "gene" and start >= start_coordinate and stop <= stop_coordinate:
				if "biotype=protein_coding" in col9:
					locus = col9.split(";")[2].split("=")[1]
					if locus.startswith("-"):
						locus = '-'
					sequence_name = col9.split(";")[3].split("=")[1]
					print "%s\t%s\t%s\t%s" % (sequence_name, locus, start, stop)

if __name__ == "__main__":
    SCRIPT = "print_gene_info.py"
    try:
        gff3_file = sys.argv[1]
        chromosome = sys.argv[2]
        start_coordinate = int(sys.argv[3])
        stop_coordinate = int(sys.argv[4])
    except IndexError:
        sys.exit("USAGE: ./%s %s" % (SCRIPT, "[gff3_file] [chromosome] [start_coordinate] [stop_coordinate]"))
    # run function
    print_gene_info(gff3_file, chromosome, start_coordinate, stop_coordinate)
