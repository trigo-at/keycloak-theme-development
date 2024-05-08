<#macro loginLayout>
<!DOCTYPE html>
<html class="h-full bg-gray-50">
	<head>
		<meta charset="utf-8">
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
		<meta name="robots" content="noindex, nofollow">
		<#if properties.meta?has_content>
			<#list properties.meta?split(' ') as meta>
				<meta name="${meta?split('==')[0]}" content="${meta?split('==')[1]}"/>
			</#list>
		</#if>
		<title>${msg("loginTitle",(realm.displayName!''))}</title>
		<link rel="icon" href="${url.resourcesPath}/img/YOUR_IMG" />

		<link rel="stylesheet" href="${url.resourcesPath}/css/styles.css" />
	</head>
	<body class="h-full flex flex-col">
		<header class="bg-grey">
			<nav class="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8" aria-label="Top">
				<div class="w-full py-6 flex items-center justify-between">
					<div class="flex items-center">
						<a href="#">
							<span class="sr-only">YOUR GmbH</span>
							<img class="h-10 w-auto" src="${url.resourcesPath}/img/YOUR_IMG.svg" alt="">
						</a>

					</div>
					<div class="ml-10 space-x-4">
						<a href="https://trigodev.com/contact-us" class="inline-block bg-white py-2 px-4 rounded-md text-base font-medium text-grey hover:bg-orange">Get in touch</a>
					</div>
				</div>

			</nav>
		</header>

		<div class="h-full flex flex-col justify-center py-12 sm:px-6 lg:px-8">
			<div class="sm:mx-auto sm:w-full sm:max-w-md">
				<img class="mx-auto h-12 w-auto" src="${url.resourcesPath}/img/YOUR_IMG.svg" alt="" />
				<h1 class="mt-6 text-center text-header2 tracking-header2 font-semibold text-grey">
					${kcSanitize(msg("loginTitleHtml",(realm.displayNameHtml!'')))?no_esc}
				</h1>
				<p class="mt-2 text-paragraph tracking-paragraph text-grey">
					<#nested "description">
				</p>
			</div>

			<div class="mt-8 sm:mx-auto sm:w-full sm:max-w-md">
				<div class="bg-white py-8 px-4 shadow sm:rounded-lg sm:px-10">
					<#nested "main">
				</div>
			</div>
		</div>
		<footer class="bg-grey">
			<div class="max-w-7xl mx-auto py-12 px-4 overflow-hidden sm:px-6 lg:px-8">
				<nav class="-mx-5 -my-2 flex flex-wrap justify-center" aria-label="Footer">
					<div class="px-5 py-2">
						<a href="https://trigodev.com/?utm_source=sso&utm_medium=login_page" target="_blank" rel="noopener noreferrer"
							class="text-small tracking-paragraph text-white hover:text-orange">
							OUR COMPANY
						</a>
					</div>

					<div class="px-5 py-2">
						<a href="https://trigodev.com/legal-notice?utm_source=sso&utm_medium=login_page" target="_blank" rel="noopener noreferrer"
							class="text-small tracking-paragraph text-white hover:text-orange">
							Legal Notice
						</a>
					</div>

					<div class="px-5 py-2">
						<a href="https://trigodev.com/privacy?utm_source=sso&utm_medium=login_page" target="_blank" rel="noopener noreferrer"
							class="text-small tracking-paragraph text-white hover:text-orange">
							Privacy Policy
						</a>
					</div>
				</nav>
			</div>
		</footer>
	</body>
</html>
</#macro>
