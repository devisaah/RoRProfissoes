import tabula


arquivo = tabula.read_pdf("CBO2002_LISTA.PDF", pages="all", stream=True, guess=False)
tabula.convert_into("CBO2002_LISTA.PDF", "lista_cbo.csv", output_format="csv", pages="all", stream=True, guess=False)
