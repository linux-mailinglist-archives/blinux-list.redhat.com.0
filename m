Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [216.205.24.124])
	by mail.lfdr.de (Postfix) with ESMTP id ECCFB3D2BFE
	for <lists+blinux-list@lfdr.de>; Thu, 22 Jul 2021 20:39:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1626979149;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=d1IFFYH7DZHMpFEi6/6mTFvAWhggyzDCcvIb9/H7yhw=;
	b=bD2a8G7bMJmdDpgl898DnLxKA7TqeX2vfStwDVjbjfPpnIzu2avOkAzYKlR6vfRK4PLjs5
	A/Rfu/3/4gDsoy6TquL7HMaFczl6gGWsdchVVEPxyw3DezptaAv/EHNzkNFn3wfEl68jkL
	8iNSVn9IXtg2Df0mH9KnQGA914qRD1w=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-433-FriFaqknPrqhsi05oiaTjg-1; Thu, 22 Jul 2021 14:39:07 -0400
X-MC-Unique: FriFaqknPrqhsi05oiaTjg-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com [10.5.11.13])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id C403F8015DB;
	Thu, 22 Jul 2021 18:39:03 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 9F10860939;
	Thu, 22 Jul 2021 18:39:03 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 2124E4BB7C;
	Thu, 22 Jul 2021 18:39:03 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.rdu2.redhat.com
	[10.11.54.6])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 16MIcvdc008229 for <blinux-list@listman.util.phx.redhat.com>;
	Thu, 22 Jul 2021 14:38:57 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 679D320AE82B; Thu, 22 Jul 2021 18:38:57 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast02.extmail.prod.ext.rdu2.redhat.com [10.11.55.18])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 634A620AE829
	for <blinux-list@redhat.com>; Thu, 22 Jul 2021 18:38:54 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [207.211.31.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
	bits)) (No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id A9712800883
	for <blinux-list@redhat.com>; Thu, 22 Jul 2021 18:38:54 +0000 (UTC)
Received: from mail-wm1-f49.google.com (mail-wm1-f49.google.com
	[209.85.128.49]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-231-s2PUKJF5PqyU1PltryYVOg-1; Thu, 22 Jul 2021 14:38:52 -0400
X-MC-Unique: s2PUKJF5PqyU1PltryYVOg-1
Received: by mail-wm1-f49.google.com with SMTP id
	q16-20020a1ca7100000b0290236ec98bebaso213073wme.1
	for <blinux-list@redhat.com>; Thu, 22 Jul 2021 11:38:52 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:references:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-transfer-encoding
	:content-language;
	bh=3Kggw0WMDTfbBIT7IPBwFfzzOP4fJfk69aIooWuFrjo=;
	b=XP/9VOdZHI+CVym1qPa7a6KCF7NzkMZjx0jil9QWw5EMju7j3Tn269RAB9wSaB4dNu
	ArwwUFSoPYhlnXrIR9uZgIUif8dL4UkDA6MzWt60p2RVqbxyJms9lhcObRPhlNQz0jzE
	f8AzzuS2GZOLpDCBRSzhIfhGPI0y1OnKMxxHYie+RGtvIpTvTGA/obx3EnXNYnSqLtIZ
	c+fTbKsphIvcvYWEd9ySIBx+ZxuZt5hSL3QyVXIseLFgvq15GHZfSlSPMF0EbXqwGl9E
	7vhNE/rFW68DV0oMJarlctVGUAwfsrn/+tn3DFpBcjo4bUTE9E5bSLi+EyjZkW1CShkF
	tFww==
X-Gm-Message-State: AOAM531F7zKqwmlQXJaSMy6DBnxpHuBuZu+rA+DanOx+0KtW1adN2Z91
	gDxnbmmRq/sLEZwkM2OBZp+t61ed7oCu5A==
X-Google-Smtp-Source: ABdhPJwoAXr0h7G8PtG/1o9/oYh+1OeYWqupcZWDni/V44wniooozlrvkuTEXNFlmfPZxIfNr3/8xw==
X-Received: by 2002:a05:600c:214a:: with SMTP id
	v10mr912569wml.67.1626979130877; 
	Thu, 22 Jul 2021 11:38:50 -0700 (PDT)
Received: from [192.168.1.130] ([90.254.192.41])
	by smtp.gmail.com with ESMTPSA id
	z16sm31965544wrl.8.2021.07.22.11.38.50 for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Thu, 22 Jul 2021 11:38:50 -0700 (PDT)
Subject: Re: Adjusting lightdm screenreader volume (How do I...)
To: Linux for blind general discussion <blinux-list@redhat.com>
References: <b03aafa4-daf7-d333-f8dc-80aa029225c9@gmail.com>
	<210fc29d-9144-c009-3557-fd2304aa47cd@gmail.com>
Message-ID: <6a20948b-bceb-bc96-c787-cf3f2c27c2af@gmail.com>
Date: Thu, 22 Jul 2021 19:38:50 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
	Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <210fc29d-9144-c009-3557-fd2304aa47cd@gmail.com>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.6
X-loop: blinux-list@redhat.com
From: Linux for blind general discussion <blinux-list@redhat.com>
X-BeenThere: blinux-list@redhat.com
X-Mailman-Version: 2.1.12
Precedence: junk
Reply-To: blinux-list@redhat.com
List-Id: Linux for blind general discussion <blinux-list.redhat.com>
List-Unsubscribe: <https://listman.redhat.com/mailman/options/blinux-list>,
	<mailto:blinux-list-request@redhat.com?subject=unsubscribe>
List-Archive: <https://listman.redhat.com/archives/blinux-list>
List-Post: <mailto:blinux-list@redhat.com>
List-Help: <mailto:blinux-list-request@redhat.com?subject=help>
List-Subscribe: <https://listman.redhat.com/mailman/listinfo/blinux-list>,
	<mailto:blinux-list-request@redhat.com?subject=subscribe>
Sender: blinux-list-bounces@redhat.com
Errors-To: blinux-list-bounces@redhat.com
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

Ah a mix of both ways sorted it, it's now less loud

On 7/22/21 2:58 PM, Linux for blind general discussion wrote:
> I know of two things you can do to set the speech volume in lightdm. 
> The easiest option is to open Orca preferences and set the volume 
> under the voice tab. However, this will only set the speech volume. 
> Since this is all you really need here, it shouldn't cause a problem. 
> It also has the benefit of setting the volume immediately right on the 
> lightdm screen, so you won't have to reboot or log out of your session 
> to wait for the change to be effective.
>
>
> The other method is a bit more complicated, but it will set your 
> system and application volumes, as well as your default device if you 
> have more than one and want to use something else. First, login as 
> your normal user and set your volumes the way you want them. Then as 
> root, copy your user's .config/pulse to /var/lib/lightdm/.config like 
> so, noting that the # at the beginning of this line represents a root 
> shell and should not be copied:
>
> # cp -R /home/<username>/.config/pulse /var/lib/lightdm/.config/
>
> replacing <username> with the name of your normal unprivileged user. 
> Now, also as root, run
>
> # chown -R lightdm:lightdm /var/lib/lightdm/.config/pulse
>
> This will set the ownership of that configuration folder to lightdm so 
> that it will be able to read it. On the next reboot, lightdm should 
> speak at a more acceptable volume. Hope this helps.
>
> ~Kyle
>
> _______________________________________________
> Blinux-list mailing list
> Blinux-list@redhat.com
> https://listman.redhat.com/mailman/listinfo/blinux-list
>

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

