module AWS.Services.Polly
    exposing
        ( config
        , deleteLexicon
        , describeVoices
        , DescribeVoicesOptions
        , getLexicon
        , listLexicons
        , ListLexiconsOptions
        , putLexicon
        , synthesizeSpeech
        , SynthesizeSpeechOptions
        , DeleteLexiconOutput
        , DescribeVoicesOutput
        , Gender(..)
        , GetLexiconOutput
        , InvalidLexiconException
        , InvalidNextTokenException
        , InvalidSampleRateException
        , InvalidSsmlException
        , LanguageCode(..)
        , Lexicon
        , LexiconAttributes
        , LexiconDescription
        , LexiconNotFoundException
        , LexiconSizeExceededException
        , ListLexiconsOutput
        , MaxLexemeLengthExceededException
        , MaxLexiconsNumberExceededException
        , OutputFormat(..)
        , PutLexiconOutput
        , ServiceFailureException
        , SynthesizeSpeechOutput
        , TextLengthExceededException
        , TextType(..)
        , UnsupportedPlsAlphabetException
        , UnsupportedPlsLanguageException
        , Voice
        , VoiceId(..)
        )

{-| <p>Amazon Polly is a web service that makes it easy to synthesize speech from text.</p> <p>The Amazon Polly service provides API operations for synthesizing high-quality speech from plain text and Speech Synthesis Markup Language (SSML), along with managing pronunciations lexicons that enable you to get the best results for your application domain.</p>

@docs config

## Table of Contents

* [Operations](#operations)
* [Responses](#responses)
* [Records](#records)
* [Unions](#unions)
* [Exceptions](#exceptions)

## Operations

* [deleteLexicon](#deleteLexicon)
* [describeVoices](#describeVoices)
* [DescribeVoicesOptions](#DescribeVoicesOptions)
* [getLexicon](#getLexicon)
* [listLexicons](#listLexicons)
* [ListLexiconsOptions](#ListLexiconsOptions)
* [putLexicon](#putLexicon)
* [synthesizeSpeech](#synthesizeSpeech)
* [SynthesizeSpeechOptions](#SynthesizeSpeechOptions)


@docs deleteLexicon,describeVoices,DescribeVoicesOptions,getLexicon,listLexicons,ListLexiconsOptions,putLexicon,synthesizeSpeech,SynthesizeSpeechOptions

## Responses

* [DeleteLexiconOutput](#DeleteLexiconOutput)
* [DescribeVoicesOutput](#DescribeVoicesOutput)
* [GetLexiconOutput](#GetLexiconOutput)
* [ListLexiconsOutput](#ListLexiconsOutput)
* [PutLexiconOutput](#PutLexiconOutput)
* [SynthesizeSpeechOutput](#SynthesizeSpeechOutput)


@docs DeleteLexiconOutput,DescribeVoicesOutput,GetLexiconOutput,ListLexiconsOutput,PutLexiconOutput,SynthesizeSpeechOutput

## Records

* [Lexicon](#Lexicon)
* [LexiconAttributes](#LexiconAttributes)
* [LexiconDescription](#LexiconDescription)
* [Voice](#Voice)


@docs Lexicon,LexiconAttributes,LexiconDescription,Voice

## Unions

* [Gender](#Gender)
* [LanguageCode](#LanguageCode)
* [OutputFormat](#OutputFormat)
* [TextType](#TextType)
* [VoiceId](#VoiceId)


@docs Gender,LanguageCode,OutputFormat,TextType,VoiceId

## Exceptions

* [InvalidLexiconException](#InvalidLexiconException)
* [InvalidNextTokenException](#InvalidNextTokenException)
* [InvalidSampleRateException](#InvalidSampleRateException)
* [InvalidSsmlException](#InvalidSsmlException)
* [LexiconNotFoundException](#LexiconNotFoundException)
* [LexiconSizeExceededException](#LexiconSizeExceededException)
* [MaxLexemeLengthExceededException](#MaxLexemeLengthExceededException)
* [MaxLexiconsNumberExceededException](#MaxLexiconsNumberExceededException)
* [ServiceFailureException](#ServiceFailureException)
* [TextLengthExceededException](#TextLengthExceededException)
* [UnsupportedPlsAlphabetException](#UnsupportedPlsAlphabetException)
* [UnsupportedPlsLanguageException](#UnsupportedPlsLanguageException)


@docs InvalidLexiconException,InvalidNextTokenException,InvalidSampleRateException,InvalidSsmlException,LexiconNotFoundException,LexiconSizeExceededException,MaxLexemeLengthExceededException,MaxLexiconsNumberExceededException,ServiceFailureException,TextLengthExceededException,UnsupportedPlsAlphabetException,UnsupportedPlsLanguageException

-}

import AWS
import AWS.Config
import AWS.Http
import Json.Decode as JD
import Json.Decode.Pipeline as JDP
import Json.Encode as JE
import Date exposing (Date)
import Json.Decode.Extra as JDX


{-| Configuration for this service
-}
config : AWS.ServiceConfig
config =
    AWS.Config.Service
        "polly"
        "2016-06-10"
        "undefined"
        "AWSPOLLY_20160610."
        "polly.amazonaws.com"
        "us-east-1"
        |> AWS.ServiceConfig



-- OPERATIONS

{-| <p>Deletes the specified pronunciation lexicon stored in an AWS Region. A lexicon which has been deleted is not available for speech synthesis, nor is it possible to retrieve it using either the <code>GetLexicon</code> or <code>ListLexicon</code> APIs.</p> <p>For more information, see <a href="http://docs.aws.amazon.com/polly/latest/dg/managing-lexicons.html">Managing Lexicons</a>.</p>

__Required Parameters__

* `name` __:__ `String`


-}
deleteLexicon :
    String
    -> AWS.Request DeleteLexiconOutput
deleteLexicon name =
    AWS.Http.unsignedRequest
        "DeleteLexicon"
        "DELETE"
        ("/v1/lexicons/" ++ name ++ "")
        (AWS.Http.JsonBody
            JE.null
        )
        deleteLexiconOutputDecoder
        |> AWS.UnsignedRequest



{-| <p>Returns the list of voices that are available for use when requesting speech synthesis. Each voice speaks a specified language, is either male or female, and is identified by an ID, which is the ASCII version of the voice name. </p> <p>When synthesizing speech ( <code>SynthesizeSpeech</code> ), you provide the voice ID for the voice you want from the list of voices returned by <code>DescribeVoices</code>.</p> <p>For example, you want your news reader application to read news in a specific language, but giving a user the option to choose the voice. Using the <code>DescribeVoices</code> operation you can provide the user with a list of available voices to select from.</p> <p> You can optionally specify a language code to filter the available voices. For example, if you specify <code>en-US</code>, the operation returns a list of all available US English voices. </p> <p>This operation requires permissions to perform the <code>polly:DescribeVoices</code> action.</p>

__Required Parameters__



-}
describeVoices :
    (DescribeVoicesOptions -> DescribeVoicesOptions)
    -> AWS.Request DescribeVoicesOutput
describeVoices setOptions =
  let
    options = setOptions (DescribeVoicesOptions Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "DescribeVoices"
        "GET"
        "/v1/voices"
        (AWS.Http.QueryParams
            [
            ]
        )
        describeVoicesOutputDecoder
        |> AWS.UnsignedRequest


{-| Options for a describeVoices request
-}
type alias DescribeVoicesOptions =
    { languageCode : Maybe LanguageCode
    , nextToken : Maybe String
    }



{-| <p>Returns the content of the specified pronunciation lexicon stored in an AWS Region. For more information, see <a href="http://docs.aws.amazon.com/polly/latest/dg/managing-lexicons.html">Managing Lexicons</a>.</p>

__Required Parameters__

* `name` __:__ `String`


-}
getLexicon :
    String
    -> AWS.Request GetLexiconOutput
getLexicon name =
    AWS.Http.unsignedRequest
        "GetLexicon"
        "GET"
        ("/v1/lexicons/" ++ name ++ "")
        (AWS.Http.QueryParams
            [
            ]
        )
        getLexiconOutputDecoder
        |> AWS.UnsignedRequest



{-| <p>Returns a list of pronunciation lexicons stored in an AWS Region. For more information, see <a href="http://docs.aws.amazon.com/polly/latest/dg/managing-lexicons.html">Managing Lexicons</a>.</p>

__Required Parameters__



-}
listLexicons :
    (ListLexiconsOptions -> ListLexiconsOptions)
    -> AWS.Request ListLexiconsOutput
listLexicons setOptions =
  let
    options = setOptions (ListLexiconsOptions Nothing)
  in
    AWS.Http.unsignedRequest
        "ListLexicons"
        "GET"
        "/v1/lexicons"
        (AWS.Http.QueryParams
            [
            ]
        )
        listLexiconsOutputDecoder
        |> AWS.UnsignedRequest


{-| Options for a listLexicons request
-}
type alias ListLexiconsOptions =
    { nextToken : Maybe String
    }



{-| <p>Stores a pronunciation lexicon in an AWS Region. If a lexicon with the same name already exists in the region, it is overwritten by the new lexicon. Lexicon operations have eventual consistency, therefore, it might take some time before the lexicon is available to the SynthesizeSpeech operation.</p> <p>For more information, see <a href="http://docs.aws.amazon.com/polly/latest/dg/managing-lexicons.html">Managing Lexicons</a>.</p>

__Required Parameters__

* `name` __:__ `String`
* `content` __:__ `String`


-}
putLexicon :
    String
    -> String
    -> AWS.Request PutLexiconOutput
putLexicon name content =
    AWS.Http.unsignedRequest
        "PutLexicon"
        "PUT"
        ("/v1/lexicons/" ++ name ++ "")
        (AWS.Http.JsonBody
            JE.null
        )
        putLexiconOutputDecoder
        |> AWS.UnsignedRequest



{-| <p>Synthesizes UTF-8 input, plain text or SSML, to a stream of bytes. SSML input must be valid, well-formed SSML. Some alphabets might not be available with all the voices (for example, Cyrillic might not be read at all by English voices) unless phoneme mapping is used. For more information, see <a href="http://docs.aws.amazon.com/polly/latest/dg/how-text-to-speech-works.html">How it Works</a>.</p>

__Required Parameters__

* `outputFormat` __:__ `OutputFormat`
* `text` __:__ `String`
* `voiceId` __:__ `VoiceId`


-}
synthesizeSpeech :
    OutputFormat
    -> String
    -> VoiceId
    -> (SynthesizeSpeechOptions -> SynthesizeSpeechOptions)
    -> AWS.Request SynthesizeSpeechOutput
synthesizeSpeech outputFormat text voiceId setOptions =
  let
    options = setOptions (SynthesizeSpeechOptions Nothing Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "SynthesizeSpeech"
        "POST"
        "/v1/speech"
        (AWS.Http.JsonBody
            JE.null
        )
        synthesizeSpeechOutputDecoder
        |> AWS.UnsignedRequest


{-| Options for a synthesizeSpeech request
-}
type alias SynthesizeSpeechOptions =
    { lexiconNames : Maybe (List String)
    , sampleRate : Maybe String
    , textType : Maybe TextType
    }




{-| Type of HTTP response from deleteLexic
-}
type alias DeleteLexiconOutput =
    { 
    }



deleteLexiconOutputDecoder : JD.Decoder DeleteLexiconOutput
deleteLexiconOutputDecoder =
    JDP.decode DeleteLexiconOutput



{-| Type of HTTP response from describeVoic
-}
type alias DescribeVoicesOutput =
    { voices : Maybe (List Voice)
    , nextToken : Maybe String
    }



describeVoicesOutputDecoder : JD.Decoder DescribeVoicesOutput
describeVoicesOutputDecoder =
    JDP.decode DescribeVoicesOutput
        |> JDP.optional "voices" (JD.nullable (JD.list voiceDecoder)) Nothing
        |> JDP.optional "nextToken" (JD.nullable JD.string) Nothing




{-| One of

* `Gender_Female`
* `Gender_Male`

-}
type Gender
    = Gender_Female
    | Gender_Male



genderDecoder : JD.Decoder Gender
genderDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "Female" ->
                        JD.succeed Gender_Female

                    "Male" ->
                        JD.succeed Gender_Male


                    _ ->
                        JD.fail "bad thing"
            )



{-| Type of HTTP response from getLexic
-}
type alias GetLexiconOutput =
    { lexicon : Maybe Lexicon
    , lexiconAttributes : Maybe LexiconAttributes
    }



getLexiconOutputDecoder : JD.Decoder GetLexiconOutput
getLexiconOutputDecoder =
    JDP.decode GetLexiconOutput
        |> JDP.optional "lexicon" (JD.nullable lexiconDecoder) Nothing
        |> JDP.optional "lexiconAttributes" (JD.nullable lexiconAttributesDecoder) Nothing




{-| <p>Amazon Polly can't find the specified lexicon. Verify that the lexicon's name is spelled correctly, and then try again.</p>
-}
type alias InvalidLexiconException =
    { message : Maybe String
    }



invalidLexiconExceptionDecoder : JD.Decoder InvalidLexiconException
invalidLexiconExceptionDecoder =
    JDP.decode InvalidLexiconException
        |> JDP.optional "message" (JD.nullable JD.string) Nothing




{-| <p>The NextToken is invalid. Verify that it's spelled correctly, and then try again.</p>
-}
type alias InvalidNextTokenException =
    { message : Maybe String
    }



invalidNextTokenExceptionDecoder : JD.Decoder InvalidNextTokenException
invalidNextTokenExceptionDecoder =
    JDP.decode InvalidNextTokenException
        |> JDP.optional "message" (JD.nullable JD.string) Nothing




{-| <p>The specified sample rate is not valid.</p>
-}
type alias InvalidSampleRateException =
    { message : Maybe String
    }



invalidSampleRateExceptionDecoder : JD.Decoder InvalidSampleRateException
invalidSampleRateExceptionDecoder =
    JDP.decode InvalidSampleRateException
        |> JDP.optional "message" (JD.nullable JD.string) Nothing




{-| <p>The SSML you provided is invalid. Verify the SSML syntax, spelling of tags and values, and then try again.</p>
-}
type alias InvalidSsmlException =
    { message : Maybe String
    }



invalidSsmlExceptionDecoder : JD.Decoder InvalidSsmlException
invalidSsmlExceptionDecoder =
    JDP.decode InvalidSsmlException
        |> JDP.optional "message" (JD.nullable JD.string) Nothing




{-| One of

* `LanguageCode_cy-GB`
* `LanguageCode_da-DK`
* `LanguageCode_de-DE`
* `LanguageCode_en-AU`
* `LanguageCode_en-GB`
* `LanguageCode_en-GB-WLS`
* `LanguageCode_en-IN`
* `LanguageCode_en-US`
* `LanguageCode_es-ES`
* `LanguageCode_es-US`
* `LanguageCode_fr-CA`
* `LanguageCode_fr-FR`
* `LanguageCode_is-IS`
* `LanguageCode_it-IT`
* `LanguageCode_ja-JP`
* `LanguageCode_nb-NO`
* `LanguageCode_nl-NL`
* `LanguageCode_pl-PL`
* `LanguageCode_pt-BR`
* `LanguageCode_pt-PT`
* `LanguageCode_ro-RO`
* `LanguageCode_ru-RU`
* `LanguageCode_sv-SE`
* `LanguageCode_tr-TR`

-}
type LanguageCode
    = LanguageCode_cy_GB
    | LanguageCode_da_DK
    | LanguageCode_de_DE
    | LanguageCode_en_AU
    | LanguageCode_en_GB
    | LanguageCode_en_GB_WLS
    | LanguageCode_en_IN
    | LanguageCode_en_US
    | LanguageCode_es_ES
    | LanguageCode_es_US
    | LanguageCode_fr_CA
    | LanguageCode_fr_FR
    | LanguageCode_is_IS
    | LanguageCode_it_IT
    | LanguageCode_ja_JP
    | LanguageCode_nb_NO
    | LanguageCode_nl_NL
    | LanguageCode_pl_PL
    | LanguageCode_pt_BR
    | LanguageCode_pt_PT
    | LanguageCode_ro_RO
    | LanguageCode_ru_RU
    | LanguageCode_sv_SE
    | LanguageCode_tr_TR



languageCodeDecoder : JD.Decoder LanguageCode
languageCodeDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "cy_GB" ->
                        JD.succeed LanguageCode_cy_GB

                    "da_DK" ->
                        JD.succeed LanguageCode_da_DK

                    "de_DE" ->
                        JD.succeed LanguageCode_de_DE

                    "en_AU" ->
                        JD.succeed LanguageCode_en_AU

                    "en_GB" ->
                        JD.succeed LanguageCode_en_GB

                    "en_GB_WLS" ->
                        JD.succeed LanguageCode_en_GB_WLS

                    "en_IN" ->
                        JD.succeed LanguageCode_en_IN

                    "en_US" ->
                        JD.succeed LanguageCode_en_US

                    "es_ES" ->
                        JD.succeed LanguageCode_es_ES

                    "es_US" ->
                        JD.succeed LanguageCode_es_US

                    "fr_CA" ->
                        JD.succeed LanguageCode_fr_CA

                    "fr_FR" ->
                        JD.succeed LanguageCode_fr_FR

                    "is_IS" ->
                        JD.succeed LanguageCode_is_IS

                    "it_IT" ->
                        JD.succeed LanguageCode_it_IT

                    "ja_JP" ->
                        JD.succeed LanguageCode_ja_JP

                    "nb_NO" ->
                        JD.succeed LanguageCode_nb_NO

                    "nl_NL" ->
                        JD.succeed LanguageCode_nl_NL

                    "pl_PL" ->
                        JD.succeed LanguageCode_pl_PL

                    "pt_BR" ->
                        JD.succeed LanguageCode_pt_BR

                    "pt_PT" ->
                        JD.succeed LanguageCode_pt_PT

                    "ro_RO" ->
                        JD.succeed LanguageCode_ro_RO

                    "ru_RU" ->
                        JD.succeed LanguageCode_ru_RU

                    "sv_SE" ->
                        JD.succeed LanguageCode_sv_SE

                    "tr_TR" ->
                        JD.succeed LanguageCode_tr_TR


                    _ ->
                        JD.fail "bad thing"
            )



{-| <p>Provides lexicon name and lexicon content in string format. For more information, see <a href="https://www.w3.org/TR/pronunciation-lexicon/">Pronunciation Lexicon Specification (PLS) Version 1.0</a>.</p>
-}
type alias Lexicon =
    { content : Maybe String
    , name : Maybe String
    }



lexiconDecoder : JD.Decoder Lexicon
lexiconDecoder =
    JDP.decode Lexicon
        |> JDP.optional "content" (JD.nullable JD.string) Nothing
        |> JDP.optional "name" (JD.nullable JD.string) Nothing




{-| <p>Contains metadata describing the lexicon such as the number of lexemes, language code, and so on. For more information, see <a href="http://docs.aws.amazon.com/polly/latest/dg/managing-lexicons.html">Managing Lexicons</a>.</p>
-}
type alias LexiconAttributes =
    { alphabet : Maybe String
    , languageCode : Maybe LanguageCode
    , lastModified : Maybe Date
    , lexiconArn : Maybe String
    , lexemesCount : Maybe Int
    , size : Maybe Int
    }



lexiconAttributesDecoder : JD.Decoder LexiconAttributes
lexiconAttributesDecoder =
    JDP.decode LexiconAttributes
        |> JDP.optional "alphabet" (JD.nullable JD.string) Nothing
        |> JDP.optional "languageCode" (JD.nullable languageCodeDecoder) Nothing
        |> JDP.optional "lastModified" (JD.nullable JDX.date) Nothing
        |> JDP.optional "lexiconArn" (JD.nullable JD.string) Nothing
        |> JDP.optional "lexemesCount" (JD.nullable JD.int) Nothing
        |> JDP.optional "size" (JD.nullable JD.int) Nothing




{-| <p>Describes the content of the lexicon.</p>
-}
type alias LexiconDescription =
    { name : Maybe String
    , attributes : Maybe LexiconAttributes
    }



lexiconDescriptionDecoder : JD.Decoder LexiconDescription
lexiconDescriptionDecoder =
    JDP.decode LexiconDescription
        |> JDP.optional "name" (JD.nullable JD.string) Nothing
        |> JDP.optional "attributes" (JD.nullable lexiconAttributesDecoder) Nothing




{-| <p>Amazon Polly can't find the specified lexicon. This could be caused by a lexicon that is missing, its name is misspelled or specifying a lexicon that is in a different region.</p> <p>Verify that the lexicon exists, is in the region (see <a>ListLexicons</a>) and that you spelled its name is spelled correctly. Then try again.</p>
-}
type alias LexiconNotFoundException =
    { message : Maybe String
    }



lexiconNotFoundExceptionDecoder : JD.Decoder LexiconNotFoundException
lexiconNotFoundExceptionDecoder =
    JDP.decode LexiconNotFoundException
        |> JDP.optional "message" (JD.nullable JD.string) Nothing




{-| <p>The maximum size of the specified lexicon would be exceeded by this operation.</p>
-}
type alias LexiconSizeExceededException =
    { message : Maybe String
    }



lexiconSizeExceededExceptionDecoder : JD.Decoder LexiconSizeExceededException
lexiconSizeExceededExceptionDecoder =
    JDP.decode LexiconSizeExceededException
        |> JDP.optional "message" (JD.nullable JD.string) Nothing




{-| Type of HTTP response from listLexico
-}
type alias ListLexiconsOutput =
    { lexicons : Maybe (List LexiconDescription)
    , nextToken : Maybe String
    }



listLexiconsOutputDecoder : JD.Decoder ListLexiconsOutput
listLexiconsOutputDecoder =
    JDP.decode ListLexiconsOutput
        |> JDP.optional "lexicons" (JD.nullable (JD.list lexiconDescriptionDecoder)) Nothing
        |> JDP.optional "nextToken" (JD.nullable JD.string) Nothing




{-| <p>The maximum size of the lexeme would be exceeded by this operation.</p>
-}
type alias MaxLexemeLengthExceededException =
    { message : Maybe String
    }



maxLexemeLengthExceededExceptionDecoder : JD.Decoder MaxLexemeLengthExceededException
maxLexemeLengthExceededExceptionDecoder =
    JDP.decode MaxLexemeLengthExceededException
        |> JDP.optional "message" (JD.nullable JD.string) Nothing




{-| <p>The maximum number of lexicons would be exceeded by this operation.</p>
-}
type alias MaxLexiconsNumberExceededException =
    { message : Maybe String
    }



maxLexiconsNumberExceededExceptionDecoder : JD.Decoder MaxLexiconsNumberExceededException
maxLexiconsNumberExceededExceptionDecoder =
    JDP.decode MaxLexiconsNumberExceededException
        |> JDP.optional "message" (JD.nullable JD.string) Nothing




{-| One of

* `OutputFormat_mp3`
* `OutputFormat_ogg_vorbis`
* `OutputFormat_pcm`

-}
type OutputFormat
    = OutputFormat_mp3
    | OutputFormat_ogg_vorbis
    | OutputFormat_pcm



outputFormatDecoder : JD.Decoder OutputFormat
outputFormatDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "mp3" ->
                        JD.succeed OutputFormat_mp3

                    "ogg_vorbis" ->
                        JD.succeed OutputFormat_ogg_vorbis

                    "pcm" ->
                        JD.succeed OutputFormat_pcm


                    _ ->
                        JD.fail "bad thing"
            )



{-| Type of HTTP response from putLexic
-}
type alias PutLexiconOutput =
    { 
    }



putLexiconOutputDecoder : JD.Decoder PutLexiconOutput
putLexiconOutputDecoder =
    JDP.decode PutLexiconOutput



{-| <p>An unknown condition has caused a service failure.</p>
-}
type alias ServiceFailureException =
    { message : Maybe String
    }



serviceFailureExceptionDecoder : JD.Decoder ServiceFailureException
serviceFailureExceptionDecoder =
    JDP.decode ServiceFailureException
        |> JDP.optional "message" (JD.nullable JD.string) Nothing




{-| Type of HTTP response from synthesizeSpee
-}
type alias SynthesizeSpeechOutput =
    { audioStream : Maybe String
    , contentType : Maybe String
    , requestCharacters : Maybe Int
    }



synthesizeSpeechOutputDecoder : JD.Decoder SynthesizeSpeechOutput
synthesizeSpeechOutputDecoder =
    JDP.decode SynthesizeSpeechOutput
        |> JDP.optional "audioStream" (JD.nullable JD.string) Nothing
        |> JDP.optional "contentType" (JD.nullable JD.string) Nothing
        |> JDP.optional "requestCharacters" (JD.nullable JD.int) Nothing




{-| <p>The value of the "Text" parameter is longer than the accepted limits. The limit for input text is a maximum of 3000 characters total, of which no more than 1500 can be billed characters. SSML tags are not counted as billed characters.</p>
-}
type alias TextLengthExceededException =
    { message : Maybe String
    }



textLengthExceededExceptionDecoder : JD.Decoder TextLengthExceededException
textLengthExceededExceptionDecoder =
    JDP.decode TextLengthExceededException
        |> JDP.optional "message" (JD.nullable JD.string) Nothing




{-| One of

* `TextType_ssml`
* `TextType_text`

-}
type TextType
    = TextType_ssml
    | TextType_text



textTypeDecoder : JD.Decoder TextType
textTypeDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "ssml" ->
                        JD.succeed TextType_ssml

                    "text" ->
                        JD.succeed TextType_text


                    _ ->
                        JD.fail "bad thing"
            )



{-| <p>The alphabet specified by the lexicon is not a supported alphabet. Valid values are <code>x-sampa</code> and <code>ipa</code>.</p>
-}
type alias UnsupportedPlsAlphabetException =
    { message : Maybe String
    }



unsupportedPlsAlphabetExceptionDecoder : JD.Decoder UnsupportedPlsAlphabetException
unsupportedPlsAlphabetExceptionDecoder =
    JDP.decode UnsupportedPlsAlphabetException
        |> JDP.optional "message" (JD.nullable JD.string) Nothing




{-| <p>The language specified in the lexicon is unsupported. For a list of supported languages, see <a href="http://docs.aws.amazon.com/polly/latest/dg/API_LexiconAttributes.html">Lexicon Attributes</a>.</p>
-}
type alias UnsupportedPlsLanguageException =
    { message : Maybe String
    }



unsupportedPlsLanguageExceptionDecoder : JD.Decoder UnsupportedPlsLanguageException
unsupportedPlsLanguageExceptionDecoder =
    JDP.decode UnsupportedPlsLanguageException
        |> JDP.optional "message" (JD.nullable JD.string) Nothing




{-| <p>Description of the voice.</p>
-}
type alias Voice =
    { gender : Maybe Gender
    , id : Maybe VoiceId
    , languageCode : Maybe LanguageCode
    , languageName : Maybe String
    , name : Maybe String
    }



voiceDecoder : JD.Decoder Voice
voiceDecoder =
    JDP.decode Voice
        |> JDP.optional "gender" (JD.nullable genderDecoder) Nothing
        |> JDP.optional "id" (JD.nullable voiceIdDecoder) Nothing
        |> JDP.optional "languageCode" (JD.nullable languageCodeDecoder) Nothing
        |> JDP.optional "languageName" (JD.nullable JD.string) Nothing
        |> JDP.optional "name" (JD.nullable JD.string) Nothing




{-| One of

* `VoiceId_Geraint`
* `VoiceId_Gwyneth`
* `VoiceId_Mads`
* `VoiceId_Naja`
* `VoiceId_Hans`
* `VoiceId_Marlene`
* `VoiceId_Nicole`
* `VoiceId_Russell`
* `VoiceId_Amy`
* `VoiceId_Brian`
* `VoiceId_Emma`
* `VoiceId_Raveena`
* `VoiceId_Ivy`
* `VoiceId_Joanna`
* `VoiceId_Joey`
* `VoiceId_Justin`
* `VoiceId_Kendra`
* `VoiceId_Kimberly`
* `VoiceId_Salli`
* `VoiceId_Conchita`
* `VoiceId_Enrique`
* `VoiceId_Miguel`
* `VoiceId_Penelope`
* `VoiceId_Chantal`
* `VoiceId_Celine`
* `VoiceId_Mathieu`
* `VoiceId_Dora`
* `VoiceId_Karl`
* `VoiceId_Carla`
* `VoiceId_Giorgio`
* `VoiceId_Mizuki`
* `VoiceId_Liv`
* `VoiceId_Lotte`
* `VoiceId_Ruben`
* `VoiceId_Ewa`
* `VoiceId_Jacek`
* `VoiceId_Jan`
* `VoiceId_Maja`
* `VoiceId_Ricardo`
* `VoiceId_Vitoria`
* `VoiceId_Cristiano`
* `VoiceId_Ines`
* `VoiceId_Carmen`
* `VoiceId_Maxim`
* `VoiceId_Tatyana`
* `VoiceId_Astrid`
* `VoiceId_Filiz`

-}
type VoiceId
    = VoiceId_Geraint
    | VoiceId_Gwyneth
    | VoiceId_Mads
    | VoiceId_Naja
    | VoiceId_Hans
    | VoiceId_Marlene
    | VoiceId_Nicole
    | VoiceId_Russell
    | VoiceId_Amy
    | VoiceId_Brian
    | VoiceId_Emma
    | VoiceId_Raveena
    | VoiceId_Ivy
    | VoiceId_Joanna
    | VoiceId_Joey
    | VoiceId_Justin
    | VoiceId_Kendra
    | VoiceId_Kimberly
    | VoiceId_Salli
    | VoiceId_Conchita
    | VoiceId_Enrique
    | VoiceId_Miguel
    | VoiceId_Penelope
    | VoiceId_Chantal
    | VoiceId_Celine
    | VoiceId_Mathieu
    | VoiceId_Dora
    | VoiceId_Karl
    | VoiceId_Carla
    | VoiceId_Giorgio
    | VoiceId_Mizuki
    | VoiceId_Liv
    | VoiceId_Lotte
    | VoiceId_Ruben
    | VoiceId_Ewa
    | VoiceId_Jacek
    | VoiceId_Jan
    | VoiceId_Maja
    | VoiceId_Ricardo
    | VoiceId_Vitoria
    | VoiceId_Cristiano
    | VoiceId_Ines
    | VoiceId_Carmen
    | VoiceId_Maxim
    | VoiceId_Tatyana
    | VoiceId_Astrid
    | VoiceId_Filiz



voiceIdDecoder : JD.Decoder VoiceId
voiceIdDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "Geraint" ->
                        JD.succeed VoiceId_Geraint

                    "Gwyneth" ->
                        JD.succeed VoiceId_Gwyneth

                    "Mads" ->
                        JD.succeed VoiceId_Mads

                    "Naja" ->
                        JD.succeed VoiceId_Naja

                    "Hans" ->
                        JD.succeed VoiceId_Hans

                    "Marlene" ->
                        JD.succeed VoiceId_Marlene

                    "Nicole" ->
                        JD.succeed VoiceId_Nicole

                    "Russell" ->
                        JD.succeed VoiceId_Russell

                    "Amy" ->
                        JD.succeed VoiceId_Amy

                    "Brian" ->
                        JD.succeed VoiceId_Brian

                    "Emma" ->
                        JD.succeed VoiceId_Emma

                    "Raveena" ->
                        JD.succeed VoiceId_Raveena

                    "Ivy" ->
                        JD.succeed VoiceId_Ivy

                    "Joanna" ->
                        JD.succeed VoiceId_Joanna

                    "Joey" ->
                        JD.succeed VoiceId_Joey

                    "Justin" ->
                        JD.succeed VoiceId_Justin

                    "Kendra" ->
                        JD.succeed VoiceId_Kendra

                    "Kimberly" ->
                        JD.succeed VoiceId_Kimberly

                    "Salli" ->
                        JD.succeed VoiceId_Salli

                    "Conchita" ->
                        JD.succeed VoiceId_Conchita

                    "Enrique" ->
                        JD.succeed VoiceId_Enrique

                    "Miguel" ->
                        JD.succeed VoiceId_Miguel

                    "Penelope" ->
                        JD.succeed VoiceId_Penelope

                    "Chantal" ->
                        JD.succeed VoiceId_Chantal

                    "Celine" ->
                        JD.succeed VoiceId_Celine

                    "Mathieu" ->
                        JD.succeed VoiceId_Mathieu

                    "Dora" ->
                        JD.succeed VoiceId_Dora

                    "Karl" ->
                        JD.succeed VoiceId_Karl

                    "Carla" ->
                        JD.succeed VoiceId_Carla

                    "Giorgio" ->
                        JD.succeed VoiceId_Giorgio

                    "Mizuki" ->
                        JD.succeed VoiceId_Mizuki

                    "Liv" ->
                        JD.succeed VoiceId_Liv

                    "Lotte" ->
                        JD.succeed VoiceId_Lotte

                    "Ruben" ->
                        JD.succeed VoiceId_Ruben

                    "Ewa" ->
                        JD.succeed VoiceId_Ewa

                    "Jacek" ->
                        JD.succeed VoiceId_Jacek

                    "Jan" ->
                        JD.succeed VoiceId_Jan

                    "Maja" ->
                        JD.succeed VoiceId_Maja

                    "Ricardo" ->
                        JD.succeed VoiceId_Ricardo

                    "Vitoria" ->
                        JD.succeed VoiceId_Vitoria

                    "Cristiano" ->
                        JD.succeed VoiceId_Cristiano

                    "Ines" ->
                        JD.succeed VoiceId_Ines

                    "Carmen" ->
                        JD.succeed VoiceId_Carmen

                    "Maxim" ->
                        JD.succeed VoiceId_Maxim

                    "Tatyana" ->
                        JD.succeed VoiceId_Tatyana

                    "Astrid" ->
                        JD.succeed VoiceId_Astrid

                    "Filiz" ->
                        JD.succeed VoiceId_Filiz


                    _ ->
                        JD.fail "bad thing"
            )



