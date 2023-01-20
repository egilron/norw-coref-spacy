import spacy

nlp = spacy.load("en_core_web_sm")
ost = nlp("My cheese !")
coref = nlp.add_pipe("experimental_coref")
processed = coref(ost)