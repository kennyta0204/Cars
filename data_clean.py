import pandas as pd

def clean(input_file):
    try:
        df = pd.read_csv(input_file)

        df.max_year = df.max_year.fillna(9999)

        DATATYPES = {'make':str, 'name':str, 'edition':str, 'min_year':int, 'max_year':int, 'hp':int, 'cylinder':int, 'displacement':float, 'aspiration':str, 'transmission':str, 'drive':str, 'body':str, 'door':int}
        df = df.astype(dtype = DATATYPES)

        for col in ['make', 'name', 'edition', 'aspiration', 'transmission', 'drive', 'body']:
            df[col] = df[col].str.lower()

        return df
    except:
        print('Error occured while cleaning data. Please see if there are any missing fields')

if __name__ == '__main__':
    import argparse

    parser = argparse.ArgumentParser()
    parser.add_argument('input', help = 'Raw car file (CSV)')
    parser.add_argument('output', help = 'Cleaned data file (CSV)')
    args = parser.parse_args()

    cleaned = clean(args.input)
    cleaned.to_csv(args.output, index= False)