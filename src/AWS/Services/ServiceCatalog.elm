module AWS.Services.ServiceCatalog
    exposing
        ( config
        , acceptPortfolioShare
        , AcceptPortfolioShareOptions
        , associatePrincipalWithPortfolio
        , AssociatePrincipalWithPortfolioOptions
        , associateProductWithPortfolio
        , AssociateProductWithPortfolioOptions
        , createConstraint
        , CreateConstraintOptions
        , createPortfolio
        , CreatePortfolioOptions
        , createPortfolioShare
        , CreatePortfolioShareOptions
        , createProduct
        , CreateProductOptions
        , createProvisioningArtifact
        , CreateProvisioningArtifactOptions
        , deleteConstraint
        , DeleteConstraintOptions
        , deletePortfolio
        , DeletePortfolioOptions
        , deletePortfolioShare
        , DeletePortfolioShareOptions
        , deleteProduct
        , DeleteProductOptions
        , deleteProvisioningArtifact
        , DeleteProvisioningArtifactOptions
        , describeConstraint
        , DescribeConstraintOptions
        , describePortfolio
        , DescribePortfolioOptions
        , describeProduct
        , DescribeProductOptions
        , describeProductAsAdmin
        , DescribeProductAsAdminOptions
        , describeProductView
        , DescribeProductViewOptions
        , describeProvisioningArtifact
        , DescribeProvisioningArtifactOptions
        , describeProvisioningParameters
        , DescribeProvisioningParametersOptions
        , describeRecord
        , DescribeRecordOptions
        , disassociatePrincipalFromPortfolio
        , DisassociatePrincipalFromPortfolioOptions
        , disassociateProductFromPortfolio
        , DisassociateProductFromPortfolioOptions
        , listAcceptedPortfolioShares
        , ListAcceptedPortfolioSharesOptions
        , listConstraintsForPortfolio
        , ListConstraintsForPortfolioOptions
        , listLaunchPaths
        , ListLaunchPathsOptions
        , listPortfolioAccess
        , ListPortfolioAccessOptions
        , listPortfolios
        , ListPortfoliosOptions
        , listPortfoliosForProduct
        , ListPortfoliosForProductOptions
        , listPrincipalsForPortfolio
        , ListPrincipalsForPortfolioOptions
        , listProvisioningArtifacts
        , ListProvisioningArtifactsOptions
        , listRecordHistory
        , ListRecordHistoryOptions
        , provisionProduct
        , ProvisionProductOptions
        , rejectPortfolioShare
        , RejectPortfolioShareOptions
        , scanProvisionedProducts
        , ScanProvisionedProductsOptions
        , searchProducts
        , SearchProductsOptions
        , searchProductsAsAdmin
        , SearchProductsAsAdminOptions
        , terminateProvisionedProduct
        , TerminateProvisionedProductOptions
        , updateConstraint
        , UpdateConstraintOptions
        , updatePortfolio
        , UpdatePortfolioOptions
        , updateProduct
        , UpdateProductOptions
        , updateProvisionedProduct
        , UpdateProvisionedProductOptions
        , updateProvisioningArtifact
        , UpdateProvisioningArtifactOptions
        , AcceptPortfolioShareOutput
        , AccessLevelFilter
        , AccessLevelFilterKey(..)
        , AssociatePrincipalWithPortfolioOutput
        , AssociateProductWithPortfolioOutput
        , ConstraintDetail
        , ConstraintSummary
        , CreateConstraintOutput
        , CreatePortfolioOutput
        , CreatePortfolioShareOutput
        , CreateProductOutput
        , CreateProvisioningArtifactOutput
        , DeleteConstraintOutput
        , DeletePortfolioOutput
        , DeletePortfolioShareOutput
        , DeleteProductOutput
        , DeleteProvisioningArtifactOutput
        , DescribeConstraintOutput
        , DescribePortfolioOutput
        , DescribeProductAsAdminOutput
        , DescribeProductOutput
        , DescribeProductViewOutput
        , DescribeProvisioningArtifactOutput
        , DescribeProvisioningParametersOutput
        , DescribeRecordOutput
        , DisassociatePrincipalFromPortfolioOutput
        , DisassociateProductFromPortfolioOutput
        , DuplicateResourceException
        , InvalidParametersException
        , LaunchPathSummary
        , LimitExceededException
        , ListAcceptedPortfolioSharesOutput
        , ListConstraintsForPortfolioOutput
        , ListLaunchPathsOutput
        , ListPortfolioAccessOutput
        , ListPortfoliosForProductOutput
        , ListPortfoliosOutput
        , ListPrincipalsForPortfolioOutput
        , ListProvisioningArtifactsOutput
        , ListRecordHistoryOutput
        , ListRecordHistorySearchFilter
        , ParameterConstraints
        , PortfolioDetail
        , Principal
        , PrincipalType(..)
        , ProductSource(..)
        , ProductType(..)
        , ProductViewAggregationValue
        , ProductViewDetail
        , ProductViewFilterBy(..)
        , ProductViewSortBy(..)
        , ProductViewSummary
        , ProvisionProductOutput
        , ProvisionedProductDetail
        , ProvisioningArtifact
        , ProvisioningArtifactDetail
        , ProvisioningArtifactParameter
        , ProvisioningArtifactProperties
        , ProvisioningArtifactType(..)
        , ProvisioningParameter
        , RecordDetail
        , RecordError
        , RecordOutput
        , RecordStatus(..)
        , RecordTag
        , RejectPortfolioShareOutput
        , ResourceInUseException
        , ResourceNotFoundException
        , ScanProvisionedProductsOutput
        , SearchProductsAsAdminOutput
        , SearchProductsOutput
        , SortOrder(..)
        , Status(..)
        , Tag
        , TerminateProvisionedProductOutput
        , UpdateConstraintOutput
        , UpdatePortfolioOutput
        , UpdateProductOutput
        , UpdateProvisionedProductOutput
        , UpdateProvisioningArtifactOutput
        , UpdateProvisioningParameter
        , UsageInstruction
        )

