import re

def extract_pdf_text(file_path):
    with open(file_path, 'rb') as f:
        content = f.read()
    
    # Simple regex to find text within parentheses (common in PDF text streams)
    # This is not perfect but might grab the content we need
    text_content = re.findall(b'\((.*?)\)', content)
    
    decoded_text = []
    for text in text_content:
        try:
            # Attempt to decode as UTF-8
            decoded_text.append(text.decode('utf-8'))
        except:
            pass
            
    return '\n'.join(decoded_text)

print(extract_pdf_text('Hisham Reffat.pdf'))
