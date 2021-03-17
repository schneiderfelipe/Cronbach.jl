var documenterSearchIndex = {"docs":
[{"location":"","page":"Home","title":"Home","text":"CurrentModule = Cronbach","category":"page"},{"location":"","page":"Home","title":"Home","text":"using Markdown\n\nreadme = read(\"../../README.md\", String)\nMarkdown.parse(readme)","category":"page"},{"location":"","page":"Home","title":"Home","text":"See the complete API below:","category":"page"},{"location":"","page":"Home","title":"Home","text":"","category":"page"},{"location":"","page":"Home","title":"Home","text":"Modules = [Cronbach]","category":"page"},{"location":"#Cronbach.cronbach-Tuple{AbstractArray{T,2} where T}","page":"Home","title":"Cronbach.cronbach","text":"cronbach(Σ::AbstractMatrix)\n\nCalculate Cronbach's alpha. This is also known as tau-equivalent reliability (ho_T). Σ is a covariance matrix (which means it must be square).\n\nExamples\n\njulia> C = [10  6  6  6;  # fictitious data\n             6 11  6  6;\n             6  6 12  6;\n             6  6  6 13];\n\njulia> cronbach(C)\n0.8135593220338984\n\n\n\n\n\n","category":"method"}]
}