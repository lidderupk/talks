<#include "header.ftl">


	<section class="hero is-small is-info is-bold">
	 <div class="hero-head">
	 	<div class="container">
				<h1 class="title is-1">
					Talks by Upkar Lidder
				</h1>
				<h2 class="subtitle has-text-weight-bold is-family-monospace">
					Here are some of the talks I have given online.
				</h2>
		</div>
	 </div>
	</section>
	<br/>
	<div class="content">
		<div class="columns is-multiline">
				<#list posts as post>
						<#if (post.status == "published")>					
							<div class="column is-half-tablet is-half-desktop is-one-third-widescreen is-one-quarter-fullhd">
								<div class="card">
									<div class="card-image">
									<a href="${post.video_url}">
										<figure class="image is-3by3">
											<#if post.img?has_content && post.base_path?has_content>
												<img src="${post.base_path}/${post.img}" alt="Placeholder image">
											</#if>
										</figure>
									</a>
									</div>
									<div class="card-content">
										<div class="media">
											<div class="media-content">
												<a href="${post.video_url}"><p class="title is-4"><#escape x as x?xml>${post.title}</#escape></p></a>
												<p>${post.date?string("dd MMMM yyyy")}</p>
												<p class="subtitle is-6">@lidderupk</p>
											</div>
										</div>
										<p>${post.body}</p>
										<#list post.tags as tag>
											<item>
												<span class="button is-info has-text-white">${tag}</span>
											</item>
										</#list>
									</div>
								</div>
							</div>
						</#if>
					</#list>
				</div>
			</div>
		<hr />

<#include "footer.ftl">