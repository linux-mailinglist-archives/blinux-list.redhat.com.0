Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 810FD45AD9A
	for <lists+blinux-list@lfdr.de>; Tue, 23 Nov 2021 21:50:41 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1637700640;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=7C9blyqTok8gVM1bfMabAhBew/lED+buYkGwIhYqhb8=;
	b=HlMXNMn0m1yn9gtxuci+z1GesU+KNi28frzIxTZp/Zl/TY7LP2VgvExf73isMibiCoQafR
	yt3VHuB3173LkTfvBtfycOO7B9dmlOakXJSnPNJ4AtJ8G2U+7YGvj/p/AQVcA25Y0vvTBK
	8xwY8azkZp47QtnMqnjeVOZPWNCmxfs=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-235-5chhyPu2NNWtYkTrDDFRGA-1; Tue, 23 Nov 2021 15:50:36 -0500
X-MC-Unique: 5chhyPu2NNWtYkTrDDFRGA-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com [10.5.11.14])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id D97CB18125C4;
	Tue, 23 Nov 2021 20:50:31 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 98CBD29403;
	Tue, 23 Nov 2021 20:50:31 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id CD22E1832E80;
	Tue, 23 Nov 2021 20:50:29 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.rdu2.redhat.com
	[10.11.54.2])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 1ANKgCfE009260 for <blinux-list@listman.util.phx.redhat.com>;
	Tue, 23 Nov 2021 15:42:12 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id A7A754047279; Tue, 23 Nov 2021 20:42:12 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast06.extmail.prod.ext.rdu2.redhat.com [10.11.55.22])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id A3AAA4047272
	for <blinux-list@redhat.com>; Tue, 23 Nov 2021 20:42:12 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [207.211.31.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
	bits)) (No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 8B18318162C2
	for <blinux-list@redhat.com>; Tue, 23 Nov 2021 20:42:12 +0000 (UTC)
Received: from mail-wr1-f46.google.com (mail-wr1-f46.google.com
	[209.85.221.46]) by relay.mimecast.com with ESMTP with STARTTLS
	(version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-515-ZVH4ZAgWMjWTVILXGilA6Q-1; Tue, 23 Nov 2021 15:42:10 -0500
X-MC-Unique: ZVH4ZAgWMjWTVILXGilA6Q-1
Received: by mail-wr1-f46.google.com with SMTP id a18so134537wrn.6
	for <blinux-list@redhat.com>; Tue, 23 Nov 2021 12:42:10 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20210112;
	h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
	:content-language:to:references:from:in-reply-to
	:content-transfer-encoding;
	bh=MeMwcK0JfTFWvj2L7ZcooKy3M7mXFZuWKlmGhSqkZT8=;
	b=k2ElQYlkRcMrGxCQcze5PUeC2QnOUJ/NwZEpLYuPVvUQ5XrsbtPHBPMt3VUDYV1C1r
	WNUgcmKtaFkbM2Uk6gRl9wBaeAqr8eEwJE+CbmKXuZlsqZTDj/o22eLoL/pTCKy9nNRa
	8+MAa2f8dDM8mgCV5/7qBbRy1RAqfu46+1TChuOJBQDHV7HH3sA+YAzHheyweZ6te+MW
	2jSZUZDr04TPwWWMCHmrIoQAFPYLZ8kHzF2E0fCkfH75iYLx7tmdzoaqYA1p9M7ZtpNd
	beCSK7yt9nLdNrdElfL2iDrTIX+kYmA028nkAQ3g4p8FiGu302FQti7Opx6un5uWFgDV
	EOaA==
X-Gm-Message-State: AOAM530RzCwNoXd6flqMw8/6RvbnHLgc4baHL4RSyr9fE7Rq2sOF9XgU
	4dp52rngffqiKCTEM/Wg7+nf2Jn4EmKr6Q==
X-Google-Smtp-Source: ABdhPJzsN+/DccR7Ch2SPBsfm1Bg9HpawlMcb4c3SE8FeYxfgXXk/YT8tSHeW/dhxD4w3x/xczn09Q==
X-Received: by 2002:a5d:60d0:: with SMTP id x16mr9995416wrt.103.1637700129152; 
	Tue, 23 Nov 2021 12:42:09 -0800 (PST)
Received: from [192.168.8.113] ([41.216.201.125])
	by smtp.gmail.com with ESMTPSA id z6sm3726495wmp.9.2021.11.23.12.42.07
	for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Tue, 23 Nov 2021 12:42:08 -0800 (PST)
Message-ID: <baaffc90-b378-fac2-6f71-595d57783f41@gmail.com>
Date: Tue, 23 Nov 2021 22:42:05 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
	Thunderbird/91.3.0
Subject: Re: Can I upgrade Coconut to Mint?
To: Linux for blind general discussion <blinux-list@redhat.com>
References: <993f996a-d2ca-1ed0-e23c-3357d5a2f146@icloud.com>
	<5ca73560-e7d4-56f7-c875-8677d4ea9d65@gmail.com>
	<CAO2sX31T8cTcUHZL08o0Tr-oaqZr-=ZhNZCjUvpLo0jz3dyWeg@mail.gmail.com>
In-Reply-To: <CAO2sX31T8cTcUHZL08o0Tr-oaqZr-=ZhNZCjUvpLo0jz3dyWeg@mail.gmail.com>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.84 on 10.11.54.2
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

Also remember, you would have to somehow configure Mint to work like 
Coconut, there's a bunch of stuff you'll need from /etc/ to pull this 
off, and I would say, rather install Gentoo than do this. It's not worth 
it! By the way, neither is installing Gentoo.


Warm regards,

Brandt Steenkamp

Sent from my Fedora Install using Thunderbird

On 2021/11/23 22:28, Linux for blind general discussion wrote:
> In theory, since both are Debian based systems using dpkg and apt, you
> could add the mint repositories to your /etc/apt/sources.list and then
> run:
>
> sudo apt-get update
> sudo apt-get upgrade
>
> and all of your installed packages would be upgraded to the newest
> version provided by Mint.
>
> In practice, you'd likely end up with a mix of packages sourced from
> both, even if you also removed the Coconut repositories since the Mint
> version of a package would only be installed if it's version number
> parses as higher to apt... but worse, you might run into conflicts
> where a package sourced from Coconut depends on one version of a
> Library and a Package from Mint depends on a different version of the
> same library, you can't have both versions of the library installed at
> the same time, and you end up with a tangled mess that in order to
> upgrade some packages you must downgrade or remove other packages or
> swap a package that was installed as a dependency for an alternative
> package that meets the same dependency... Granted, such problems can
> come up when  upgrading from one release to another of the same
> distro, especially if there's an intermediate release(say, trying to
> go from Ubuntu 20.10 directly to 21.10 instead of upgrading to 21.04
> first), or even within the same release of a distro if the release
> gets frequent upgrades to individual packages and you go a long time
> without upgrading, but competent package maintenance can keep this to
> a minimum as long as you stick to one distro...
>
> As such, it's generally recommended that one does a clean install if
> they want to switch distros, even for distros that are very closely
> related.
>
> That said, if you have a separate /home partition, you might be able
> to migrate user setting simply by leaving the /home partition alone
> and creating a user with the same username as the old distro, and
> while it won't give you afull list of installed packages(which might
> not be all that useful, since some will be libraries that might not
> exist in the distro you're switching to, if you install the deborphan
> package and run
>
> deborphan -a
>
> It'll give you a list of installed packages that aren't depended on by
> other packages. They'll be prefixed with their section and one per
> line, but strip away the former and put them all on one line, and
> you've got the argument list to feed to apt-get install on the new
> distro to restore most of your installed software.
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

