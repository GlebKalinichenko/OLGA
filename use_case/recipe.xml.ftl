<?xml version="1.0"?>
<recipe>

	<instantiate from="src/app_package/DataSource.java.ftl"
                   to="${escapeXmlAttribute(srcOut)}/IRemote${dataSourceName}DataSource.java" />

    <instantiate from="src/app_package/DataSourceImpl.java.ftl"
                   to="${escapeXmlAttribute(srcOut)}/Remote${dataSourceName}DataSourceImpl.java" />

    <instantiate from="src/app_package/Repository.java.ftl"
                   to="${escapeXmlAttribute(srcOut)}/I${repositoryName}Repository.java" />

    <instantiate from="src/app_package/RepositoryImpl.java.ftl"
                   to="${escapeXmlAttribute(srcOut)}/${repositoryName}RepositoryImpl.java" />

     <instantiate from="src/app_package/BaseUseCase.java.ftl"
                   to="${escapeXmlAttribute(srcOut)}/BaseUseCase.java" />

     <instantiate from="src/app_package/UseCaseImpl.java.ftl"
                   to="${escapeXmlAttribute(srcOut)}/${useCaseName}UseCaseImpl.java" />


	<open file="${srcOut}/IRemote${dataSourceName}DataSource.java"/>
</recipe>