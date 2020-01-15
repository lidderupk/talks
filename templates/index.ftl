<#include "header.ftl">


	<section class="hero is-small is-info is-bold">
	 <div class="hero-head">
	 	<div class="container">
				<h1 class="title is-1">
					Dev Talks by Upkar Lidder, Developer Advocate
				</h1>
				<h2 class="is-family-monospace">
					<p>
						<a href="https://github.com/lidderupk">
							<button class="button is-medium">
								<span class="icon is-medium">
									<i class="fa fa-github"></i>
								</span>
								<span>GitHub</span>
							</button>
						</a>
						<a href="https://www.linkedin.com/in/lidderupk/">
							<button class="button is-medium">
								<span class="icon is-medium">
									<i class="fa fa-linkedin"></i>
								</span>
								<span>LinkedIn</span>
							</button>
						</a>
						<a href="https://dev.to/lidderupk">
							<button class="button is-medium">
								<span class="icon is-medium">
									<i class="fa fa-book"></i>
								</span>
								<span>dev.to</span>
							</button>
						</a>
					</p>
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
										<p>
											<#list post.tags as tag>
												<item>
													<span class="button has-background-white-ter has-text-dark is-medium">${tag}</span>
												</item>
											</#list>
										</p>
										<div>
											<#if post.video_url?has_content>
												<p><a href="${post.video_url}"><button class="button is-fullwidth is-info is-large has-text-weight-bold is-bold">Watch the video!</button></a></p>
											</#if>
											<#if post.slides_url?has_content>
												<p><a href="${post.slides_url}"><button class="button is-fullwidth is-primary is-large has-text-weight-bold">Get the slides!</button></a></p>
											</#if>
											<#if post.code_url?has_content>
												<p><a href="${post.code_url}"><button class="button is-fullwidth is-warning is-large has-text-weight-bold">Get the code!</button></a></p>
											</#if>
										</div>
									</div>
								</div>
							</div>
						</#if>
					</#list>
				</div>
			</div>
		<hr />

<#include "footer.ftl">