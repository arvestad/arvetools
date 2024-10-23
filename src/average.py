import logging
import sys

def main():
    n_lines = 0
    total = 0
    for line in sys.stdin:
        try:
            val = float(line)
            total += val
            n_lines += 1
        except:
            logging.warning(f'average: Warning, could not parse value {line} as a float.')
    if n_lines == 0:
        logging.warning('average: No numbers parsed from input.')
    else:
        print(total / n_lines)


if __name__ == '__main__':
    main()
    
