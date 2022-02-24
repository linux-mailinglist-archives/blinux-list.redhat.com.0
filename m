Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id D888C4C2938
	for <lists+blinux-list@lfdr.de>; Thu, 24 Feb 2022 11:22:10 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1645698129;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=/+s3vRkgf+/uchF1uT2bCgF84NIRaPkmCkhgT4CF89g=;
	b=cZjuEBwbY4NFYlu9b9oIvP2S1i14QVELH2nWhdhttTW9J0HZ7qvpC+WecpYMVjR+pdkXDo
	aVj6+yUXgoyD3fk5LY1j9NlORgfJVAkXBWrKUnXVZeG6sYK3m6UG1Rmg5K4I9+9X4zzsr5
	1zuXTaG07I5SCnr2DMj7ktvTHrFEDqA=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-77-7xZniC2uOX-xnrgHVGpXiA-1; Thu, 24 Feb 2022 05:22:06 -0500
X-MC-Unique: 7xZniC2uOX-xnrgHVGpXiA-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com [10.5.11.22])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id CC948801AAD;
	Thu, 24 Feb 2022 10:22:01 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 2369E1006847;
	Thu, 24 Feb 2022 10:21:55 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id E09F84ED28;
	Thu, 24 Feb 2022 10:21:47 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.rdu2.redhat.com
	[10.11.54.3])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 21OALdUG019242 for <blinux-list@listman.util.phx.redhat.com>;
	Thu, 24 Feb 2022 05:21:39 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 269A0111E3E9; Thu, 24 Feb 2022 10:21:39 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast05.extmail.prod.ext.rdu2.redhat.com [10.11.55.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 2183C111E3E8
	for <blinux-list@redhat.com>; Thu, 24 Feb 2022 10:21:36 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [207.211.31.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
	bits)) (No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 3220A802E5D
	for <blinux-list@redhat.com>; Thu, 24 Feb 2022 10:21:36 +0000 (UTC)
Received: from mail-wr1-f48.google.com (mail-wr1-f48.google.com
	[209.85.221.48]) by relay.mimecast.com with ESMTP with STARTTLS
	(version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-573-zn_nmPk5Pi2gM0CiTEYyAw-1; Thu, 24 Feb 2022 05:21:34 -0500
X-MC-Unique: zn_nmPk5Pi2gM0CiTEYyAw-1
Received: by mail-wr1-f48.google.com with SMTP id b5so1222744wrr.2
	for <blinux-list@redhat.com>; Thu, 24 Feb 2022 02:21:34 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20210112;
	h=x-gm-message-state:date:from:to:subject:message-id:references
	:mime-version:content-disposition:in-reply-to;
	bh=5tXWqtGsaCTA6CA+Qj++kRGZkgkuTYv/8tMr092Aid4=;
	b=iEYrwistJ+n0hx3P9B4dVIqG/l2GTw+zshozOtMF1ss2XRjLJifGrB+K/AvVVsvwWT
	WoxzIGNwXbOPApjBlUbLIVVLUyRyEtyMPj1P6v0FQx4nUSbAJS+uDNM8UTHBpJruDzL6
	FMwcUm05+oX4AD0HOw/PH/ECDywEIsmm1b1atInDc8T/1LfPQRcy2ddq4KYJScRqyRoz
	ucb23UImCFXyFpNMQO0dt9zJDcp0ssclAUlM32d0Z67JN5UFrMWfqfjAoLL6QABGfAqr
	LDD0NHrvtRFJhHtFDO7sxHvBQ6z8XES6ilAtgyxDOyLZ+jMmi4xY7wpsUxSrJXng5P8J
	5K3Q==
X-Gm-Message-State: AOAM530Es/q0VJVZo4L66E+R78q+VmbfdVXTwPoczvgALN4gZlusay9Q
	r1fbnk4Lf95tTAkcyFoWbYt5yHlv+LRPMA==
X-Google-Smtp-Source: ABdhPJzPR4Z/LFar+aqb38Nlr69gOkpYpVd4BSwy94XwMACX663msgTkQ7+Th6ALzzT/XLlfD3qzYg==
X-Received: by 2002:a5d:548b:0:b0:1ed:e0b2:188c with SMTP id
	h11-20020a5d548b000000b001ede0b2188cmr1646393wrv.122.1645698093001;
	Thu, 24 Feb 2022 02:21:33 -0800 (PST)
Received: from waffles ([90.250.160.235])
	by smtp.gmail.com with ESMTPSA id z3sm2545404wmp.42.2022.02.24.02.21.31
	for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
	Thu, 24 Feb 2022 02:21:32 -0800 (PST)
Date: Thu, 24 Feb 2022 10:21:44 +0000
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: Easiest way to back up/pull data from a cloud w/speakup or Fenrir?
Message-ID: <YhdcOBSEnEmsKrT3@waffles>
References: <Yha/ohci65ePLjtV@waffles>
	<20220224072012.eun2tl6dqldvdoao@alex-portable>
MIME-Version: 1.0
In-Reply-To: <20220224072012.eun2tl6dqldvdoao@alex-portable>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.3
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
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Disposition: inline
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

But don't most of the providers (well okay I only tried dropbox/google
drive) need you to fire up a browser for getting a token to authorize
rclone?

Git sounds like a good idea. Essentially, fresh install, no desktop, and
still at that point where I want my stuff easily snaggable on any fresh
machine.

So how easy is it to make a git repo that only I can access? I mean,
rclone is fantastic.

But, I don't haave a browser on said machine to get tokens for rclone to
work so....

On Thu, Feb 24, 2022 at 10:27:05AM +
0300, Linux for blind general discussion wrote:
> On Wed, Feb 23, 2022 at 11:13:38PM +0000, Linux for blind general discussion wrote:
> > As it says...
> > 
> > What's the simplest way to back up data to a cloud server and pull it
> > back down?
> > 
> 
> I using git and yadm for that.
> 
> > I have a new laptop. It's running vanilla Arch post install, I want to
> > pull down my configs and saved and backed up .config directory from my
> > old machine, but every provider I'm trying needs a browser window, it
> > seems like.
> 
> 
> for transfering you can use rsync or magick-wormhole
> 
> > So is there any that I can run from a purely text mode install,
> > preferably from the repos or AUR that'll let me download my files? I'm
> > hoping there is because I, rankly, don't want to install a desktop for
> > just this one thing
> 
> if you really want the cloud
> rclone supports many providers.
> 
> -- 
> Sincerely, Alexander
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

