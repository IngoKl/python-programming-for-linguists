import wget
import zipfile

def download_coca():
    corpora_folder = '/python-programming-for-linguists/2020/data/'
    sampler_url = 'https://www.corpusdata.org/coca/samples/coca-samples-text.zip'
    dl_target = '/python-programming-for-linguists/2020/data/coca/coca-samples-text.zip'
    wget.download(sampler_url, dl_target)

    with zipfile.ZipFile(dl_target, 'r') as zip_ref:
        zip_ref.extractall(corpora_folder)

download_coca()