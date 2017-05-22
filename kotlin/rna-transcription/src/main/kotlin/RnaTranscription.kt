
fun transcribeToRna(dna: String = "") : String {

    val arn = "ATCG"

    if(dna.isNullOrBlank()){
        return dna
    }
    else{
        var transcription = ""
        for(c in dna){
            if(c.equals(arn[0])){
                transcription+="U"
            }

            if(c.equals(arn[1])){
                transcription+="A"
            }

            if(c.equals(arn[2])){
                transcription+="G"
            }

            if(c.equals(arn[3])){
                transcription+="C"
            }
        }
        println(transcription)
        return transcription
    }
}