{-| <fullname>AWS Service Catalog</fullname> <p> <b>Overview</b> </p> <p> <a href="https://aws.amazon.com/servicecatalog/">AWS Service Catalog</a> allows organizations to create and manage catalogs of IT services that are approved for use on AWS. This documentation provides reference material for the AWS Service Catalog end user API. To get the most out of this documentation, you need to be familiar with the terminology discussed in <a href="http://docs.aws.amazon.com/servicecatalog/latest/userguide/what-is_concepts.html">AWS Service Catalog Concepts</a>.</p> <p> <i>Additional Resources</i> </p> <ul> <li> <p> <a href="http://docs.aws.amazon.com/servicecatalog/latest/adminguide/introduction.html">AWS Service Catalog Administrator Guide</a> </p> </li> <li> <p> <a href="http://docs.aws.amazon.com/servicecatalog/latest/userguide/introduction.html">AWS Service Catalog User Guide</a> </p> </li> </ul>

@docs config

## Table of Contents

* [Operations](#operations)
* [Responses](#responses)
* [Records](#records)
* [Unions](#unions)
* [Exceptions](#exceptions)

## Operations

* [acceptPortfolioShare](#acceptPortfolioShare)
* [AcceptPortfolioShareOptions](#AcceptPortfolioShareOptions)
* [associatePrincipalWithPortfolio](#associatePrincipalWithPortfolio)
* [AssociatePrincipalWithPortfolioOptions](#AssociatePrincipalWithPortfolioOptions)
* [associateProductWithPortfolio](#associateProductWithPortfolio)
* [AssociateProductWithPortfolioOptions](#AssociateProductWithPortfolioOptions)
* [createConstraint](#createConstraint)
* [CreateConstraintOptions](#CreateConstraintOptions)
* [createPortfolio](#createPortfolio)
* [CreatePortfolioOptions](#CreatePortfolioOptions)
* [createPortfolioShare](#createPortfolioShare)
* [CreatePortfolioShareOptions](#CreatePortfolioShareOptions)
* [createProduct](#createProduct)
* [CreateProductOptions](#CreateProductOptions)
* [createProvisioningArtifact](#createProvisioningArtifact)
* [CreateProvisioningArtifactOptions](#CreateProvisioningArtifactOptions)
* [deleteConstraint](#deleteConstraint)
* [DeleteConstraintOptions](#DeleteConstraintOptions)
* [deletePortfolio](#deletePortfolio)
* [DeletePortfolioOptions](#DeletePortfolioOptions)
* [deletePortfolioShare](#deletePortfolioShare)
* [DeletePortfolioShareOptions](#DeletePortfolioShareOptions)
* [deleteProduct](#deleteProduct)
* [DeleteProductOptions](#DeleteProductOptions)
* [deleteProvisioningArtifact](#deleteProvisioningArtifact)
* [DeleteProvisioningArtifactOptions](#DeleteProvisioningArtifactOptions)
* [describeConstraint](#describeConstraint)
* [DescribeConstraintOptions](#DescribeConstraintOptions)
* [describePortfolio](#describePortfolio)
* [DescribePortfolioOptions](#DescribePortfolioOptions)
* [describeProduct](#describeProduct)
* [DescribeProductOptions](#DescribeProductOptions)
* [describeProductAsAdmin](#describeProductAsAdmin)
* [DescribeProductAsAdminOptions](#DescribeProductAsAdminOptions)
* [describeProductView](#describeProductView)
* [DescribeProductViewOptions](#DescribeProductViewOptions)
* [describeProvisioningArtifact](#describeProvisioningArtifact)
* [DescribeProvisioningArtifactOptions](#DescribeProvisioningArtifactOptions)
* [describeProvisioningParameters](#describeProvisioningParameters)
* [DescribeProvisioningParametersOptions](#DescribeProvisioningParametersOptions)
* [describeRecord](#describeRecord)
* [DescribeRecordOptions](#DescribeRecordOptions)
* [disassociatePrincipalFromPortfolio](#disassociatePrincipalFromPortfolio)
* [DisassociatePrincipalFromPortfolioOptions](#DisassociatePrincipalFromPortfolioOptions)
* [disassociateProductFromPortfolio](#disassociateProductFromPortfolio)
* [DisassociateProductFromPortfolioOptions](#DisassociateProductFromPortfolioOptions)
* [listAcceptedPortfolioShares](#listAcceptedPortfolioShares)
* [ListAcceptedPortfolioSharesOptions](#ListAcceptedPortfolioSharesOptions)
* [listConstraintsForPortfolio](#listConstraintsForPortfolio)
* [ListConstraintsForPortfolioOptions](#ListConstraintsForPortfolioOptions)
* [listLaunchPaths](#listLaunchPaths)
* [ListLaunchPathsOptions](#ListLaunchPathsOptions)
* [listPortfolioAccess](#listPortfolioAccess)
* [ListPortfolioAccessOptions](#ListPortfolioAccessOptions)
* [listPortfolios](#listPortfolios)
* [ListPortfoliosOptions](#ListPortfoliosOptions)
* [listPortfoliosForProduct](#listPortfoliosForProduct)
* [ListPortfoliosForProductOptions](#ListPortfoliosForProductOptions)
* [listPrincipalsForPortfolio](#listPrincipalsForPortfolio)
* [ListPrincipalsForPortfolioOptions](#ListPrincipalsForPortfolioOptions)
* [listProvisioningArtifacts](#listProvisioningArtifacts)
* [ListProvisioningArtifactsOptions](#ListProvisioningArtifactsOptions)
* [listRecordHistory](#listRecordHistory)
* [ListRecordHistoryOptions](#ListRecordHistoryOptions)
* [provisionProduct](#provisionProduct)
* [ProvisionProductOptions](#ProvisionProductOptions)
* [rejectPortfolioShare](#rejectPortfolioShare)
* [RejectPortfolioShareOptions](#RejectPortfolioShareOptions)
* [scanProvisionedProducts](#scanProvisionedProducts)
* [ScanProvisionedProductsOptions](#ScanProvisionedProductsOptions)
* [searchProducts](#searchProducts)
* [SearchProductsOptions](#SearchProductsOptions)
* [searchProductsAsAdmin](#searchProductsAsAdmin)
* [SearchProductsAsAdminOptions](#SearchProductsAsAdminOptions)
* [terminateProvisionedProduct](#terminateProvisionedProduct)
* [TerminateProvisionedProductOptions](#TerminateProvisionedProductOptions)
* [updateConstraint](#updateConstraint)
* [UpdateConstraintOptions](#UpdateConstraintOptions)
* [updatePortfolio](#updatePortfolio)
* [UpdatePortfolioOptions](#UpdatePortfolioOptions)
* [updateProduct](#updateProduct)
* [UpdateProductOptions](#UpdateProductOptions)
* [updateProvisionedProduct](#updateProvisionedProduct)
* [UpdateProvisionedProductOptions](#UpdateProvisionedProductOptions)
* [updateProvisioningArtifact](#updateProvisioningArtifact)
* [UpdateProvisioningArtifactOptions](#UpdateProvisioningArtifactOptions)


@docs acceptPortfolioShare,AcceptPortfolioShareOptions,associatePrincipalWithPortfolio,AssociatePrincipalWithPortfolioOptions,associateProductWithPortfolio,AssociateProductWithPortfolioOptions,createConstraint,CreateConstraintOptions,createPortfolio,CreatePortfolioOptions,createPortfolioShare,CreatePortfolioShareOptions,createProduct,CreateProductOptions,createProvisioningArtifact,CreateProvisioningArtifactOptions,deleteConstraint,DeleteConstraintOptions,deletePortfolio,DeletePortfolioOptions,deletePortfolioShare,DeletePortfolioShareOptions,deleteProduct,DeleteProductOptions,deleteProvisioningArtifact,DeleteProvisioningArtifactOptions,describeConstraint,DescribeConstraintOptions,describePortfolio,DescribePortfolioOptions,describeProduct,DescribeProductOptions,describeProductAsAdmin,DescribeProductAsAdminOptions,describeProductView,DescribeProductViewOptions,describeProvisioningArtifact,DescribeProvisioningArtifactOptions,describeProvisioningParameters,DescribeProvisioningParametersOptions,describeRecord,DescribeRecordOptions,disassociatePrincipalFromPortfolio,DisassociatePrincipalFromPortfolioOptions,disassociateProductFromPortfolio,DisassociateProductFromPortfolioOptions,listAcceptedPortfolioShares,ListAcceptedPortfolioSharesOptions,listConstraintsForPortfolio,ListConstraintsForPortfolioOptions,listLaunchPaths,ListLaunchPathsOptions,listPortfolioAccess,ListPortfolioAccessOptions,listPortfolios,ListPortfoliosOptions,listPortfoliosForProduct,ListPortfoliosForProductOptions,listPrincipalsForPortfolio,ListPrincipalsForPortfolioOptions,listProvisioningArtifacts,ListProvisioningArtifactsOptions,listRecordHistory,ListRecordHistoryOptions,provisionProduct,ProvisionProductOptions,rejectPortfolioShare,RejectPortfolioShareOptions,scanProvisionedProducts,ScanProvisionedProductsOptions,searchProducts,SearchProductsOptions,searchProductsAsAdmin,SearchProductsAsAdminOptions,terminateProvisionedProduct,TerminateProvisionedProductOptions,updateConstraint,UpdateConstraintOptions,updatePortfolio,UpdatePortfolioOptions,updateProduct,UpdateProductOptions,updateProvisionedProduct,UpdateProvisionedProductOptions,updateProvisioningArtifact,UpdateProvisioningArtifactOptions

## Responses

* [AcceptPortfolioShareOutput](#AcceptPortfolioShareOutput)
* [AssociatePrincipalWithPortfolioOutput](#AssociatePrincipalWithPortfolioOutput)
* [AssociateProductWithPortfolioOutput](#AssociateProductWithPortfolioOutput)
* [CreateConstraintOutput](#CreateConstraintOutput)
* [CreatePortfolioOutput](#CreatePortfolioOutput)
* [CreatePortfolioShareOutput](#CreatePortfolioShareOutput)
* [CreateProductOutput](#CreateProductOutput)
* [CreateProvisioningArtifactOutput](#CreateProvisioningArtifactOutput)
* [DeleteConstraintOutput](#DeleteConstraintOutput)
* [DeletePortfolioOutput](#DeletePortfolioOutput)
* [DeletePortfolioShareOutput](#DeletePortfolioShareOutput)
* [DeleteProductOutput](#DeleteProductOutput)
* [DeleteProvisioningArtifactOutput](#DeleteProvisioningArtifactOutput)
* [DescribeConstraintOutput](#DescribeConstraintOutput)
* [DescribePortfolioOutput](#DescribePortfolioOutput)
* [DescribeProductAsAdminOutput](#DescribeProductAsAdminOutput)
* [DescribeProductOutput](#DescribeProductOutput)
* [DescribeProductViewOutput](#DescribeProductViewOutput)
* [DescribeProvisioningArtifactOutput](#DescribeProvisioningArtifactOutput)
* [DescribeProvisioningParametersOutput](#DescribeProvisioningParametersOutput)
* [DescribeRecordOutput](#DescribeRecordOutput)
* [DisassociatePrincipalFromPortfolioOutput](#DisassociatePrincipalFromPortfolioOutput)
* [DisassociateProductFromPortfolioOutput](#DisassociateProductFromPortfolioOutput)
* [ListAcceptedPortfolioSharesOutput](#ListAcceptedPortfolioSharesOutput)
* [ListConstraintsForPortfolioOutput](#ListConstraintsForPortfolioOutput)
* [ListLaunchPathsOutput](#ListLaunchPathsOutput)
* [ListPortfolioAccessOutput](#ListPortfolioAccessOutput)
* [ListPortfoliosForProductOutput](#ListPortfoliosForProductOutput)
* [ListPortfoliosOutput](#ListPortfoliosOutput)
* [ListPrincipalsForPortfolioOutput](#ListPrincipalsForPortfolioOutput)
* [ListProvisioningArtifactsOutput](#ListProvisioningArtifactsOutput)
* [ListRecordHistoryOutput](#ListRecordHistoryOutput)
* [ProvisionProductOutput](#ProvisionProductOutput)
* [RejectPortfolioShareOutput](#RejectPortfolioShareOutput)
* [ScanProvisionedProductsOutput](#ScanProvisionedProductsOutput)
* [SearchProductsAsAdminOutput](#SearchProductsAsAdminOutput)
* [SearchProductsOutput](#SearchProductsOutput)
* [TerminateProvisionedProductOutput](#TerminateProvisionedProductOutput)
* [UpdateConstraintOutput](#UpdateConstraintOutput)
* [UpdatePortfolioOutput](#UpdatePortfolioOutput)
* [UpdateProductOutput](#UpdateProductOutput)
* [UpdateProvisionedProductOutput](#UpdateProvisionedProductOutput)
* [UpdateProvisioningArtifactOutput](#UpdateProvisioningArtifactOutput)


@docs AcceptPortfolioShareOutput,AssociatePrincipalWithPortfolioOutput,AssociateProductWithPortfolioOutput,CreateConstraintOutput,CreatePortfolioOutput,CreatePortfolioShareOutput,CreateProductOutput,CreateProvisioningArtifactOutput,DeleteConstraintOutput,DeletePortfolioOutput,DeletePortfolioShareOutput,DeleteProductOutput,DeleteProvisioningArtifactOutput,DescribeConstraintOutput,DescribePortfolioOutput,DescribeProductAsAdminOutput,DescribeProductOutput,DescribeProductViewOutput,DescribeProvisioningArtifactOutput,DescribeProvisioningParametersOutput,DescribeRecordOutput,DisassociatePrincipalFromPortfolioOutput,DisassociateProductFromPortfolioOutput,ListAcceptedPortfolioSharesOutput,ListConstraintsForPortfolioOutput,ListLaunchPathsOutput,ListPortfolioAccessOutput,ListPortfoliosForProductOutput,ListPortfoliosOutput,ListPrincipalsForPortfolioOutput,ListProvisioningArtifactsOutput,ListRecordHistoryOutput,ProvisionProductOutput,RejectPortfolioShareOutput,ScanProvisionedProductsOutput,SearchProductsAsAdminOutput,SearchProductsOutput,TerminateProvisionedProductOutput,UpdateConstraintOutput,UpdatePortfolioOutput,UpdateProductOutput,UpdateProvisionedProductOutput,UpdateProvisioningArtifactOutput

## Records

* [AccessLevelFilter](#AccessLevelFilter)
* [ConstraintDetail](#ConstraintDetail)
* [ConstraintSummary](#ConstraintSummary)
* [LaunchPathSummary](#LaunchPathSummary)
* [ListRecordHistorySearchFilter](#ListRecordHistorySearchFilter)
* [ParameterConstraints](#ParameterConstraints)
* [PortfolioDetail](#PortfolioDetail)
* [Principal](#Principal)
* [ProductViewAggregationValue](#ProductViewAggregationValue)
* [ProductViewDetail](#ProductViewDetail)
* [ProductViewSummary](#ProductViewSummary)
* [ProvisionedProductDetail](#ProvisionedProductDetail)
* [ProvisioningArtifact](#ProvisioningArtifact)
* [ProvisioningArtifactDetail](#ProvisioningArtifactDetail)
* [ProvisioningArtifactParameter](#ProvisioningArtifactParameter)
* [ProvisioningArtifactProperties](#ProvisioningArtifactProperties)
* [ProvisioningParameter](#ProvisioningParameter)
* [RecordDetail](#RecordDetail)
* [RecordError](#RecordError)
* [RecordOutput](#RecordOutput)
* [RecordTag](#RecordTag)
* [Tag](#Tag)
* [UpdateProvisioningParameter](#UpdateProvisioningParameter)
* [UsageInstruction](#UsageInstruction)


@docs AccessLevelFilter,ConstraintDetail,ConstraintSummary,LaunchPathSummary,ListRecordHistorySearchFilter,ParameterConstraints,PortfolioDetail,Principal,ProductViewAggregationValue,ProductViewDetail,ProductViewSummary,ProvisionedProductDetail,ProvisioningArtifact,ProvisioningArtifactDetail,ProvisioningArtifactParameter,ProvisioningArtifactProperties,ProvisioningParameter,RecordDetail,RecordError,RecordOutput,RecordTag,Tag,UpdateProvisioningParameter,UsageInstruction

## Unions

* [AccessLevelFilterKey](#AccessLevelFilterKey)
* [PrincipalType](#PrincipalType)
* [ProductSource](#ProductSource)
* [ProductType](#ProductType)
* [ProductViewFilterBy](#ProductViewFilterBy)
* [ProductViewSortBy](#ProductViewSortBy)
* [ProvisioningArtifactType](#ProvisioningArtifactType)
* [RecordStatus](#RecordStatus)
* [SortOrder](#SortOrder)
* [Status](#Status)


@docs AccessLevelFilterKey,PrincipalType,ProductSource,ProductType,ProductViewFilterBy,ProductViewSortBy,ProvisioningArtifactType,RecordStatus,SortOrder,Status

## Exceptions

* [DuplicateResourceException](#DuplicateResourceException)
* [InvalidParametersException](#InvalidParametersException)
* [LimitExceededException](#LimitExceededException)
* [ResourceInUseException](#ResourceInUseException)
* [ResourceNotFoundException](#ResourceNotFoundException)


@docs DuplicateResourceException,InvalidParametersException,LimitExceededException,ResourceInUseException,ResourceNotFoundException

-}

import AWS
import AWS.Http
import Json.Decode as JD
import Json.Decode.Pipeline as JDP
import Json.Encode as JE
import Date exposing (Date)
import Json.Decode.Extra as JDX
import Dict exposing (Dict)


{-| Configuration for this service
-}
config : Maybe AWS.Credentials -> AWS.ServiceConfig
config creds =
    AWS.ServiceConfig
        "servicecatalog"
        "2015-12-10"
        "1.1"
        "AWSSERVICECATALOG_20151210."
        "servicecatalog.amazonaws.com"
        "us-east-1"
        creds



-- OPERATIONS

{-| <p>Accepts an offer to share a portfolio.</p>

__Required Parameters__

* `portfolioId` __:__ `String`


-}
acceptPortfolioShare :
    String
    -> (AcceptPortfolioShareOptions -> AcceptPortfolioShareOptions)
    -> AWS.Http.UnsignedRequest AcceptPortfolioShareOutput
acceptPortfolioShare portfolioId setOptions =
  let
    options = setOptions (AcceptPortfolioShareOptions Nothing)
  in
    AWS.Http.unsignedRequest
        "AcceptPortfolioShare"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        acceptPortfolioShareOutputDecoder


{-| Options for a acceptPortfolioShare request
-}
type alias AcceptPortfolioShareOptions =
    { acceptLanguage : Maybe String
    }



{-| <p>Associates the specified principal ARN with the specified portfolio.</p>

__Required Parameters__

* `portfolioId` __:__ `String`
* `principalARN` __:__ `String`
* `principalType` __:__ `PrincipalType`


-}
associatePrincipalWithPortfolio :
    String
    -> String
    -> PrincipalType
    -> (AssociatePrincipalWithPortfolioOptions -> AssociatePrincipalWithPortfolioOptions)
    -> AWS.Http.UnsignedRequest AssociatePrincipalWithPortfolioOutput
associatePrincipalWithPortfolio portfolioId principalARN principalType setOptions =
  let
    options = setOptions (AssociatePrincipalWithPortfolioOptions Nothing)
  in
    AWS.Http.unsignedRequest
        "AssociatePrincipalWithPortfolio"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        associatePrincipalWithPortfolioOutputDecoder


{-| Options for a associatePrincipalWithPortfolio request
-}
type alias AssociatePrincipalWithPortfolioOptions =
    { acceptLanguage : Maybe String
    }



{-| <p>Associates a product with a portfolio.</p>

__Required Parameters__

* `productId` __:__ `String`
* `portfolioId` __:__ `String`


-}
associateProductWithPortfolio :
    String
    -> String
    -> (AssociateProductWithPortfolioOptions -> AssociateProductWithPortfolioOptions)
    -> AWS.Http.UnsignedRequest AssociateProductWithPortfolioOutput
associateProductWithPortfolio productId portfolioId setOptions =
  let
    options = setOptions (AssociateProductWithPortfolioOptions Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "AssociateProductWithPortfolio"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        associateProductWithPortfolioOutputDecoder


{-| Options for a associateProductWithPortfolio request
-}
type alias AssociateProductWithPortfolioOptions =
    { acceptLanguage : Maybe String
    , sourcePortfolioId : Maybe String
    }



{-| <p>Creates a new constraint.</p>

__Required Parameters__

* `portfolioId` __:__ `String`
* `productId` __:__ `String`
* `parameters` __:__ `String`
* `type_` __:__ `String`
* `idempotencyToken` __:__ `String`


-}
createConstraint :
    String
    -> String
    -> String
    -> String
    -> String
    -> (CreateConstraintOptions -> CreateConstraintOptions)
    -> AWS.Http.UnsignedRequest CreateConstraintOutput
createConstraint portfolioId productId parameters type_ idempotencyToken setOptions =
  let
    options = setOptions (CreateConstraintOptions Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "CreateConstraint"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        createConstraintOutputDecoder


{-| Options for a createConstraint request
-}
type alias CreateConstraintOptions =
    { acceptLanguage : Maybe String
    , description : Maybe String
    }



{-| <p>Creates a new portfolio.</p>

__Required Parameters__

* `displayName` __:__ `String`
* `providerName` __:__ `String`
* `idempotencyToken` __:__ `String`


-}
createPortfolio :
    String
    -> String
    -> String
    -> (CreatePortfolioOptions -> CreatePortfolioOptions)
    -> AWS.Http.UnsignedRequest CreatePortfolioOutput
createPortfolio displayName providerName idempotencyToken setOptions =
  let
    options = setOptions (CreatePortfolioOptions Nothing Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "CreatePortfolio"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        createPortfolioOutputDecoder


{-| Options for a createPortfolio request
-}
type alias CreatePortfolioOptions =
    { acceptLanguage : Maybe String
    , description : Maybe String
    , tags : Maybe (List Tag)
    }



{-| <p>Creates a new portfolio share.</p>

__Required Parameters__

* `portfolioId` __:__ `String`
* `accountId` __:__ `String`


-}
createPortfolioShare :
    String
    -> String
    -> (CreatePortfolioShareOptions -> CreatePortfolioShareOptions)
    -> AWS.Http.UnsignedRequest CreatePortfolioShareOutput
createPortfolioShare portfolioId accountId setOptions =
  let
    options = setOptions (CreatePortfolioShareOptions Nothing)
  in
    AWS.Http.unsignedRequest
        "CreatePortfolioShare"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        createPortfolioShareOutputDecoder


{-| Options for a createPortfolioShare request
-}
type alias CreatePortfolioShareOptions =
    { acceptLanguage : Maybe String
    }



{-| <p>Creates a new product.</p>

__Required Parameters__

* `name` __:__ `String`
* `owner` __:__ `String`
* `productType` __:__ `ProductType`
* `provisioningArtifactParameters` __:__ `ProvisioningArtifactProperties`
* `idempotencyToken` __:__ `String`


-}
createProduct :
    String
    -> String
    -> ProductType
    -> ProvisioningArtifactProperties
    -> String
    -> (CreateProductOptions -> CreateProductOptions)
    -> AWS.Http.UnsignedRequest CreateProductOutput
createProduct name owner productType provisioningArtifactParameters idempotencyToken setOptions =
  let
    options = setOptions (CreateProductOptions Nothing Nothing Nothing Nothing Nothing Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "CreateProduct"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        createProductOutputDecoder


{-| Options for a createProduct request
-}
type alias CreateProductOptions =
    { acceptLanguage : Maybe String
    , description : Maybe String
    , distributor : Maybe String
    , supportDescription : Maybe String
    , supportEmail : Maybe String
    , supportUrl : Maybe String
    , tags : Maybe (List Tag)
    }



{-| <p>Create a new provisioning artifact for the specified product. This operation will not work with a product that has been shared with you.</p>

__Required Parameters__

* `productId` __:__ `String`
* `parameters` __:__ `ProvisioningArtifactProperties`
* `idempotencyToken` __:__ `String`


-}
createProvisioningArtifact :
    String
    -> ProvisioningArtifactProperties
    -> String
    -> (CreateProvisioningArtifactOptions -> CreateProvisioningArtifactOptions)
    -> AWS.Http.UnsignedRequest CreateProvisioningArtifactOutput
createProvisioningArtifact productId parameters idempotencyToken setOptions =
  let
    options = setOptions (CreateProvisioningArtifactOptions Nothing)
  in
    AWS.Http.unsignedRequest
        "CreateProvisioningArtifact"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        createProvisioningArtifactOutputDecoder


{-| Options for a createProvisioningArtifact request
-}
type alias CreateProvisioningArtifactOptions =
    { acceptLanguage : Maybe String
    }



{-| <p>Deletes the specified constraint.</p>

__Required Parameters__

* `id` __:__ `String`


-}
deleteConstraint :
    String
    -> (DeleteConstraintOptions -> DeleteConstraintOptions)
    -> AWS.Http.UnsignedRequest DeleteConstraintOutput
deleteConstraint id setOptions =
  let
    options = setOptions (DeleteConstraintOptions Nothing)
  in
    AWS.Http.unsignedRequest
        "DeleteConstraint"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        deleteConstraintOutputDecoder


{-| Options for a deleteConstraint request
-}
type alias DeleteConstraintOptions =
    { acceptLanguage : Maybe String
    }



{-| <p>Deletes the specified portfolio. This operation will not work with a portfolio that has been shared with you or if it has products, users, constraints, or shared accounts associated with it.</p>

__Required Parameters__

* `id` __:__ `String`


-}
deletePortfolio :
    String
    -> (DeletePortfolioOptions -> DeletePortfolioOptions)
    -> AWS.Http.UnsignedRequest DeletePortfolioOutput
deletePortfolio id setOptions =
  let
    options = setOptions (DeletePortfolioOptions Nothing)
  in
    AWS.Http.unsignedRequest
        "DeletePortfolio"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        deletePortfolioOutputDecoder


{-| Options for a deletePortfolio request
-}
type alias DeletePortfolioOptions =
    { acceptLanguage : Maybe String
    }



{-| <p>Deletes the specified portfolio share.</p>

__Required Parameters__

* `portfolioId` __:__ `String`
* `accountId` __:__ `String`


-}
deletePortfolioShare :
    String
    -> String
    -> (DeletePortfolioShareOptions -> DeletePortfolioShareOptions)
    -> AWS.Http.UnsignedRequest DeletePortfolioShareOutput
deletePortfolioShare portfolioId accountId setOptions =
  let
    options = setOptions (DeletePortfolioShareOptions Nothing)
  in
    AWS.Http.unsignedRequest
        "DeletePortfolioShare"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        deletePortfolioShareOutputDecoder


{-| Options for a deletePortfolioShare request
-}
type alias DeletePortfolioShareOptions =
    { acceptLanguage : Maybe String
    }



{-| <p>Deletes the specified product. This operation will not work with a product that has been shared with you or is associated with a portfolio. </p>

__Required Parameters__

* `id` __:__ `String`


-}
deleteProduct :
    String
    -> (DeleteProductOptions -> DeleteProductOptions)
    -> AWS.Http.UnsignedRequest DeleteProductOutput
deleteProduct id setOptions =
  let
    options = setOptions (DeleteProductOptions Nothing)
  in
    AWS.Http.unsignedRequest
        "DeleteProduct"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        deleteProductOutputDecoder


{-| Options for a deleteProduct request
-}
type alias DeleteProductOptions =
    { acceptLanguage : Maybe String
    }



{-| <p>Deletes the specified provisioning artifact. This operation will not work on a provisioning artifact associated with a product that has been shared with you, or on the last provisioning artifact associated with a product (a product must have at least one provisioning artifact).</p>

__Required Parameters__

* `productId` __:__ `String`
* `provisioningArtifactId` __:__ `String`


-}
deleteProvisioningArtifact :
    String
    -> String
    -> (DeleteProvisioningArtifactOptions -> DeleteProvisioningArtifactOptions)
    -> AWS.Http.UnsignedRequest DeleteProvisioningArtifactOutput
deleteProvisioningArtifact productId provisioningArtifactId setOptions =
  let
    options = setOptions (DeleteProvisioningArtifactOptions Nothing)
  in
    AWS.Http.unsignedRequest
        "DeleteProvisioningArtifact"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        deleteProvisioningArtifactOutputDecoder


{-| Options for a deleteProvisioningArtifact request
-}
type alias DeleteProvisioningArtifactOptions =
    { acceptLanguage : Maybe String
    }



{-| <p>Retrieves detailed information for a specified constraint.</p>

__Required Parameters__

* `id` __:__ `String`


-}
describeConstraint :
    String
    -> (DescribeConstraintOptions -> DescribeConstraintOptions)
    -> AWS.Http.UnsignedRequest DescribeConstraintOutput
describeConstraint id setOptions =
  let
    options = setOptions (DescribeConstraintOptions Nothing)
  in
    AWS.Http.unsignedRequest
        "DescribeConstraint"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        describeConstraintOutputDecoder


{-| Options for a describeConstraint request
-}
type alias DescribeConstraintOptions =
    { acceptLanguage : Maybe String
    }



{-| <p>Retrieves detailed information and any tags associated with the specified portfolio.</p>

__Required Parameters__

* `id` __:__ `String`


-}
describePortfolio :
    String
    -> (DescribePortfolioOptions -> DescribePortfolioOptions)
    -> AWS.Http.UnsignedRequest DescribePortfolioOutput
describePortfolio id setOptions =
  let
    options = setOptions (DescribePortfolioOptions Nothing)
  in
    AWS.Http.unsignedRequest
        "DescribePortfolio"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        describePortfolioOutputDecoder


{-| Options for a describePortfolio request
-}
type alias DescribePortfolioOptions =
    { acceptLanguage : Maybe String
    }



{-| <p>Retrieves information about a specified product.</p> <p>This operation is functionally identical to <a>DescribeProductView</a> except that it takes as input <code>ProductId</code> instead of <code>ProductViewId</code>.</p>

__Required Parameters__

* `id` __:__ `String`


-}
describeProduct :
    String
    -> (DescribeProductOptions -> DescribeProductOptions)
    -> AWS.Http.UnsignedRequest DescribeProductOutput
describeProduct id setOptions =
  let
    options = setOptions (DescribeProductOptions Nothing)
  in
    AWS.Http.unsignedRequest
        "DescribeProduct"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        describeProductOutputDecoder


{-| Options for a describeProduct request
-}
type alias DescribeProductOptions =
    { acceptLanguage : Maybe String
    }



{-| <p>Retrieves information about a specified product, run with administrator access.</p>

__Required Parameters__

* `id` __:__ `String`


-}
describeProductAsAdmin :
    String
    -> (DescribeProductAsAdminOptions -> DescribeProductAsAdminOptions)
    -> AWS.Http.UnsignedRequest DescribeProductAsAdminOutput
describeProductAsAdmin id setOptions =
  let
    options = setOptions (DescribeProductAsAdminOptions Nothing)
  in
    AWS.Http.unsignedRequest
        "DescribeProductAsAdmin"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        describeProductAsAdminOutputDecoder


{-| Options for a describeProductAsAdmin request
-}
type alias DescribeProductAsAdminOptions =
    { acceptLanguage : Maybe String
    }



{-| <p>Retrieves information about a specified product.</p> <p>This operation is functionally identical to <a>DescribeProduct</a> except that it takes as input <code>ProductViewId</code> instead of <code>ProductId</code>.</p>

__Required Parameters__

* `id` __:__ `String`


-}
describeProductView :
    String
    -> (DescribeProductViewOptions -> DescribeProductViewOptions)
    -> AWS.Http.UnsignedRequest DescribeProductViewOutput
describeProductView id setOptions =
  let
    options = setOptions (DescribeProductViewOptions Nothing)
  in
    AWS.Http.unsignedRequest
        "DescribeProductView"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        describeProductViewOutputDecoder


{-| Options for a describeProductView request
-}
type alias DescribeProductViewOptions =
    { acceptLanguage : Maybe String
    }



{-| <p>Retrieves detailed information about the specified provisioning artifact.</p>

__Required Parameters__

* `provisioningArtifactId` __:__ `String`
* `productId` __:__ `String`


-}
describeProvisioningArtifact :
    String
    -> String
    -> (DescribeProvisioningArtifactOptions -> DescribeProvisioningArtifactOptions)
    -> AWS.Http.UnsignedRequest DescribeProvisioningArtifactOutput
describeProvisioningArtifact provisioningArtifactId productId setOptions =
  let
    options = setOptions (DescribeProvisioningArtifactOptions Nothing)
  in
    AWS.Http.unsignedRequest
        "DescribeProvisioningArtifact"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        describeProvisioningArtifactOutputDecoder


{-| Options for a describeProvisioningArtifact request
-}
type alias DescribeProvisioningArtifactOptions =
    { acceptLanguage : Maybe String
    }



{-| <p>Provides information about parameters required to provision a specified product in a specified manner. Use this operation to obtain the list of <code>ProvisioningArtifactParameters</code> parameters available to call the <a>ProvisionProduct</a> operation for the specified product.</p>

__Required Parameters__

* `productId` __:__ `String`
* `provisioningArtifactId` __:__ `String`


-}
describeProvisioningParameters :
    String
    -> String
    -> (DescribeProvisioningParametersOptions -> DescribeProvisioningParametersOptions)
    -> AWS.Http.UnsignedRequest DescribeProvisioningParametersOutput
describeProvisioningParameters productId provisioningArtifactId setOptions =
  let
    options = setOptions (DescribeProvisioningParametersOptions Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "DescribeProvisioningParameters"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        describeProvisioningParametersOutputDecoder


{-| Options for a describeProvisioningParameters request
-}
type alias DescribeProvisioningParametersOptions =
    { acceptLanguage : Maybe String
    , pathId : Maybe String
    }



{-| <p>Retrieves a paginated list of the full details of a specific request. Use this operation after calling a request operation (<a>ProvisionProduct</a>, <a>TerminateProvisionedProduct</a>, or <a>UpdateProvisionedProduct</a>). </p>

__Required Parameters__

* `id` __:__ `String`


-}
describeRecord :
    String
    -> (DescribeRecordOptions -> DescribeRecordOptions)
    -> AWS.Http.UnsignedRequest DescribeRecordOutput
describeRecord id setOptions =
  let
    options = setOptions (DescribeRecordOptions Nothing Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "DescribeRecord"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        describeRecordOutputDecoder


{-| Options for a describeRecord request
-}
type alias DescribeRecordOptions =
    { acceptLanguage : Maybe String
    , pageToken : Maybe String
    , pageSize : Maybe Int
    }



{-| <p>Disassociates a previously associated principal ARN from a specified portfolio.</p>

__Required Parameters__

* `portfolioId` __:__ `String`
* `principalARN` __:__ `String`


-}
disassociatePrincipalFromPortfolio :
    String
    -> String
    -> (DisassociatePrincipalFromPortfolioOptions -> DisassociatePrincipalFromPortfolioOptions)
    -> AWS.Http.UnsignedRequest DisassociatePrincipalFromPortfolioOutput
disassociatePrincipalFromPortfolio portfolioId principalARN setOptions =
  let
    options = setOptions (DisassociatePrincipalFromPortfolioOptions Nothing)
  in
    AWS.Http.unsignedRequest
        "DisassociatePrincipalFromPortfolio"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        disassociatePrincipalFromPortfolioOutputDecoder


{-| Options for a disassociatePrincipalFromPortfolio request
-}
type alias DisassociatePrincipalFromPortfolioOptions =
    { acceptLanguage : Maybe String
    }



{-| <p>Disassociates the specified product from the specified portfolio. </p>

__Required Parameters__

* `productId` __:__ `String`
* `portfolioId` __:__ `String`


-}
disassociateProductFromPortfolio :
    String
    -> String
    -> (DisassociateProductFromPortfolioOptions -> DisassociateProductFromPortfolioOptions)
    -> AWS.Http.UnsignedRequest DisassociateProductFromPortfolioOutput
disassociateProductFromPortfolio productId portfolioId setOptions =
  let
    options = setOptions (DisassociateProductFromPortfolioOptions Nothing)
  in
    AWS.Http.unsignedRequest
        "DisassociateProductFromPortfolio"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        disassociateProductFromPortfolioOutputDecoder


{-| Options for a disassociateProductFromPortfolio request
-}
type alias DisassociateProductFromPortfolioOptions =
    { acceptLanguage : Maybe String
    }



{-| <p>Lists details of all portfolios for which sharing was accepted by this account.</p>

__Required Parameters__



-}
listAcceptedPortfolioShares :
    (ListAcceptedPortfolioSharesOptions -> ListAcceptedPortfolioSharesOptions)
    -> AWS.Http.UnsignedRequest ListAcceptedPortfolioSharesOutput
listAcceptedPortfolioShares setOptions =
  let
    options = setOptions (ListAcceptedPortfolioSharesOptions Nothing Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "ListAcceptedPortfolioShares"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        listAcceptedPortfolioSharesOutputDecoder


{-| Options for a listAcceptedPortfolioShares request
-}
type alias ListAcceptedPortfolioSharesOptions =
    { acceptLanguage : Maybe String
    , pageToken : Maybe String
    , pageSize : Maybe Int
    }



{-| <p>Retrieves detailed constraint information for the specified portfolio and product.</p>

__Required Parameters__

* `portfolioId` __:__ `String`


-}
listConstraintsForPortfolio :
    String
    -> (ListConstraintsForPortfolioOptions -> ListConstraintsForPortfolioOptions)
    -> AWS.Http.UnsignedRequest ListConstraintsForPortfolioOutput
listConstraintsForPortfolio portfolioId setOptions =
  let
    options = setOptions (ListConstraintsForPortfolioOptions Nothing Nothing Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "ListConstraintsForPortfolio"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        listConstraintsForPortfolioOutputDecoder


{-| Options for a listConstraintsForPortfolio request
-}
type alias ListConstraintsForPortfolioOptions =
    { acceptLanguage : Maybe String
    , productId : Maybe String
    , pageSize : Maybe Int
    , pageToken : Maybe String
    }



{-| <p>Returns a paginated list of all paths to a specified product. A path is how the user has access to a specified product, and is necessary when provisioning a product. A path also determines the constraints put on the product.</p>

__Required Parameters__

* `productId` __:__ `String`


-}
listLaunchPaths :
    String
    -> (ListLaunchPathsOptions -> ListLaunchPathsOptions)
    -> AWS.Http.UnsignedRequest ListLaunchPathsOutput
listLaunchPaths productId setOptions =
  let
    options = setOptions (ListLaunchPathsOptions Nothing Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "ListLaunchPaths"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        listLaunchPathsOutputDecoder


{-| Options for a listLaunchPaths request
-}
type alias ListLaunchPathsOptions =
    { acceptLanguage : Maybe String
    , pageSize : Maybe Int
    , pageToken : Maybe String
    }



{-| <p>Lists the account IDs that have been authorized sharing of the specified portfolio.</p>

__Required Parameters__

* `portfolioId` __:__ `String`


-}
listPortfolioAccess :
    String
    -> (ListPortfolioAccessOptions -> ListPortfolioAccessOptions)
    -> AWS.Http.UnsignedRequest ListPortfolioAccessOutput
listPortfolioAccess portfolioId setOptions =
  let
    options = setOptions (ListPortfolioAccessOptions Nothing)
  in
    AWS.Http.unsignedRequest
        "ListPortfolioAccess"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        listPortfolioAccessOutputDecoder


{-| Options for a listPortfolioAccess request
-}
type alias ListPortfolioAccessOptions =
    { acceptLanguage : Maybe String
    }



{-| <p>Lists all portfolios in the catalog.</p>

__Required Parameters__



-}
listPortfolios :
    (ListPortfoliosOptions -> ListPortfoliosOptions)
    -> AWS.Http.UnsignedRequest ListPortfoliosOutput
listPortfolios setOptions =
  let
    options = setOptions (ListPortfoliosOptions Nothing Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "ListPortfolios"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        listPortfoliosOutputDecoder


{-| Options for a listPortfolios request
-}
type alias ListPortfoliosOptions =
    { acceptLanguage : Maybe String
    , pageToken : Maybe String
    , pageSize : Maybe Int
    }



{-| <p>Lists all portfolios that the specified product is associated with.</p>

__Required Parameters__

* `productId` __:__ `String`


-}
listPortfoliosForProduct :
    String
    -> (ListPortfoliosForProductOptions -> ListPortfoliosForProductOptions)
    -> AWS.Http.UnsignedRequest ListPortfoliosForProductOutput
listPortfoliosForProduct productId setOptions =
  let
    options = setOptions (ListPortfoliosForProductOptions Nothing Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "ListPortfoliosForProduct"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        listPortfoliosForProductOutputDecoder


{-| Options for a listPortfoliosForProduct request
-}
type alias ListPortfoliosForProductOptions =
    { acceptLanguage : Maybe String
    , pageToken : Maybe String
    , pageSize : Maybe Int
    }



{-| <p>Lists all principal ARNs associated with the specified portfolio.</p>

__Required Parameters__

* `portfolioId` __:__ `String`


-}
listPrincipalsForPortfolio :
    String
    -> (ListPrincipalsForPortfolioOptions -> ListPrincipalsForPortfolioOptions)
    -> AWS.Http.UnsignedRequest ListPrincipalsForPortfolioOutput
listPrincipalsForPortfolio portfolioId setOptions =
  let
    options = setOptions (ListPrincipalsForPortfolioOptions Nothing Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "ListPrincipalsForPortfolio"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        listPrincipalsForPortfolioOutputDecoder


{-| Options for a listPrincipalsForPortfolio request
-}
type alias ListPrincipalsForPortfolioOptions =
    { acceptLanguage : Maybe String
    , pageSize : Maybe Int
    , pageToken : Maybe String
    }



{-| <p>Lists all provisioning artifacts associated with the specified product.</p>

__Required Parameters__

* `productId` __:__ `String`


-}
listProvisioningArtifacts :
    String
    -> (ListProvisioningArtifactsOptions -> ListProvisioningArtifactsOptions)
    -> AWS.Http.UnsignedRequest ListProvisioningArtifactsOutput
listProvisioningArtifacts productId setOptions =
  let
    options = setOptions (ListProvisioningArtifactsOptions Nothing)
  in
    AWS.Http.unsignedRequest
        "ListProvisioningArtifacts"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        listProvisioningArtifactsOutputDecoder


{-| Options for a listProvisioningArtifacts request
-}
type alias ListProvisioningArtifactsOptions =
    { acceptLanguage : Maybe String
    }



{-| <p>Returns a paginated list of all performed requests, in the form of RecordDetails objects that are filtered as specified.</p>

__Required Parameters__



-}
listRecordHistory :
    (ListRecordHistoryOptions -> ListRecordHistoryOptions)
    -> AWS.Http.UnsignedRequest ListRecordHistoryOutput
listRecordHistory setOptions =
  let
    options = setOptions (ListRecordHistoryOptions Nothing Nothing Nothing Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "ListRecordHistory"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        listRecordHistoryOutputDecoder


{-| Options for a listRecordHistory request
-}
type alias ListRecordHistoryOptions =
    { acceptLanguage : Maybe String
    , accessLevelFilter : Maybe AccessLevelFilter
    , searchFilter : Maybe ListRecordHistorySearchFilter
    , pageSize : Maybe Int
    , pageToken : Maybe String
    }



{-| <p>Requests a <i>Provision</i> of a specified product. A <i>ProvisionedProduct</i> is a resourced instance for a product. For example, provisioning a CloudFormation-template-backed product results in launching a CloudFormation stack and all the underlying resources that come with it. </p> <p>You can check the status of this request using the <a>DescribeRecord</a> operation.</p>

__Required Parameters__

* `productId` __:__ `String`
* `provisioningArtifactId` __:__ `String`
* `provisionedProductName` __:__ `String`
* `provisionToken` __:__ `String`


-}
provisionProduct :
    String
    -> String
    -> String
    -> String
    -> (ProvisionProductOptions -> ProvisionProductOptions)
    -> AWS.Http.UnsignedRequest ProvisionProductOutput
provisionProduct productId provisioningArtifactId provisionedProductName provisionToken setOptions =
  let
    options = setOptions (ProvisionProductOptions Nothing Nothing Nothing Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "ProvisionProduct"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        provisionProductOutputDecoder


{-| Options for a provisionProduct request
-}
type alias ProvisionProductOptions =
    { acceptLanguage : Maybe String
    , pathId : Maybe String
    , provisioningParameters : Maybe (List ProvisioningParameter)
    , tags : Maybe (List Tag)
    , notificationArns : Maybe (List String)
    }



{-| <p>Rejects an offer to share a portfolio.</p>

__Required Parameters__

* `portfolioId` __:__ `String`


-}
rejectPortfolioShare :
    String
    -> (RejectPortfolioShareOptions -> RejectPortfolioShareOptions)
    -> AWS.Http.UnsignedRequest RejectPortfolioShareOutput
rejectPortfolioShare portfolioId setOptions =
  let
    options = setOptions (RejectPortfolioShareOptions Nothing)
  in
    AWS.Http.unsignedRequest
        "RejectPortfolioShare"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        rejectPortfolioShareOutputDecoder


{-| Options for a rejectPortfolioShare request
-}
type alias RejectPortfolioShareOptions =
    { acceptLanguage : Maybe String
    }



{-| <p>Returns a paginated list of all the ProvisionedProduct objects that are currently available (not terminated). </p>

__Required Parameters__



-}
scanProvisionedProducts :
    (ScanProvisionedProductsOptions -> ScanProvisionedProductsOptions)
    -> AWS.Http.UnsignedRequest ScanProvisionedProductsOutput
scanProvisionedProducts setOptions =
  let
    options = setOptions (ScanProvisionedProductsOptions Nothing Nothing Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "ScanProvisionedProducts"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        scanProvisionedProductsOutputDecoder


{-| Options for a scanProvisionedProducts request
-}
type alias ScanProvisionedProductsOptions =
    { acceptLanguage : Maybe String
    , accessLevelFilter : Maybe AccessLevelFilter
    , pageSize : Maybe Int
    , pageToken : Maybe String
    }



{-| <p>Returns a paginated list all of the <code>Products</code> objects to which the caller has access. </p> <p>The output of this operation can be used as input for other operations, such as <a>DescribeProductView</a>.</p>

__Required Parameters__



-}
searchProducts :
    (SearchProductsOptions -> SearchProductsOptions)
    -> AWS.Http.UnsignedRequest SearchProductsOutput
searchProducts setOptions =
  let
    options = setOptions (SearchProductsOptions Nothing Nothing Nothing Nothing Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "SearchProducts"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        searchProductsOutputDecoder


{-| Options for a searchProducts request
-}
type alias SearchProductsOptions =
    { acceptLanguage : Maybe String
    , filters : Maybe (Dict String (List String))
    , pageSize : Maybe Int
    , sortBy : Maybe ProductViewSortBy
    , sortOrder : Maybe SortOrder
    , pageToken : Maybe String
    }



{-| <p>Retrieves summary and status information about all products created within the caller's account. If a portfolio ID is provided, this operation retrieves information for only those products that are associated with the specified portfolio.</p>

__Required Parameters__



-}
searchProductsAsAdmin :
    (SearchProductsAsAdminOptions -> SearchProductsAsAdminOptions)
    -> AWS.Http.UnsignedRequest SearchProductsAsAdminOutput
searchProductsAsAdmin setOptions =
  let
    options = setOptions (SearchProductsAsAdminOptions Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "SearchProductsAsAdmin"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        searchProductsAsAdminOutputDecoder


{-| Options for a searchProductsAsAdmin request
-}
type alias SearchProductsAsAdminOptions =
    { acceptLanguage : Maybe String
    , portfolioId : Maybe String
    , filters : Maybe (Dict String (List String))
    , sortBy : Maybe ProductViewSortBy
    , sortOrder : Maybe SortOrder
    , pageToken : Maybe String
    , pageSize : Maybe Int
    , productSource : Maybe ProductSource
    }



{-| <p>Requests termination of an existing ProvisionedProduct object. If there are <code>Tags</code> associated with the object, they are terminated when the ProvisionedProduct object is terminated. </p> <p>This operation does not delete any records associated with the ProvisionedProduct object.</p> <p>You can check the status of this request using the <a>DescribeRecord</a> operation.</p>

__Required Parameters__

* `terminateToken` __:__ `String`


-}
terminateProvisionedProduct :
    String
    -> (TerminateProvisionedProductOptions -> TerminateProvisionedProductOptions)
    -> AWS.Http.UnsignedRequest TerminateProvisionedProductOutput
terminateProvisionedProduct terminateToken setOptions =
  let
    options = setOptions (TerminateProvisionedProductOptions Nothing Nothing Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "TerminateProvisionedProduct"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        terminateProvisionedProductOutputDecoder


{-| Options for a terminateProvisionedProduct request
-}
type alias TerminateProvisionedProductOptions =
    { provisionedProductName : Maybe String
    , provisionedProductId : Maybe String
    , ignoreErrors : Maybe Bool
    , acceptLanguage : Maybe String
    }



{-| <p>Updates an existing constraint.</p>

__Required Parameters__

* `id` __:__ `String`


-}
updateConstraint :
    String
    -> (UpdateConstraintOptions -> UpdateConstraintOptions)
    -> AWS.Http.UnsignedRequest UpdateConstraintOutput
updateConstraint id setOptions =
  let
    options = setOptions (UpdateConstraintOptions Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "UpdateConstraint"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        updateConstraintOutputDecoder


{-| Options for a updateConstraint request
-}
type alias UpdateConstraintOptions =
    { acceptLanguage : Maybe String
    , description : Maybe String
    }



{-| <p>Updates the specified portfolio's details. This operation will not work with a product that has been shared with you.</p>

__Required Parameters__

* `id` __:__ `String`


-}
updatePortfolio :
    String
    -> (UpdatePortfolioOptions -> UpdatePortfolioOptions)
    -> AWS.Http.UnsignedRequest UpdatePortfolioOutput
updatePortfolio id setOptions =
  let
    options = setOptions (UpdatePortfolioOptions Nothing Nothing Nothing Nothing Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "UpdatePortfolio"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        updatePortfolioOutputDecoder


{-| Options for a updatePortfolio request
-}
type alias UpdatePortfolioOptions =
    { acceptLanguage : Maybe String
    , displayName : Maybe String
    , description : Maybe String
    , providerName : Maybe String
    , addTags : Maybe (List Tag)
    , removeTags : Maybe (List String)
    }



{-| <p>Updates an existing product.</p>

__Required Parameters__

* `id` __:__ `String`


-}
updateProduct :
    String
    -> (UpdateProductOptions -> UpdateProductOptions)
    -> AWS.Http.UnsignedRequest UpdateProductOutput
updateProduct id setOptions =
  let
    options = setOptions (UpdateProductOptions Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "UpdateProduct"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        updateProductOutputDecoder


{-| Options for a updateProduct request
-}
type alias UpdateProductOptions =
    { acceptLanguage : Maybe String
    , name : Maybe String
    , owner : Maybe String
    , description : Maybe String
    , distributor : Maybe String
    , supportDescription : Maybe String
    , supportEmail : Maybe String
    , supportUrl : Maybe String
    , addTags : Maybe (List Tag)
    , removeTags : Maybe (List String)
    }



{-| <p>Requests updates to the configuration of an existing ProvisionedProduct object. If there are tags associated with the object, they cannot be updated or added with this operation. Depending on the specific updates requested, this operation may update with no interruption, with some interruption, or replace the ProvisionedProduct object entirely. </p> <p>You can check the status of this request using the <a>DescribeRecord</a> operation.</p>

__Required Parameters__

* `updateToken` __:__ `String`


-}
updateProvisionedProduct :
    String
    -> (UpdateProvisionedProductOptions -> UpdateProvisionedProductOptions)
    -> AWS.Http.UnsignedRequest UpdateProvisionedProductOutput
updateProvisionedProduct updateToken setOptions =
  let
    options = setOptions (UpdateProvisionedProductOptions Nothing Nothing Nothing Nothing Nothing Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "UpdateProvisionedProduct"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        updateProvisionedProductOutputDecoder


{-| Options for a updateProvisionedProduct request
-}
type alias UpdateProvisionedProductOptions =
    { acceptLanguage : Maybe String
    , provisionedProductName : Maybe String
    , provisionedProductId : Maybe String
    , productId : Maybe String
    , provisioningArtifactId : Maybe String
    , pathId : Maybe String
    , provisioningParameters : Maybe (List UpdateProvisioningParameter)
    }



{-| <p>Updates an existing provisioning artifact's information. This operation will not work on a provisioning artifact associated with a product that has been shared with you.</p>

__Required Parameters__

* `productId` __:__ `String`
* `provisioningArtifactId` __:__ `String`


-}
updateProvisioningArtifact :
    String
    -> String
    -> (UpdateProvisioningArtifactOptions -> UpdateProvisioningArtifactOptions)
    -> AWS.Http.UnsignedRequest UpdateProvisioningArtifactOutput
updateProvisioningArtifact productId provisioningArtifactId setOptions =
  let
    options = setOptions (UpdateProvisioningArtifactOptions Nothing Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "UpdateProvisioningArtifact"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        updateProvisioningArtifactOutputDecoder


{-| Options for a updateProvisioningArtifact request
-}
type alias UpdateProvisioningArtifactOptions =
    { acceptLanguage : Maybe String
    , name : Maybe String
    , description : Maybe String
    }




{-| Type of HTTP response from acceptPortfolioSha
-}
type alias AcceptPortfolioShareOutput =
    { 
    }



acceptPortfolioShareOutputDecoder : JD.Decoder AcceptPortfolioShareOutput
acceptPortfolioShareOutputDecoder =
    JDP.decode AcceptPortfolioShareOutput



{-| <p>The access level to limit results.</p>
-}
type alias AccessLevelFilter =
    { key : Maybe AccessLevelFilterKey
    , value : Maybe String
    }



accessLevelFilterDecoder : JD.Decoder AccessLevelFilter
accessLevelFilterDecoder =
    JDP.decode AccessLevelFilter
        |> JDP.optional "key" (JD.nullable accessLevelFilterKeyDecoder) Nothing
        |> JDP.optional "value" (JD.nullable JD.string) Nothing




{-| One of

* `AccessLevelFilterKey_Account`
* `AccessLevelFilterKey_Role`
* `AccessLevelFilterKey_User`

-}
type AccessLevelFilterKey
    = AccessLevelFilterKey_Account
    | AccessLevelFilterKey_Role
    | AccessLevelFilterKey_User



accessLevelFilterKeyDecoder : JD.Decoder AccessLevelFilterKey
accessLevelFilterKeyDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "Account" ->
                        JD.succeed AccessLevelFilterKey_Account

                    "Role" ->
                        JD.succeed AccessLevelFilterKey_Role

                    "User" ->
                        JD.succeed AccessLevelFilterKey_User


                    _ ->
                        JD.fail "bad thing"
            )



{-| Type of HTTP response from associatePrincipalWithPortfol
-}
type alias AssociatePrincipalWithPortfolioOutput =
    { 
    }



associatePrincipalWithPortfolioOutputDecoder : JD.Decoder AssociatePrincipalWithPortfolioOutput
associatePrincipalWithPortfolioOutputDecoder =
    JDP.decode AssociatePrincipalWithPortfolioOutput



{-| Type of HTTP response from associateProductWithPortfol
-}
type alias AssociateProductWithPortfolioOutput =
    { 
    }



associateProductWithPortfolioOutputDecoder : JD.Decoder AssociateProductWithPortfolioOutput
associateProductWithPortfolioOutputDecoder =
    JDP.decode AssociateProductWithPortfolioOutput



{-| <p>Detailed constraint information.</p>
-}
type alias ConstraintDetail =
    { constraintId : Maybe String
    , type_ : Maybe String
    , description : Maybe String
    , owner : Maybe String
    }



constraintDetailDecoder : JD.Decoder ConstraintDetail
constraintDetailDecoder =
    JDP.decode ConstraintDetail
        |> JDP.optional "constraintId" (JD.nullable JD.string) Nothing
        |> JDP.optional "type_" (JD.nullable JD.string) Nothing
        |> JDP.optional "description" (JD.nullable JD.string) Nothing
        |> JDP.optional "owner" (JD.nullable JD.string) Nothing




{-| <p>An administrator-specified constraint to apply when provisioning a product.</p>
-}
type alias ConstraintSummary =
    { type_ : Maybe String
    , description : Maybe String
    }



constraintSummaryDecoder : JD.Decoder ConstraintSummary
constraintSummaryDecoder =
    JDP.decode ConstraintSummary
        |> JDP.optional "type_" (JD.nullable JD.string) Nothing
        |> JDP.optional "description" (JD.nullable JD.string) Nothing




{-| Type of HTTP response from createConstrai
-}
type alias CreateConstraintOutput =
    { constraintDetail : Maybe ConstraintDetail
    , constraintParameters : Maybe String
    , status : Maybe Status
    }



createConstraintOutputDecoder : JD.Decoder CreateConstraintOutput
createConstraintOutputDecoder =
    JDP.decode CreateConstraintOutput
        |> JDP.optional "constraintDetail" (JD.nullable constraintDetailDecoder) Nothing
        |> JDP.optional "constraintParameters" (JD.nullable JD.string) Nothing
        |> JDP.optional "status" (JD.nullable statusDecoder) Nothing




{-| Type of HTTP response from createPortfol
-}
type alias CreatePortfolioOutput =
    { portfolioDetail : Maybe PortfolioDetail
    , tags : Maybe (List Tag)
    }



createPortfolioOutputDecoder : JD.Decoder CreatePortfolioOutput
createPortfolioOutputDecoder =
    JDP.decode CreatePortfolioOutput
        |> JDP.optional "portfolioDetail" (JD.nullable portfolioDetailDecoder) Nothing
        |> JDP.optional "tags" (JD.nullable (JD.list tagDecoder)) Nothing




{-| Type of HTTP response from createPortfolioSha
-}
type alias CreatePortfolioShareOutput =
    { 
    }



createPortfolioShareOutputDecoder : JD.Decoder CreatePortfolioShareOutput
createPortfolioShareOutputDecoder =
    JDP.decode CreatePortfolioShareOutput



{-| Type of HTTP response from createProdu
-}
type alias CreateProductOutput =
    { productViewDetail : Maybe ProductViewDetail
    , provisioningArtifactDetail : Maybe ProvisioningArtifactDetail
    , tags : Maybe (List Tag)
    }



createProductOutputDecoder : JD.Decoder CreateProductOutput
createProductOutputDecoder =
    JDP.decode CreateProductOutput
        |> JDP.optional "productViewDetail" (JD.nullable productViewDetailDecoder) Nothing
        |> JDP.optional "provisioningArtifactDetail" (JD.nullable provisioningArtifactDetailDecoder) Nothing
        |> JDP.optional "tags" (JD.nullable (JD.list tagDecoder)) Nothing




{-| Type of HTTP response from createProvisioningArtifa
-}
type alias CreateProvisioningArtifactOutput =
    { provisioningArtifactDetail : Maybe ProvisioningArtifactDetail
    , info : Maybe (Dict String String)
    , status : Maybe Status
    }



createProvisioningArtifactOutputDecoder : JD.Decoder CreateProvisioningArtifactOutput
createProvisioningArtifactOutputDecoder =
    JDP.decode CreateProvisioningArtifactOutput
        |> JDP.optional "provisioningArtifactDetail" (JD.nullable provisioningArtifactDetailDecoder) Nothing
        |> JDP.optional "info" (JD.nullable (JD.dict JD.string)) Nothing
        |> JDP.optional "status" (JD.nullable statusDecoder) Nothing




{-| Type of HTTP response from deleteConstrai
-}
type alias DeleteConstraintOutput =
    { 
    }



deleteConstraintOutputDecoder : JD.Decoder DeleteConstraintOutput
deleteConstraintOutputDecoder =
    JDP.decode DeleteConstraintOutput



{-| Type of HTTP response from deletePortfol
-}
type alias DeletePortfolioOutput =
    { 
    }



deletePortfolioOutputDecoder : JD.Decoder DeletePortfolioOutput
deletePortfolioOutputDecoder =
    JDP.decode DeletePortfolioOutput



{-| Type of HTTP response from deletePortfolioSha
-}
type alias DeletePortfolioShareOutput =
    { 
    }



deletePortfolioShareOutputDecoder : JD.Decoder DeletePortfolioShareOutput
deletePortfolioShareOutputDecoder =
    JDP.decode DeletePortfolioShareOutput



{-| Type of HTTP response from deleteProdu
-}
type alias DeleteProductOutput =
    { 
    }



deleteProductOutputDecoder : JD.Decoder DeleteProductOutput
deleteProductOutputDecoder =
    JDP.decode DeleteProductOutput



{-| Type of HTTP response from deleteProvisioningArtifa
-}
type alias DeleteProvisioningArtifactOutput =
    { 
    }



deleteProvisioningArtifactOutputDecoder : JD.Decoder DeleteProvisioningArtifactOutput
deleteProvisioningArtifactOutputDecoder =
    JDP.decode DeleteProvisioningArtifactOutput



{-| Type of HTTP response from describeConstrai
-}
type alias DescribeConstraintOutput =
    { constraintDetail : Maybe ConstraintDetail
    , constraintParameters : Maybe String
    , status : Maybe Status
    }



describeConstraintOutputDecoder : JD.Decoder DescribeConstraintOutput
describeConstraintOutputDecoder =
    JDP.decode DescribeConstraintOutput
        |> JDP.optional "constraintDetail" (JD.nullable constraintDetailDecoder) Nothing
        |> JDP.optional "constraintParameters" (JD.nullable JD.string) Nothing
        |> JDP.optional "status" (JD.nullable statusDecoder) Nothing




{-| Type of HTTP response from describePortfol
-}
type alias DescribePortfolioOutput =
    { portfolioDetail : Maybe PortfolioDetail
    , tags : Maybe (List Tag)
    }



describePortfolioOutputDecoder : JD.Decoder DescribePortfolioOutput
describePortfolioOutputDecoder =
    JDP.decode DescribePortfolioOutput
        |> JDP.optional "portfolioDetail" (JD.nullable portfolioDetailDecoder) Nothing
        |> JDP.optional "tags" (JD.nullable (JD.list tagDecoder)) Nothing




{-| Type of HTTP response from describeProductAsAdm
-}
type alias DescribeProductAsAdminOutput =
    { productViewDetail : Maybe ProductViewDetail
    , tags : Maybe (List Tag)
    }



describeProductAsAdminOutputDecoder : JD.Decoder DescribeProductAsAdminOutput
describeProductAsAdminOutputDecoder =
    JDP.decode DescribeProductAsAdminOutput
        |> JDP.optional "productViewDetail" (JD.nullable productViewDetailDecoder) Nothing
        |> JDP.optional "tags" (JD.nullable (JD.list tagDecoder)) Nothing




{-| Type of HTTP response from describeProdu
-}
type alias DescribeProductOutput =
    { productViewSummary : Maybe ProductViewSummary
    , provisioningArtifacts : Maybe (List ProvisioningArtifact)
    }



describeProductOutputDecoder : JD.Decoder DescribeProductOutput
describeProductOutputDecoder =
    JDP.decode DescribeProductOutput
        |> JDP.optional "productViewSummary" (JD.nullable productViewSummaryDecoder) Nothing
        |> JDP.optional "provisioningArtifacts" (JD.nullable (JD.list provisioningArtifactDecoder)) Nothing




{-| Type of HTTP response from describeProductVi
-}
type alias DescribeProductViewOutput =
    { productViewSummary : Maybe ProductViewSummary
    , provisioningArtifacts : Maybe (List ProvisioningArtifact)
    }



describeProductViewOutputDecoder : JD.Decoder DescribeProductViewOutput
describeProductViewOutputDecoder =
    JDP.decode DescribeProductViewOutput
        |> JDP.optional "productViewSummary" (JD.nullable productViewSummaryDecoder) Nothing
        |> JDP.optional "provisioningArtifacts" (JD.nullable (JD.list provisioningArtifactDecoder)) Nothing




{-| Type of HTTP response from describeProvisioningArtifa
-}
type alias DescribeProvisioningArtifactOutput =
    { provisioningArtifactDetail : Maybe ProvisioningArtifactDetail
    , info : Maybe (Dict String String)
    , status : Maybe Status
    }



describeProvisioningArtifactOutputDecoder : JD.Decoder DescribeProvisioningArtifactOutput
describeProvisioningArtifactOutputDecoder =
    JDP.decode DescribeProvisioningArtifactOutput
        |> JDP.optional "provisioningArtifactDetail" (JD.nullable provisioningArtifactDetailDecoder) Nothing
        |> JDP.optional "info" (JD.nullable (JD.dict JD.string)) Nothing
        |> JDP.optional "status" (JD.nullable statusDecoder) Nothing




{-| Type of HTTP response from describeProvisioningParamete
-}
type alias DescribeProvisioningParametersOutput =
    { provisioningArtifactParameters : Maybe (List ProvisioningArtifactParameter)
    , constraintSummaries : Maybe (List ConstraintSummary)
    , usageInstructions : Maybe (List UsageInstruction)
    }



describeProvisioningParametersOutputDecoder : JD.Decoder DescribeProvisioningParametersOutput
describeProvisioningParametersOutputDecoder =
    JDP.decode DescribeProvisioningParametersOutput
        |> JDP.optional "provisioningArtifactParameters" (JD.nullable (JD.list provisioningArtifactParameterDecoder)) Nothing
        |> JDP.optional "constraintSummaries" (JD.nullable (JD.list constraintSummaryDecoder)) Nothing
        |> JDP.optional "usageInstructions" (JD.nullable (JD.list usageInstructionDecoder)) Nothing




{-| Type of HTTP response from describeReco
-}
type alias DescribeRecordOutput =
    { recordDetail : Maybe RecordDetail
    , recordOutputs : Maybe (List RecordOutput)
    , nextPageToken : Maybe String
    }



describeRecordOutputDecoder : JD.Decoder DescribeRecordOutput
describeRecordOutputDecoder =
    JDP.decode DescribeRecordOutput
        |> JDP.optional "recordDetail" (JD.nullable recordDetailDecoder) Nothing
        |> JDP.optional "recordOutputs" (JD.nullable (JD.list recordOutputDecoder)) Nothing
        |> JDP.optional "nextPageToken" (JD.nullable JD.string) Nothing




{-| Type of HTTP response from disassociatePrincipalFromPortfol
-}
type alias DisassociatePrincipalFromPortfolioOutput =
    { 
    }



disassociatePrincipalFromPortfolioOutputDecoder : JD.Decoder DisassociatePrincipalFromPortfolioOutput
disassociatePrincipalFromPortfolioOutputDecoder =
    JDP.decode DisassociatePrincipalFromPortfolioOutput



{-| Type of HTTP response from disassociateProductFromPortfol
-}
type alias DisassociateProductFromPortfolioOutput =
    { 
    }



disassociateProductFromPortfolioOutputDecoder : JD.Decoder DisassociateProductFromPortfolioOutput
disassociateProductFromPortfolioOutputDecoder =
    JDP.decode DisassociateProductFromPortfolioOutput



{-| <p>The specified resource is a duplicate.</p>
-}
type alias DuplicateResourceException =
    { 
    }



duplicateResourceExceptionDecoder : JD.Decoder DuplicateResourceException
duplicateResourceExceptionDecoder =
    JDP.decode DuplicateResourceException



{-| <p>One or more parameters provided to the operation are invalid.</p>
-}
type alias InvalidParametersException =
    { 
    }



invalidParametersExceptionDecoder : JD.Decoder InvalidParametersException
invalidParametersExceptionDecoder =
    JDP.decode InvalidParametersException



{-| <p>Summary information about a path for a user to have access to a specified product.</p>
-}
type alias LaunchPathSummary =
    { id : Maybe String
    , constraintSummaries : Maybe (List ConstraintSummary)
    , tags : Maybe (List Tag)
    , name : Maybe String
    }



launchPathSummaryDecoder : JD.Decoder LaunchPathSummary
launchPathSummaryDecoder =
    JDP.decode LaunchPathSummary
        |> JDP.optional "id" (JD.nullable JD.string) Nothing
        |> JDP.optional "constraintSummaries" (JD.nullable (JD.list constraintSummaryDecoder)) Nothing
        |> JDP.optional "tags" (JD.nullable (JD.list tagDecoder)) Nothing
        |> JDP.optional "name" (JD.nullable JD.string) Nothing




{-| <p>The current limits of the service would have been exceeded by this operation. Reduce the resource use or increase the service limits and retry the operation.</p>
-}
type alias LimitExceededException =
    { 
    }



limitExceededExceptionDecoder : JD.Decoder LimitExceededException
limitExceededExceptionDecoder =
    JDP.decode LimitExceededException



{-| Type of HTTP response from listAcceptedPortfolioShar
-}
type alias ListAcceptedPortfolioSharesOutput =
    { portfolioDetails : Maybe (List PortfolioDetail)
    , nextPageToken : Maybe String
    }



listAcceptedPortfolioSharesOutputDecoder : JD.Decoder ListAcceptedPortfolioSharesOutput
listAcceptedPortfolioSharesOutputDecoder =
    JDP.decode ListAcceptedPortfolioSharesOutput
        |> JDP.optional "portfolioDetails" (JD.nullable (JD.list portfolioDetailDecoder)) Nothing
        |> JDP.optional "nextPageToken" (JD.nullable JD.string) Nothing




{-| Type of HTTP response from listConstraintsForPortfol
-}
type alias ListConstraintsForPortfolioOutput =
    { constraintDetails : Maybe (List ConstraintDetail)
    , nextPageToken : Maybe String
    }



listConstraintsForPortfolioOutputDecoder : JD.Decoder ListConstraintsForPortfolioOutput
listConstraintsForPortfolioOutputDecoder =
    JDP.decode ListConstraintsForPortfolioOutput
        |> JDP.optional "constraintDetails" (JD.nullable (JD.list constraintDetailDecoder)) Nothing
        |> JDP.optional "nextPageToken" (JD.nullable JD.string) Nothing




{-| Type of HTTP response from listLaunchPat
-}
type alias ListLaunchPathsOutput =
    { launchPathSummaries : Maybe (List LaunchPathSummary)
    , nextPageToken : Maybe String
    }



listLaunchPathsOutputDecoder : JD.Decoder ListLaunchPathsOutput
listLaunchPathsOutputDecoder =
    JDP.decode ListLaunchPathsOutput
        |> JDP.optional "launchPathSummaries" (JD.nullable (JD.list launchPathSummaryDecoder)) Nothing
        |> JDP.optional "nextPageToken" (JD.nullable JD.string) Nothing




{-| Type of HTTP response from listPortfolioAcce
-}
type alias ListPortfolioAccessOutput =
    { accountIds : Maybe (List String)
    , nextPageToken : Maybe String
    }



listPortfolioAccessOutputDecoder : JD.Decoder ListPortfolioAccessOutput
listPortfolioAccessOutputDecoder =
    JDP.decode ListPortfolioAccessOutput
        |> JDP.optional "accountIds" (JD.nullable (JD.list JD.string)) Nothing
        |> JDP.optional "nextPageToken" (JD.nullable JD.string) Nothing




{-| Type of HTTP response from listPortfoliosForProdu
-}
type alias ListPortfoliosForProductOutput =
    { portfolioDetails : Maybe (List PortfolioDetail)
    , nextPageToken : Maybe String
    }



listPortfoliosForProductOutputDecoder : JD.Decoder ListPortfoliosForProductOutput
listPortfoliosForProductOutputDecoder =
    JDP.decode ListPortfoliosForProductOutput
        |> JDP.optional "portfolioDetails" (JD.nullable (JD.list portfolioDetailDecoder)) Nothing
        |> JDP.optional "nextPageToken" (JD.nullable JD.string) Nothing




{-| Type of HTTP response from listPortfoli
-}
type alias ListPortfoliosOutput =
    { portfolioDetails : Maybe (List PortfolioDetail)
    , nextPageToken : Maybe String
    }



listPortfoliosOutputDecoder : JD.Decoder ListPortfoliosOutput
listPortfoliosOutputDecoder =
    JDP.decode ListPortfoliosOutput
        |> JDP.optional "portfolioDetails" (JD.nullable (JD.list portfolioDetailDecoder)) Nothing
        |> JDP.optional "nextPageToken" (JD.nullable JD.string) Nothing




{-| Type of HTTP response from listPrincipalsForPortfol
-}
type alias ListPrincipalsForPortfolioOutput =
    { principals : Maybe (List Principal)
    , nextPageToken : Maybe String
    }



listPrincipalsForPortfolioOutputDecoder : JD.Decoder ListPrincipalsForPortfolioOutput
listPrincipalsForPortfolioOutputDecoder =
    JDP.decode ListPrincipalsForPortfolioOutput
        |> JDP.optional "principals" (JD.nullable (JD.list principalDecoder)) Nothing
        |> JDP.optional "nextPageToken" (JD.nullable JD.string) Nothing




{-| Type of HTTP response from listProvisioningArtifac
-}
type alias ListProvisioningArtifactsOutput =
    { provisioningArtifactDetails : Maybe (List ProvisioningArtifactDetail)
    , nextPageToken : Maybe String
    }



listProvisioningArtifactsOutputDecoder : JD.Decoder ListProvisioningArtifactsOutput
listProvisioningArtifactsOutputDecoder =
    JDP.decode ListProvisioningArtifactsOutput
        |> JDP.optional "provisioningArtifactDetails" (JD.nullable (JD.list provisioningArtifactDetailDecoder)) Nothing
        |> JDP.optional "nextPageToken" (JD.nullable JD.string) Nothing




{-| Type of HTTP response from listRecordHisto
-}
type alias ListRecordHistoryOutput =
    { recordDetails : Maybe (List RecordDetail)
    , nextPageToken : Maybe String
    }



listRecordHistoryOutputDecoder : JD.Decoder ListRecordHistoryOutput
listRecordHistoryOutputDecoder =
    JDP.decode ListRecordHistoryOutput
        |> JDP.optional "recordDetails" (JD.nullable (JD.list recordDetailDecoder)) Nothing
        |> JDP.optional "nextPageToken" (JD.nullable JD.string) Nothing




{-| <p>The search filter to limit results when listing request history records.</p>
-}
type alias ListRecordHistorySearchFilter =
    { key : Maybe String
    , value : Maybe String
    }



listRecordHistorySearchFilterDecoder : JD.Decoder ListRecordHistorySearchFilter
listRecordHistorySearchFilterDecoder =
    JDP.decode ListRecordHistorySearchFilter
        |> JDP.optional "key" (JD.nullable JD.string) Nothing
        |> JDP.optional "value" (JD.nullable JD.string) Nothing




{-| <p>The constraints that the administrator has put on the parameter.</p>
-}
type alias ParameterConstraints =
    { allowedValues : Maybe (List String)
    }



parameterConstraintsDecoder : JD.Decoder ParameterConstraints
parameterConstraintsDecoder =
    JDP.decode ParameterConstraints
        |> JDP.optional "allowedValues" (JD.nullable (JD.list JD.string)) Nothing




{-| <p>Detailed portfolio information.</p>
-}
type alias PortfolioDetail =
    { id : Maybe String
    , aRN : Maybe String
    , displayName : Maybe String
    , description : Maybe String
    , createdTime : Maybe Date
    , providerName : Maybe String
    }



portfolioDetailDecoder : JD.Decoder PortfolioDetail
portfolioDetailDecoder =
    JDP.decode PortfolioDetail
        |> JDP.optional "id" (JD.nullable JD.string) Nothing
        |> JDP.optional "aRN" (JD.nullable JD.string) Nothing
        |> JDP.optional "displayName" (JD.nullable JD.string) Nothing
        |> JDP.optional "description" (JD.nullable JD.string) Nothing
        |> JDP.optional "createdTime" (JD.nullable JDX.date) Nothing
        |> JDP.optional "providerName" (JD.nullable JD.string) Nothing




{-| <p>A principal's ARN and type.</p>
-}
type alias Principal =
    { principalARN : Maybe String
    , principalType : Maybe PrincipalType
    }



principalDecoder : JD.Decoder Principal
principalDecoder =
    JDP.decode Principal
        |> JDP.optional "principalARN" (JD.nullable JD.string) Nothing
        |> JDP.optional "principalType" (JD.nullable principalTypeDecoder) Nothing




{-| One of

* `PrincipalType_IAM`

-}
type PrincipalType
    = PrincipalType_IAM



principalTypeDecoder : JD.Decoder PrincipalType
principalTypeDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "IAM" ->
                        JD.succeed PrincipalType_IAM


                    _ ->
                        JD.fail "bad thing"
            )



{-| One of

* `ProductSource_ACCOUNT`

-}
type ProductSource
    = ProductSource_ACCOUNT



productSourceDecoder : JD.Decoder ProductSource
productSourceDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "ACCOUNT" ->
                        JD.succeed ProductSource_ACCOUNT


                    _ ->
                        JD.fail "bad thing"
            )



{-| One of

* `ProductType_CLOUD_FORMATION_TEMPLATE`

-}
type ProductType
    = ProductType_CLOUD_FORMATION_TEMPLATE



productTypeDecoder : JD.Decoder ProductType
productTypeDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "CLOUD_FORMATION_TEMPLATE" ->
                        JD.succeed ProductType_CLOUD_FORMATION_TEMPLATE


                    _ ->
                        JD.fail "bad thing"
            )



{-| <p>A single product view aggregation value/count pair, containing metadata about each product to which the calling user has access.</p>
-}
type alias ProductViewAggregationValue =
    { value : Maybe String
    , approximateCount : Maybe Int
    }



productViewAggregationValueDecoder : JD.Decoder ProductViewAggregationValue
productViewAggregationValueDecoder =
    JDP.decode ProductViewAggregationValue
        |> JDP.optional "value" (JD.nullable JD.string) Nothing
        |> JDP.optional "approximateCount" (JD.nullable JD.int) Nothing




{-| <p>Detailed product view information.</p>
-}
type alias ProductViewDetail =
    { productViewSummary : Maybe ProductViewSummary
    , status : Maybe Status
    , productARN : Maybe String
    , createdTime : Maybe Date
    }



productViewDetailDecoder : JD.Decoder ProductViewDetail
productViewDetailDecoder =
    JDP.decode ProductViewDetail
        |> JDP.optional "productViewSummary" (JD.nullable productViewSummaryDecoder) Nothing
        |> JDP.optional "status" (JD.nullable statusDecoder) Nothing
        |> JDP.optional "productARN" (JD.nullable JD.string) Nothing
        |> JDP.optional "createdTime" (JD.nullable JDX.date) Nothing




{-| One of

* `ProductViewFilterBy_FullTextSearch`
* `ProductViewFilterBy_Owner`
* `ProductViewFilterBy_ProductType`

-}
type ProductViewFilterBy
    = ProductViewFilterBy_FullTextSearch
    | ProductViewFilterBy_Owner
    | ProductViewFilterBy_ProductType



productViewFilterByDecoder : JD.Decoder ProductViewFilterBy
productViewFilterByDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "FullTextSearch" ->
                        JD.succeed ProductViewFilterBy_FullTextSearch

                    "Owner" ->
                        JD.succeed ProductViewFilterBy_Owner

                    "ProductType" ->
                        JD.succeed ProductViewFilterBy_ProductType


                    _ ->
                        JD.fail "bad thing"
            )



{-| One of

* `ProductViewSortBy_Title`
* `ProductViewSortBy_VersionCount`
* `ProductViewSortBy_CreationDate`

-}
type ProductViewSortBy
    = ProductViewSortBy_Title
    | ProductViewSortBy_VersionCount
    | ProductViewSortBy_CreationDate



productViewSortByDecoder : JD.Decoder ProductViewSortBy
productViewSortByDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "Title" ->
                        JD.succeed ProductViewSortBy_Title

                    "VersionCount" ->
                        JD.succeed ProductViewSortBy_VersionCount

                    "CreationDate" ->
                        JD.succeed ProductViewSortBy_CreationDate


                    _ ->
                        JD.fail "bad thing"
            )



{-| <p>The summary metadata about the specified product.</p>
-}
type alias ProductViewSummary =
    { id : Maybe String
    , productId : Maybe String
    , name : Maybe String
    , owner : Maybe String
    , shortDescription : Maybe String
    , type_ : Maybe ProductType
    , distributor : Maybe String
    , hasDefaultPath : Maybe Bool
    , supportEmail : Maybe String
    , supportDescription : Maybe String
    , supportUrl : Maybe String
    }



productViewSummaryDecoder : JD.Decoder ProductViewSummary
productViewSummaryDecoder =
    JDP.decode ProductViewSummary
        |> JDP.optional "id" (JD.nullable JD.string) Nothing
        |> JDP.optional "productId" (JD.nullable JD.string) Nothing
        |> JDP.optional "name" (JD.nullable JD.string) Nothing
        |> JDP.optional "owner" (JD.nullable JD.string) Nothing
        |> JDP.optional "shortDescription" (JD.nullable JD.string) Nothing
        |> JDP.optional "type_" (JD.nullable productTypeDecoder) Nothing
        |> JDP.optional "distributor" (JD.nullable JD.string) Nothing
        |> JDP.optional "hasDefaultPath" (JD.nullable JD.bool) Nothing
        |> JDP.optional "supportEmail" (JD.nullable JD.string) Nothing
        |> JDP.optional "supportDescription" (JD.nullable JD.string) Nothing
        |> JDP.optional "supportUrl" (JD.nullable JD.string) Nothing




{-| Type of HTTP response from provisionProdu
-}
type alias ProvisionProductOutput =
    { recordDetail : Maybe RecordDetail
    }



provisionProductOutputDecoder : JD.Decoder ProvisionProductOutput
provisionProductOutputDecoder =
    JDP.decode ProvisionProductOutput
        |> JDP.optional "recordDetail" (JD.nullable recordDetailDecoder) Nothing




{-| <p>Detailed information about a ProvisionedProduct object.</p>
-}
type alias ProvisionedProductDetail =
    { name : Maybe String
    , arn : Maybe String
    , type_ : Maybe String
    , id : Maybe String
    , status : Maybe RecordStatus
    , statusMessage : Maybe String
    , createdTime : Maybe Date
    , idempotencyToken : Maybe String
    , lastRecordId : Maybe String
    }



provisionedProductDetailDecoder : JD.Decoder ProvisionedProductDetail
provisionedProductDetailDecoder =
    JDP.decode ProvisionedProductDetail
        |> JDP.optional "name" (JD.nullable JD.string) Nothing
        |> JDP.optional "arn" (JD.nullable JD.string) Nothing
        |> JDP.optional "type_" (JD.nullable JD.string) Nothing
        |> JDP.optional "id" (JD.nullable JD.string) Nothing
        |> JDP.optional "status" (JD.nullable recordStatusDecoder) Nothing
        |> JDP.optional "statusMessage" (JD.nullable JD.string) Nothing
        |> JDP.optional "createdTime" (JD.nullable JDX.date) Nothing
        |> JDP.optional "idempotencyToken" (JD.nullable JD.string) Nothing
        |> JDP.optional "lastRecordId" (JD.nullable JD.string) Nothing




{-| <p>Contains information indicating the ways in which a product can be provisioned.</p>
-}
type alias ProvisioningArtifact =
    { id : Maybe String
    , name : Maybe String
    , description : Maybe String
    , createdTime : Maybe Date
    }



provisioningArtifactDecoder : JD.Decoder ProvisioningArtifact
provisioningArtifactDecoder =
    JDP.decode ProvisioningArtifact
        |> JDP.optional "id" (JD.nullable JD.string) Nothing
        |> JDP.optional "name" (JD.nullable JD.string) Nothing
        |> JDP.optional "description" (JD.nullable JD.string) Nothing
        |> JDP.optional "createdTime" (JD.nullable JDX.date) Nothing




{-| <p>Detailed provisioning artifact information.</p>
-}
type alias ProvisioningArtifactDetail =
    { id : Maybe String
    , name : Maybe String
    , description : Maybe String
    , type_ : Maybe ProvisioningArtifactType
    , createdTime : Maybe Date
    }



provisioningArtifactDetailDecoder : JD.Decoder ProvisioningArtifactDetail
provisioningArtifactDetailDecoder =
    JDP.decode ProvisioningArtifactDetail
        |> JDP.optional "id" (JD.nullable JD.string) Nothing
        |> JDP.optional "name" (JD.nullable JD.string) Nothing
        |> JDP.optional "description" (JD.nullable JD.string) Nothing
        |> JDP.optional "type_" (JD.nullable provisioningArtifactTypeDecoder) Nothing
        |> JDP.optional "createdTime" (JD.nullable JDX.date) Nothing




{-| <p>A parameter used to successfully provision the product. This value includes a list of allowable values and additional metadata. </p>
-}
type alias ProvisioningArtifactParameter =
    { parameterKey : Maybe String
    , defaultValue : Maybe String
    , parameterType : Maybe String
    , isNoEcho : Maybe Bool
    , description : Maybe String
    , parameterConstraints : Maybe ParameterConstraints
    }



provisioningArtifactParameterDecoder : JD.Decoder ProvisioningArtifactParameter
provisioningArtifactParameterDecoder =
    JDP.decode ProvisioningArtifactParameter
        |> JDP.optional "parameterKey" (JD.nullable JD.string) Nothing
        |> JDP.optional "defaultValue" (JD.nullable JD.string) Nothing
        |> JDP.optional "parameterType" (JD.nullable JD.string) Nothing
        |> JDP.optional "isNoEcho" (JD.nullable JD.bool) Nothing
        |> JDP.optional "description" (JD.nullable JD.string) Nothing
        |> JDP.optional "parameterConstraints" (JD.nullable parameterConstraintsDecoder) Nothing




{-| <p>Provisioning artifact properties.</p>
-}
type alias ProvisioningArtifactProperties =
    { name : Maybe String
    , description : Maybe String
    , info : (Dict String String)
    , type_ : Maybe ProvisioningArtifactType
    }



provisioningArtifactPropertiesDecoder : JD.Decoder ProvisioningArtifactProperties
provisioningArtifactPropertiesDecoder =
    JDP.decode ProvisioningArtifactProperties
        |> JDP.optional "name" (JD.nullable JD.string) Nothing
        |> JDP.optional "description" (JD.nullable JD.string) Nothing
        |> JDP.required "info" (JD.dict JD.string)
        |> JDP.optional "type_" (JD.nullable provisioningArtifactTypeDecoder) Nothing




{-| One of

* `ProvisioningArtifactType_CLOUD_FORMATION_TEMPLATE`

-}
type ProvisioningArtifactType
    = ProvisioningArtifactType_CLOUD_FORMATION_TEMPLATE



provisioningArtifactTypeDecoder : JD.Decoder ProvisioningArtifactType
provisioningArtifactTypeDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "CLOUD_FORMATION_TEMPLATE" ->
                        JD.succeed ProvisioningArtifactType_CLOUD_FORMATION_TEMPLATE


                    _ ->
                        JD.fail "bad thing"
            )



{-| <p>The arameter key/value pairs used to provision a product.</p>
-}
type alias ProvisioningParameter =
    { key : Maybe String
    , value : Maybe String
    }



provisioningParameterDecoder : JD.Decoder ProvisioningParameter
provisioningParameterDecoder =
    JDP.decode ProvisioningParameter
        |> JDP.optional "key" (JD.nullable JD.string) Nothing
        |> JDP.optional "value" (JD.nullable JD.string) Nothing




{-| <p>The full details of a specific ProvisionedProduct object.</p>
-}
type alias RecordDetail =
    { recordId : Maybe String
    , provisionedProductName : Maybe String
    , status : Maybe RecordStatus
    , createdTime : Maybe Date
    , updatedTime : Maybe Date
    , provisionedProductType : Maybe String
    , recordType : Maybe String
    , provisionedProductId : Maybe String
    , productId : Maybe String
    , provisioningArtifactId : Maybe String
    , pathId : Maybe String
    , recordErrors : Maybe (List RecordError)
    , recordTags : Maybe (List RecordTag)
    }



recordDetailDecoder : JD.Decoder RecordDetail
recordDetailDecoder =
    JDP.decode RecordDetail
        |> JDP.optional "recordId" (JD.nullable JD.string) Nothing
        |> JDP.optional "provisionedProductName" (JD.nullable JD.string) Nothing
        |> JDP.optional "status" (JD.nullable recordStatusDecoder) Nothing
        |> JDP.optional "createdTime" (JD.nullable JDX.date) Nothing
        |> JDP.optional "updatedTime" (JD.nullable JDX.date) Nothing
        |> JDP.optional "provisionedProductType" (JD.nullable JD.string) Nothing
        |> JDP.optional "recordType" (JD.nullable JD.string) Nothing
        |> JDP.optional "provisionedProductId" (JD.nullable JD.string) Nothing
        |> JDP.optional "productId" (JD.nullable JD.string) Nothing
        |> JDP.optional "provisioningArtifactId" (JD.nullable JD.string) Nothing
        |> JDP.optional "pathId" (JD.nullable JD.string) Nothing
        |> JDP.optional "recordErrors" (JD.nullable (JD.list recordErrorDecoder)) Nothing
        |> JDP.optional "recordTags" (JD.nullable (JD.list recordTagDecoder)) Nothing




{-| <p>The error code and description resulting from an operation.</p>
-}
type alias RecordError =
    { code : Maybe String
    , description : Maybe String
    }



recordErrorDecoder : JD.Decoder RecordError
recordErrorDecoder =
    JDP.decode RecordError
        |> JDP.optional "code" (JD.nullable JD.string) Nothing
        |> JDP.optional "description" (JD.nullable JD.string) Nothing




{-| <p>An output for the specified Product object created as the result of a request. For example, a CloudFormation-backed product that creates an S3 bucket would have an output for the S3 bucket URL.</p>
-}
type alias RecordOutput =
    { outputKey : Maybe String
    , outputValue : Maybe String
    , description : Maybe String
    }



recordOutputDecoder : JD.Decoder RecordOutput
recordOutputDecoder =
    JDP.decode RecordOutput
        |> JDP.optional "outputKey" (JD.nullable JD.string) Nothing
        |> JDP.optional "outputValue" (JD.nullable JD.string) Nothing
        |> JDP.optional "description" (JD.nullable JD.string) Nothing




{-| One of

* `RecordStatus_IN_PROGRESS`
* `RecordStatus_SUCCEEDED`
* `RecordStatus_ERROR`

-}
type RecordStatus
    = RecordStatus_IN_PROGRESS
    | RecordStatus_SUCCEEDED
    | RecordStatus_ERROR



recordStatusDecoder : JD.Decoder RecordStatus
recordStatusDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "IN_PROGRESS" ->
                        JD.succeed RecordStatus_IN_PROGRESS

                    "SUCCEEDED" ->
                        JD.succeed RecordStatus_SUCCEEDED

                    "ERROR" ->
                        JD.succeed RecordStatus_ERROR


                    _ ->
                        JD.fail "bad thing"
            )



{-| <p>A tag associated with the record, stored as a key-value pair.</p>
-}
type alias RecordTag =
    { key : Maybe String
    , value : Maybe String
    }



recordTagDecoder : JD.Decoder RecordTag
recordTagDecoder =
    JDP.decode RecordTag
        |> JDP.optional "key" (JD.nullable JD.string) Nothing
        |> JDP.optional "value" (JD.nullable JD.string) Nothing




{-| Type of HTTP response from rejectPortfolioSha
-}
type alias RejectPortfolioShareOutput =
    { 
    }



rejectPortfolioShareOutputDecoder : JD.Decoder RejectPortfolioShareOutput
rejectPortfolioShareOutputDecoder =
    JDP.decode RejectPortfolioShareOutput



{-| <p>The operation was requested against a resource that is currently in use. Free the resource from use and retry the operation.</p>
-}
type alias ResourceInUseException =
    { 
    }



resourceInUseExceptionDecoder : JD.Decoder ResourceInUseException
resourceInUseExceptionDecoder =
    JDP.decode ResourceInUseException



{-| <p>The specified resource was not found.</p>
-}
type alias ResourceNotFoundException =
    { 
    }



resourceNotFoundExceptionDecoder : JD.Decoder ResourceNotFoundException
resourceNotFoundExceptionDecoder =
    JDP.decode ResourceNotFoundException



{-| Type of HTTP response from scanProvisionedProduc
-}
type alias ScanProvisionedProductsOutput =
    { provisionedProducts : Maybe (List ProvisionedProductDetail)
    , nextPageToken : Maybe String
    }



scanProvisionedProductsOutputDecoder : JD.Decoder ScanProvisionedProductsOutput
scanProvisionedProductsOutputDecoder =
    JDP.decode ScanProvisionedProductsOutput
        |> JDP.optional "provisionedProducts" (JD.nullable (JD.list provisionedProductDetailDecoder)) Nothing
        |> JDP.optional "nextPageToken" (JD.nullable JD.string) Nothing




{-| Type of HTTP response from searchProductsAsAdm
-}
type alias SearchProductsAsAdminOutput =
    { productViewDetails : Maybe (List ProductViewDetail)
    , nextPageToken : Maybe String
    }



searchProductsAsAdminOutputDecoder : JD.Decoder SearchProductsAsAdminOutput
searchProductsAsAdminOutputDecoder =
    JDP.decode SearchProductsAsAdminOutput
        |> JDP.optional "productViewDetails" (JD.nullable (JD.list productViewDetailDecoder)) Nothing
        |> JDP.optional "nextPageToken" (JD.nullable JD.string) Nothing




{-| Type of HTTP response from searchProduc
-}
type alias SearchProductsOutput =
    { productViewSummaries : Maybe (List ProductViewSummary)
    , productViewAggregations : Maybe (Dict String (List ProductViewAggregationValue))
    , nextPageToken : Maybe String
    }



searchProductsOutputDecoder : JD.Decoder SearchProductsOutput
searchProductsOutputDecoder =
    JDP.decode SearchProductsOutput
        |> JDP.optional "productViewSummaries" (JD.nullable (JD.list productViewSummaryDecoder)) Nothing
        |> JDP.optional "productViewAggregations" (JD.nullable (JD.dict (JD.list productViewAggregationValueDecoder))) Nothing
        |> JDP.optional "nextPageToken" (JD.nullable JD.string) Nothing




{-| One of

* `SortOrder_ASCENDING`
* `SortOrder_DESCENDING`

-}
type SortOrder
    = SortOrder_ASCENDING
    | SortOrder_DESCENDING



sortOrderDecoder : JD.Decoder SortOrder
sortOrderDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "ASCENDING" ->
                        JD.succeed SortOrder_ASCENDING

                    "DESCENDING" ->
                        JD.succeed SortOrder_DESCENDING


                    _ ->
                        JD.fail "bad thing"
            )



{-| One of

* `Status_AVAILABLE`
* `Status_CREATING`
* `Status_FAILED`

-}
type Status
    = Status_AVAILABLE
    | Status_CREATING
    | Status_FAILED



statusDecoder : JD.Decoder Status
statusDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "AVAILABLE" ->
                        JD.succeed Status_AVAILABLE

                    "CREATING" ->
                        JD.succeed Status_CREATING

                    "FAILED" ->
                        JD.succeed Status_FAILED


                    _ ->
                        JD.fail "bad thing"
            )



{-| <p>Key/value pairs to associate with this provisioning. These tags are entirely discretionary and are propagated to the resources created in the provisioning.</p>
-}
type alias Tag =
    { key : String
    , value : String
    }



tagDecoder : JD.Decoder Tag
tagDecoder =
    JDP.decode Tag
        |> JDP.required "key" JD.string
        |> JDP.required "value" JD.string




{-| Type of HTTP response from terminateProvisionedProdu
-}
type alias TerminateProvisionedProductOutput =
    { recordDetail : Maybe RecordDetail
    }



terminateProvisionedProductOutputDecoder : JD.Decoder TerminateProvisionedProductOutput
terminateProvisionedProductOutputDecoder =
    JDP.decode TerminateProvisionedProductOutput
        |> JDP.optional "recordDetail" (JD.nullable recordDetailDecoder) Nothing




{-| Type of HTTP response from updateConstrai
-}
type alias UpdateConstraintOutput =
    { constraintDetail : Maybe ConstraintDetail
    , constraintParameters : Maybe String
    , status : Maybe Status
    }



updateConstraintOutputDecoder : JD.Decoder UpdateConstraintOutput
updateConstraintOutputDecoder =
    JDP.decode UpdateConstraintOutput
        |> JDP.optional "constraintDetail" (JD.nullable constraintDetailDecoder) Nothing
        |> JDP.optional "constraintParameters" (JD.nullable JD.string) Nothing
        |> JDP.optional "status" (JD.nullable statusDecoder) Nothing




{-| Type of HTTP response from updatePortfol
-}
type alias UpdatePortfolioOutput =
    { portfolioDetail : Maybe PortfolioDetail
    , tags : Maybe (List Tag)
    }



updatePortfolioOutputDecoder : JD.Decoder UpdatePortfolioOutput
updatePortfolioOutputDecoder =
    JDP.decode UpdatePortfolioOutput
        |> JDP.optional "portfolioDetail" (JD.nullable portfolioDetailDecoder) Nothing
        |> JDP.optional "tags" (JD.nullable (JD.list tagDecoder)) Nothing




{-| Type of HTTP response from updateProdu
-}
type alias UpdateProductOutput =
    { productViewDetail : Maybe ProductViewDetail
    , tags : Maybe (List Tag)
    }



updateProductOutputDecoder : JD.Decoder UpdateProductOutput
updateProductOutputDecoder =
    JDP.decode UpdateProductOutput
        |> JDP.optional "productViewDetail" (JD.nullable productViewDetailDecoder) Nothing
        |> JDP.optional "tags" (JD.nullable (JD.list tagDecoder)) Nothing




{-| Type of HTTP response from updateProvisionedProdu
-}
type alias UpdateProvisionedProductOutput =
    { recordDetail : Maybe RecordDetail
    }



updateProvisionedProductOutputDecoder : JD.Decoder UpdateProvisionedProductOutput
updateProvisionedProductOutputDecoder =
    JDP.decode UpdateProvisionedProductOutput
        |> JDP.optional "recordDetail" (JD.nullable recordDetailDecoder) Nothing




{-| Type of HTTP response from updateProvisioningArtifa
-}
type alias UpdateProvisioningArtifactOutput =
    { provisioningArtifactDetail : Maybe ProvisioningArtifactDetail
    , info : Maybe (Dict String String)
    , status : Maybe Status
    }



updateProvisioningArtifactOutputDecoder : JD.Decoder UpdateProvisioningArtifactOutput
updateProvisioningArtifactOutputDecoder =
    JDP.decode UpdateProvisioningArtifactOutput
        |> JDP.optional "provisioningArtifactDetail" (JD.nullable provisioningArtifactDetailDecoder) Nothing
        |> JDP.optional "info" (JD.nullable (JD.dict JD.string)) Nothing
        |> JDP.optional "status" (JD.nullable statusDecoder) Nothing




{-| <p>The parameter key/value pair used to update a ProvisionedProduct object. If <code>UsePreviousValue</code> is set to true, <code>Value</code> is ignored and the value for <code>Key</code> is kept as previously set (current value).</p>
-}
type alias UpdateProvisioningParameter =
    { key : Maybe String
    , value : Maybe String
    , usePreviousValue : Maybe Bool
    }



updateProvisioningParameterDecoder : JD.Decoder UpdateProvisioningParameter
updateProvisioningParameterDecoder =
    JDP.decode UpdateProvisioningParameter
        |> JDP.optional "key" (JD.nullable JD.string) Nothing
        |> JDP.optional "value" (JD.nullable JD.string) Nothing
        |> JDP.optional "usePreviousValue" (JD.nullable JD.bool) Nothing




{-| <p>Additional information provided by the administrator.</p>
-}
type alias UsageInstruction =
    { type_ : Maybe String
    , value : Maybe String
    }



usageInstructionDecoder : JD.Decoder UsageInstruction
usageInstructionDecoder =
    JDP.decode UsageInstruction
        |> JDP.optional "type_" (JD.nullable JD.string) Nothing
        |> JDP.optional "value" (JD.nullable JD.string) Nothing




