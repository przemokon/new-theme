{*
* 2007-2017 PrestaShop
*
* NOTICE OF LICENSE
*
* This source file is subject to the Academic Free License (AFL 3.0)
* that is bundled with this package in the file LICENSE.txt.
* It is also available through the world-wide-web at this URL:
* http://opensource.org/licenses/afl-3.0.php
* If you did not receive a copy of the license and are unable to
* obtain it through the world-wide-web, please send an email
* to license@prestashop.com so we can send you a copy immediately.
*
* DISCLAIMER
*
* Do not edit or add to this file if you wish to upgrade PrestaShop to newer
* versions in the future. If you wish to customize PrestaShop for your
* needs please refer to http://www.prestashop.com for more information.
*
*  @author PrestaShop SA <contact@prestashop.com>
*  @copyright  2007-2017 PrestaShop SA

*  @license    http://opensource.org/licenses/afl-3.0.php  Academic Free License (AFL 3.0)
*  International Registered Trademark & Property of PrestaShop SA
*}
<section id="social_block" class="col-xs-12 col-sm-6">
    <span class="h4">{l s='Follow us' mod='blocksocial'}</span>
	{if isset($facebook_url) && $facebook_url != ''}
		<span class="facebook">
			<a class="" target="_blank" href="{$facebook_url|escape:html:'UTF-8'}">
				<i class="icon icon-fw icon-2x icon-facebook"></i>
                {* <span>{l s='Facebook' mod='blocksocial'}</span> *}
			</a>
		</span>
	{/if}
	{if isset($twitter_url) && $twitter_url != ''}
		<span class="twitter">
			<a class="" target="_blank" href="{$twitter_url|escape:html:'UTF-8'}">
				<i class="icon icon-fw icon-2x icon-twitter"></i>
                {* <span>{l s='Twitter' mod='blocksocial'}</span> *}
			</a>
		</span>
	{/if}
	{if isset($rss_url) && $rss_url != ''}
		<span class="rss">
			<a class="" target="_blank" href="{$rss_url|escape:html:'UTF-8'}">
				<i class="icon icon-fw icon-2x icon-rss"></i>
                {* <span>{l s='RSS' mod='blocksocial'}</span> *}
			</a>
		</span>
	{/if}
    {if isset($youtube_url) && $youtube_url != ''}
    	<span class="youtube">
    		<a class="" target="_blank" href="{$youtube_url|escape:html:'UTF-8'}">
    			<i class="icon icon-fw icon-2x icon-youtube"></i>
                {* <span>{l s='Youtube' mod='blocksocial'}</span> *}
    		</a>
    	</span>
    {/if}
    {if isset($google_plus_url) && $google_plus_url != ''}
    	<span class="google-plus">
    		<a class="" target="_blank" href="{$google_plus_url|escape:html:'UTF-8'}" rel="publisher">
    			<i class="icon icon-fw icon-2x icon-google-plus"></i>
                {* <span>{l s='Google Plus' mod='blocksocial'}</span> *}
    		</a>
    	</span>
    {/if}
    {if isset($pinterest_url) && $pinterest_url != ''}
    	<span class="pinterest">
    		<a class="" target="_blank" href="{$pinterest_url|escape:html:'UTF-8'}">
    			<i class="icon icon-fw icon-2x icon-pinterest"></i>
                {* <span>{l s='Pinterest' mod='blocksocial'}</span> *}
    		</a>
    	</span>
    {/if}
    {if isset($vimeo_url) && $vimeo_url != ''}
    	<span class="vimeo">
    		<a class="" target="_blank" href="{$vimeo_url|escape:html:'UTF-8'}">
    			<i class="icon icon-fw icon-2x icon-vimeo-square"></i>
                {* <span>{l s='Vimeo' mod='blocksocial'}</span> *}
    		</a>
    	</span>
    {/if}
    {if isset($instagram_url) && $instagram_url != ''}
    	<span class="instagram">
    		<a class="" target="_blank" href="{$instagram_url|escape:html:'UTF-8'}">
    			<i class="icon icon-fw icon-2x icon-instagram"></i>
                {* <span>{l s='Instagram' mod='blocksocial'}</span> *}
    		</a>
    	</span>
    {/if}
</section>
