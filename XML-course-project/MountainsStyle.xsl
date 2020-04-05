<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:fo="http://www.w3.org/1999/XSL/Format">
	<xsl:key name="regionKey" match="Region" use="@RegionID"/>
	<xsl:key name="typeKey" match="Type" use="@TypeID"/>
	<xsl:template match="/">
		<fo:root>
			<fo:layout-master-set>
				<fo:simple-page-master page-height="297mm" page-width="210mm" margin="5mm 25mm 5mm 25mm" master-name="template">
					<fo:region-body margin="20mm 0mm 20mm 0mm"/>
				</fo:simple-page-master>
			</fo:layout-master-set>
			<!-- Title -->
			<fo:page-sequence master-reference="template">
				<fo:flow flow-name="xsl-region-body">
					<fo:block position="absolute" text-align="center" font-weight="bold" margin-bottom="50mm" font-family="Calibri" font-size="48pt" padding-before="50mm" color="black">
					Каталог на планините в България
				</fo:block>
				</fo:flow>
			</fo:page-sequence>
			<!-- Rila -->
			<fo:page-sequence master-reference="template">
				<fo:flow flow-name="xsl-region-body">
					<fo:block-container position="absolute" top="-2.5cm" left="-2.5cm">
						<fo:block position="absolute" text-align="center" padding-before="2cm" margin-left="2.5cm" font-family="Calibri" font-size="40pt" color="black">
							<xsl:value-of select="//Mountain[@MountainId='Rila']/Name"/>
						</fo:block>
						<fo:block position="absolute" padding-before="7mm" margin-left="2cm">
							<fo:external-graphic src="{unparsed-entity-uri(//Mountain[@MountainId='Rila']/Image/@href)}"/>
						</fo:block>
						<fo:block position="relative" font-family="Calibri" font-weight="bold" font-size="15pt" color="black" padding-before="5mm" margin-left="2cm">
						Регион
						<fo:block/>
							<fo:inline position="relative" font-weight="normal" font-size="14pt">
								<xsl:value-of select="key('regionKey', //Mountain[@MountainId='Rila']/@RegionRef)/RegionName"/>
							</fo:inline>
						</fo:block>
						<fo:block position="relative" font-family="Calibri" font-weight="bold" font-size="15pt" color="black" padding-before="5mm" margin-left="2cm">
						Тип
						<fo:block/>
							<fo:inline position="relative" font-weight="normal" font-size="14pt">
								<xsl:value-of select="key('typeKey', //Mountain[@MountainId='Rila']/@TypeRef)/TypeName"/>
							</fo:inline>
						</fo:block>
						<fo:block position="relative" font-family="Calibri" font-weight="bold" font-size="15pt" color="black" padding-before="5mm" margin-left="2cm">
						Връх
						<fo:block/>
							<fo:inline position="relative" font-weight="normal" font-size="14pt">
								<xsl:value-of select="//Mountain[@MountainId='Rila']/Peak"/>
							</fo:inline>
						</fo:block>
						<fo:block position="relative" font-family="Calibri" font-weight="bold" font-size="15pt" color="black" padding-before="5mm" margin-left="2cm">
						Височина
						<fo:block/>
							<fo:inline position="relative" font-weight="normal" font-size="14pt">
								<xsl:value-of select="//Mountain[@MountainId='Rila']/Elevation"/>
							</fo:inline>
						</fo:block>
						<fo:block position="relative" font-family="Calibri" font-weight="bold" font-size="15pt" color="black" padding-before="5mm" margin-left="2cm">
						Описание
						<fo:block/>
							<fo:inline position="relative" font-weight="normal" font-size="14pt">
								<xsl:value-of select="//Mountain[@MountainId='Rila']/Description"/>
							</fo:inline>
						</fo:block>
					</fo:block-container>
				</fo:flow>
			</fo:page-sequence>
			<!-- Pirin -->
			<fo:page-sequence master-reference="template">
				<fo:flow flow-name="xsl-region-body">
					<fo:block-container position="absolute" top="-2.5cm" left="-2.5cm">
						<fo:block position="absolute" text-align="center" padding-before="2cm" margin-left="2.5cm" font-family="Calibri" font-size="40pt" color="black">
							<xsl:value-of select="//Mountain[@MountainId='Pirin']/Name"/>
						</fo:block>
						<fo:block position="absolute" padding-before="7mm" margin-left="2cm">
							<fo:external-graphic src="{unparsed-entity-uri(//Mountain[@MountainId='Pirin']/Image/@href)}"/>
						</fo:block>
						<fo:block position="relative" font-family="Calibri" font-weight="bold" font-size="15pt" color="black" padding-before="5mm" margin-left="2cm">
						Регион
						<fo:block/>
							<fo:inline position="relative" font-weight="normal" font-size="14pt">
								<xsl:value-of select="key('regionKey', //Mountain[@MountainId='Pirin']/@RegionRef)/RegionName"/>
							</fo:inline>
						</fo:block>
						<fo:block position="relative" font-family="Calibri" font-weight="bold" font-size="15pt" color="black" padding-before="5mm" margin-left="2cm">
						Тип
						<fo:block/>
							<fo:inline position="relative" font-weight="normal" font-size="14pt">
								<xsl:value-of select="key('typeKey', //Mountain[@MountainId='Pirin']/@TypeRef)/TypeName"/>
							</fo:inline>
						</fo:block>
						<fo:block position="relative" font-family="Calibri" font-weight="bold" font-size="15pt" color="black" padding-before="5mm" margin-left="2cm">
						Връх
						<fo:block/>
							<fo:inline position="relative" font-weight="normal" font-size="14pt">
								<xsl:value-of select="//Mountain[@MountainId='Pirin']/Peak"/>
							</fo:inline>
						</fo:block>
						<fo:block position="relative" font-family="Calibri" font-weight="bold" font-size="15pt" color="black" padding-before="5mm" margin-left="2cm">
						Височина
						<fo:block/>
							<fo:inline position="relative" font-weight="normal" font-size="14pt">
								<xsl:value-of select="//Mountain[@MountainId='Pirin']/Elevation"/>
							</fo:inline>
						</fo:block>
						<fo:block position="relative" font-family="Calibri" font-weight="bold" font-size="15pt" color="black" padding-before="5mm" margin-left="2cm">
						Описание
						<fo:block/>
							<fo:inline position="relative" font-weight="normal" font-size="14pt">
								<xsl:value-of select="//Mountain[@MountainId='Pirin']/Description"/>
							</fo:inline>
						</fo:block>
					</fo:block-container>
				</fo:flow>
			</fo:page-sequence>
			<!-- Rodopi -->
			<fo:page-sequence master-reference="template">
				<fo:flow flow-name="xsl-region-body">
					<fo:block-container position="absolute" top="-2.5cm" left="-2.5cm">
						<fo:block position="absolute" text-align="center" padding-before="2cm" margin-left="2.5cm" font-family="Calibri" font-size="40pt" color="black">
							<xsl:value-of select="//Mountain[@MountainId='Rodopi']/Name"/>
						</fo:block>
						<fo:block position="absolute" padding-before="7mm" margin-left="2cm">
							<fo:external-graphic src="{unparsed-entity-uri(//Mountain[@MountainId='Rodopi']/Image/@href)}"/>
						</fo:block>
						<fo:block position="relative" font-family="Calibri" font-weight="bold" font-size="15pt" color="black" padding-before="5mm" margin-left="2cm">
						Регион
						<fo:block/>
							<fo:inline position="relative" font-weight="normal" font-size="14pt">
								<xsl:value-of select="key('regionKey', //Mountain[@MountainId='Rodopi']/@RegionRef)/RegionName"/>
							</fo:inline>
						</fo:block>
						<fo:block position="relative" font-family="Calibri" font-weight="bold" font-size="15pt" color="black" padding-before="5mm" margin-left="2cm">
						Тип
						<fo:block/>
							<fo:inline position="relative" font-weight="normal" font-size="14pt">
								<xsl:value-of select="key('typeKey', //Mountain[@MountainId='Rodopi']/@TypeRef)/TypeName"/>
							</fo:inline>
						</fo:block>
						<fo:block position="relative" font-family="Calibri" font-weight="bold" font-size="15pt" color="black" padding-before="5mm" margin-left="2cm">
						Връх
						<fo:block/>
							<fo:inline position="relative" font-weight="normal" font-size="14pt">
								<xsl:value-of select="//Mountain[@MountainId='Rodopi']/Peak"/>
							</fo:inline>
						</fo:block>
						<fo:block position="relative" font-family="Calibri" font-weight="bold" font-size="15pt" color="black" padding-before="5mm" margin-left="2cm">
						Височина
						<fo:block/>
							<fo:inline position="relative" font-weight="normal" font-size="14pt">
								<xsl:value-of select="//Mountain[@MountainId='Rodopi']/Elevation"/>
							</fo:inline>
						</fo:block>
						<fo:block position="relative" font-family="Calibri" font-weight="bold" font-size="15pt" color="black" padding-before="5mm" margin-left="2cm">
						Описание
						<fo:block/>
							<fo:inline position="relative" font-weight="normal" font-size="14pt">
								<xsl:value-of select="//Mountain[@MountainId='Rodopi']/Description"/>
							</fo:inline>
						</fo:block>
					</fo:block-container>
				</fo:flow>
			</fo:page-sequence>
			<!-- Osogovo -->
			<fo:page-sequence master-reference="template">
				<fo:flow flow-name="xsl-region-body">
					<fo:block-container position="absolute" top="-2.5cm" left="-2.5cm">
						<fo:block position="absolute" text-align="center" padding-before="2cm" margin-left="2.5cm" font-family="Calibri" font-size="40pt" color="black">
							<xsl:value-of select="//Mountain[@MountainId='Osogovo']/Name"/>
						</fo:block>
						<fo:block position="absolute" padding-before="7mm" margin-left="2cm">
							<fo:external-graphic src="{unparsed-entity-uri(//Mountain[@MountainId='Osogovo']/Image/@href)}"/>
						</fo:block>
						<fo:block position="relative" font-family="Calibri" font-weight="bold" font-size="15pt" color="black" padding-before="5mm" margin-left="2cm">
						Регион
						<fo:block/>
							<fo:inline position="relative" font-weight="normal" font-size="14pt">
								<xsl:value-of select="key('regionKey', //Mountain[@MountainId='Osogovo']/@RegionRef)/RegionName"/>
							</fo:inline>
						</fo:block>
						<fo:block position="relative" font-family="Calibri" font-weight="bold" font-size="15pt" color="black" padding-before="5mm" margin-left="2cm">
						Тип
						<fo:block/>
							<fo:inline position="relative" font-weight="normal" font-size="14pt">
								<xsl:value-of select="key('typeKey', //Mountain[@MountainId='Osogovo']/@TypeRef)/TypeName"/>
							</fo:inline>
						</fo:block>
						<fo:block position="relative" font-family="Calibri" font-weight="bold" font-size="15pt" color="black" padding-before="5mm" margin-left="2cm">
						Връх
						<fo:block/>
							<fo:inline position="relative" font-weight="normal" font-size="14pt">
								<xsl:value-of select="//Mountain[@MountainId='Osogovo']/Peak"/>
							</fo:inline>
						</fo:block>
						<fo:block position="relative" font-family="Calibri" font-weight="bold" font-size="15pt" color="black" padding-before="5mm" margin-left="2cm">
						Височина
						<fo:block/>
							<fo:inline position="relative" font-weight="normal" font-size="14pt">
								<xsl:value-of select="//Mountain[@MountainId='Osogovo']/Elevation"/>
							</fo:inline>
						</fo:block>
						<fo:block position="relative" font-family="Calibri" font-weight="bold" font-size="15pt" color="black" padding-before="5mm" margin-left="2cm">
						Описание
						<fo:block/>
							<fo:inline position="relative" font-weight="normal" font-size="14pt">
								<xsl:value-of select="//Mountain[@MountainId='Osogovo']/Description"/>
							</fo:inline>
						</fo:block>
					</fo:block-container>
				</fo:flow>
			</fo:page-sequence>
			<!-- Sredna Gora -->
			<fo:page-sequence master-reference="template">
				<fo:flow flow-name="xsl-region-body">
					<fo:block-container position="absolute" top="-2.5cm" left="-2.5cm">
						<fo:block position="absolute" text-align="center" padding-before="2cm" margin-left="2.5cm" font-family="Calibri" font-size="40pt" color="black">
							<xsl:value-of select="//Mountain[@MountainId='SrednaGora']/Name"/>
						</fo:block>
						<fo:block position="absolute" padding-before="7mm" margin-left="2cm">
							<fo:external-graphic src="{unparsed-entity-uri(//Mountain[@MountainId='SrednaGora']/Image/@href)}"/>
						</fo:block>
						<fo:block position="relative" font-family="Calibri" font-weight="bold" font-size="15pt" color="black" padding-before="5mm" margin-left="2cm">
						Регион
						<fo:block/>
							<fo:inline position="relative" font-weight="normal" font-size="14pt">
								<xsl:value-of select="key('regionKey', //Mountain[@MountainId='SrednaGora']/@RegionRef)/RegionName"/>
							</fo:inline>
						</fo:block>
						<fo:block position="relative" font-family="Calibri" font-weight="bold" font-size="15pt" color="black" padding-before="5mm" margin-left="2cm">
						Тип
						<fo:block/>
							<fo:inline position="relative" font-weight="normal" font-size="14pt">
								<xsl:value-of select="key('typeKey', //Mountain[@MountainId='SrednaGora']/@TypeRef)/TypeName"/>
							</fo:inline>
						</fo:block>
						<fo:block position="relative" font-family="Calibri" font-weight="bold" font-size="15pt" color="black" padding-before="5mm" margin-left="2cm">
						Връх
						<fo:block/>
							<fo:inline position="relative" font-weight="normal" font-size="14pt">
								<xsl:value-of select="//Mountain[@MountainId='SrednaGora']/Peak"/>
							</fo:inline>
						</fo:block>
						<fo:block position="relative" font-family="Calibri" font-weight="bold" font-size="15pt" color="black" padding-before="5mm" margin-left="2cm">
						Височина
						<fo:block/>
							<fo:inline position="relative" font-weight="normal" font-size="14pt">
								<xsl:value-of select="//Mountain[@MountainId='SrednaGora']/Elevation"/>
							</fo:inline>
						</fo:block>
						<fo:block position="relative" font-family="Calibri" font-weight="bold" font-size="15pt" color="black" padding-before="5mm" margin-left="2cm">
						Описание
						<fo:block/>
							<fo:inline position="relative" font-weight="normal" font-size="14pt">
								<xsl:value-of select="//Mountain[@MountainId='SrednaGora']/Description"/>
							</fo:inline>
						</fo:block>
					</fo:block-container>
				</fo:flow>
			</fo:page-sequence>
			<!-- Stara planina -->
			<fo:page-sequence master-reference="template">
				<fo:flow flow-name="xsl-region-body">
					<fo:block-container position="absolute" top="-2.5cm" left="-2.5cm">
						<fo:block position="absolute" text-align="center" padding-before="2cm" margin-left="2.5cm" font-family="Calibri" font-size="40pt" color="black">
							<xsl:value-of select="//Mountain[@MountainId='StaraPlanina']/Name"/>
						</fo:block>
						<fo:block position="absolute" padding-before="7mm" margin-left="2cm">
							<fo:external-graphic src="{unparsed-entity-uri(//Mountain[@MountainId='StaraPlanina']/Image/@href)}"/>
						</fo:block>
						<fo:block position="relative" font-family="Calibri" font-weight="bold" font-size="15pt" color="black" padding-before="5mm" margin-left="2cm">
						Регион
						<fo:block/>
							<fo:inline position="relative" font-weight="normal" font-size="14pt">
								<xsl:value-of select="key('regionKey', //Mountain[@MountainId='StaraPlanina']/@RegionRef)/RegionName"/>
							</fo:inline>
						</fo:block>
						<fo:block position="relative" font-family="Calibri" font-weight="bold" font-size="15pt" color="black" padding-before="5mm" margin-left="2cm">
						Тип
						<fo:block/>
							<fo:inline position="relative" font-weight="normal" font-size="14pt">
								<xsl:value-of select="key('typeKey', //Mountain[@MountainId='StaraPlanina']/@TypeRef)/TypeName"/>
							</fo:inline>
						</fo:block>
						<fo:block position="relative" font-family="Calibri" font-weight="bold" font-size="15pt" color="black" padding-before="5mm" margin-left="2cm">
						Връх
						<fo:block/>
							<fo:inline position="relative" font-weight="normal" font-size="14pt">
								<xsl:value-of select="//Mountain[@MountainId='StaraPlanina']/Peak"/>
							</fo:inline>
						</fo:block>
						<fo:block position="relative" font-family="Calibri" font-weight="bold" font-size="15pt" color="black" padding-before="5mm" margin-left="2cm">
						Височина
						<fo:block/>
							<fo:inline position="relative" font-weight="normal" font-size="14pt">
								<xsl:value-of select="//Mountain[@MountainId='StaraPlanina']/Elevation"/>
							</fo:inline>
						</fo:block>
						<fo:block position="relative" font-family="Calibri" font-weight="bold" font-size="15pt" color="black" padding-before="5mm" margin-left="2cm">
						Описание
						<fo:block/>
							<fo:inline position="relative" font-weight="normal" font-size="14pt">
								<xsl:value-of select="//Mountain[@MountainId='StaraPlanina']/Description"/>
							</fo:inline>
						</fo:block>
					</fo:block-container>
				</fo:flow>
			</fo:page-sequence>
			<!-- Strandja -->
			<fo:page-sequence master-reference="template">
				<fo:flow flow-name="xsl-region-body">
					<fo:block-container position="absolute" top="-2.5cm" left="-2.5cm">
						<fo:block position="absolute" text-align="center" padding-before="2cm" margin-left="2.5cm" font-family="Calibri" font-size="40pt" color="black">
							<xsl:value-of select="//Mountain[@MountainId='Strandja']/Name"/>
						</fo:block>
						<fo:block position="absolute" padding-before="7mm" margin-left="2cm">
							<fo:external-graphic src="{unparsed-entity-uri(//Mountain[@MountainId='Strandja']/Image/@href)}"/>
						</fo:block>
						<fo:block position="relative" font-family="Calibri" font-weight="bold" font-size="15pt" color="black" padding-before="5mm" margin-left="2cm">
						Регион
						<fo:block/>
							<fo:inline position="relative" font-weight="normal" font-size="14pt">
								<xsl:value-of select="key('regionKey', //Mountain[@MountainId='Strandja']/@RegionRef)/RegionName"/>
							</fo:inline>
						</fo:block>
						<fo:block position="relative" font-family="Calibri" font-weight="bold" font-size="15pt" color="black" padding-before="5mm" margin-left="2cm">
						Тип
						<fo:block/>
							<fo:inline position="relative" font-weight="normal" font-size="14pt">
								<xsl:value-of select="key('typeKey', //Mountain[@MountainId='Strandja']/@TypeRef)/TypeName"/>
							</fo:inline>
						</fo:block>
						<fo:block position="relative" font-family="Calibri" font-weight="bold" font-size="15pt" color="black" padding-before="5mm" margin-left="2cm">
						Връх
						<fo:block/>
							<fo:inline position="relative" font-weight="normal" font-size="14pt">
								<xsl:value-of select="//Mountain[@MountainId='Strandja']/Peak"/>
							</fo:inline>
						</fo:block>
						<fo:block position="relative" font-family="Calibri" font-weight="bold" font-size="15pt" color="black" padding-before="5mm" margin-left="2cm">
						Височина
						<fo:block/>
							<fo:inline position="relative" font-weight="normal" font-size="14pt">
								<xsl:value-of select="//Mountain[@MountainId='Strandja']/Elevation"/>
							</fo:inline>
						</fo:block>
						<fo:block position="relative" font-family="Calibri" font-weight="bold" font-size="15pt" color="black" padding-before="5mm" margin-left="2cm">
						Описание
						<fo:block/>
							<fo:inline position="relative" font-weight="normal" font-size="14pt">
								<xsl:value-of select="//Mountain[@MountainId='Strandja']/Description"/>
							</fo:inline>
						</fo:block>
					</fo:block-container>
				</fo:flow>
			</fo:page-sequence>
			<!-- Vitosha -->
			<fo:page-sequence master-reference="template">
				<fo:flow flow-name="xsl-region-body">
					<fo:block-container position="absolute" top="-2.5cm" left="-2.5cm">
						<fo:block position="absolute" text-align="center" padding-before="2cm" margin-left="2.5cm" font-family="Calibri" font-size="40pt" color="black">
							<xsl:value-of select="//Mountain[@MountainId='Vitosha']/Name"/>
						</fo:block>
						<fo:block position="absolute" padding-before="7mm" margin-left="2cm">
							<fo:external-graphic src="{unparsed-entity-uri(//Mountain[@MountainId='Vitosha']/Image/@href)}"/>
						</fo:block>
						<fo:block position="relative" font-family="Calibri" font-weight="bold" font-size="15pt" color="black" padding-before="5mm" margin-left="2cm">
						Регион
						<fo:block/>
							<fo:inline position="relative" font-weight="normal" font-size="14pt">
								<xsl:value-of select="key('regionKey', //Mountain[@MountainId='Vitosha']/@RegionRef)/RegionName"/>
							</fo:inline>
						</fo:block>
						<fo:block position="relative" font-family="Calibri" font-weight="bold" font-size="15pt" color="black" padding-before="5mm" margin-left="2cm">
						Тип
						<fo:block/>
							<fo:inline position="relative" font-weight="normal" font-size="14pt">
								<xsl:value-of select="key('typeKey', //Mountain[@MountainId='Vitosha']/@TypeRef)/TypeName"/>
							</fo:inline>
						</fo:block>
						<fo:block position="relative" font-family="Calibri" font-weight="bold" font-size="15pt" color="black" padding-before="5mm" margin-left="2cm">
						Връх
						<fo:block/>
							<fo:inline position="relative" font-weight="normal" font-size="14pt">
								<xsl:value-of select="//Mountain[@MountainId='Vitosha']/Peak"/>
							</fo:inline>
						</fo:block>
						<fo:block position="relative" font-family="Calibri" font-weight="bold" font-size="15pt" color="black" padding-before="5mm" margin-left="2cm">
						Височина
						<fo:block/>
							<fo:inline position="relative" font-weight="normal" font-size="14pt">
								<xsl:value-of select="//Mountain[@MountainId='Vitosha']/Elevation"/>
							</fo:inline>
						</fo:block>
						<fo:block position="relative" font-family="Calibri" font-weight="bold" font-size="15pt" color="black" padding-before="5mm" margin-left="2cm">
						Описание
						<fo:block/>
							<fo:inline position="relative" font-weight="normal" font-size="14pt">
								<xsl:value-of select="//Mountain[@MountainId='Vitosha']/Description"/>
							</fo:inline>
						</fo:block>
					</fo:block-container>
				</fo:flow>
			</fo:page-sequence>
		</fo:root>
	</xsl:template>
</xsl:stylesheet>
