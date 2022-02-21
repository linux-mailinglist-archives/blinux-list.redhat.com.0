Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 905FD4BD9E9
	for <lists+blinux-list@lfdr.de>; Mon, 21 Feb 2022 14:28:29 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1645450108;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=YmBbgwlqbH1ZiaV37rfsk3Kqch3sORQAsdX6DQ039vg=;
	b=OYVY0IN8ngYMM/Wnkp6jHd/1M1DF8EHL35yszsXaTCjvS1PKzu+VZPXa0kjkgVE4LP39En
	esgc/XuQzm95EZkSu+30PAfZXOnzDtkDTJ7NV8W/yD+Tah3yp7DfE74hoN7a4xWd7r55Mb
	NSoi9KBHCAB5g3yffg00umbMSqUoSco=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-278-r1lmMB_HNvuLreiCPWNQdA-1; Mon, 21 Feb 2022 08:28:24 -0500
X-MC-Unique: r1lmMB_HNvuLreiCPWNQdA-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com [10.5.11.15])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id BBFB1814243;
	Mon, 21 Feb 2022 13:28:20 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id AF02574E8F;
	Mon, 21 Feb 2022 13:28:18 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 905AB4BB7B;
	Mon, 21 Feb 2022 13:28:12 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx10.intmail.prod.int.rdu2.redhat.com
	[10.11.54.10])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 21LDS6wr015783 for <blinux-list@listman.util.phx.redhat.com>;
	Mon, 21 Feb 2022 08:28:06 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 149935361D9; Mon, 21 Feb 2022 13:28:06 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast02.extmail.prod.ext.rdu2.redhat.com [10.11.55.18])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 10E4C5361CC
	for <blinux-list@redhat.com>; Mon, 21 Feb 2022 13:28:06 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[205.139.110.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id EC977802319
	for <blinux-list@redhat.com>; Mon, 21 Feb 2022 13:28:05 +0000 (UTC)
Received: from mail-wr1-f49.google.com (mail-wr1-f49.google.com
	[209.85.221.49]) by relay.mimecast.com with ESMTP with STARTTLS
	(version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-436-JPPwDINKN86Ch5PSrwEfOQ-1; Mon, 21 Feb 2022 08:28:04 -0500
X-MC-Unique: JPPwDINKN86Ch5PSrwEfOQ-1
Received: by mail-wr1-f49.google.com with SMTP id m27so15299294wrb.4
	for <blinux-list@redhat.com>; Mon, 21 Feb 2022 05:28:04 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20210112;
	h=x-gm-message-state:date:from:to:subject:message-id:references
	:mime-version:content-disposition:in-reply-to;
	bh=ymcQfDvsBbmh+xYoxLKxhm5LUO5p5705DQ5N/VrWmGI=;
	b=onzyPsIQHtyzBNFeoQU60Bv9ydOXmE2eDLMMLGRBSjnCw9TZrWqw2RYrL6O6HSuWz4
	OIjkfArVR6W7A5e55twv/SOnqjtzEzJbJmYDhxRbK6wwzoCsyJC/qhXsRLkKPJ5GMAg5
	2ee70JQeTQWsdUIkB1BysGlFF3UG5Y0fwuJrSUeW5tlfugODQXF2CDJ7r8QywgAECya5
	wpnaXwsLbv8yiLBDqDKwif61aShtiTIwOCu+IIP8a80A/Rw3xdhaihJoruR9n8uj+9VA
	/NuHDWSAFmmP0XP0R88SqPxky0TYm/pCaMiTxjmiEx7FY1hyndUVWdvyagwJP0B+RKWN
	v/MQ==
X-Gm-Message-State: AOAM532lUjpWfcgMUO9E3IgXBfv29qad8JcWl8UAMG4dZw2ltKgCVqH7
	eKWa7AIvQFcxB6KQWDwpMnn7zFQAM9I=
X-Google-Smtp-Source: ABdhPJysqg7WXN0AHHaTm2n97PAU3vgXHQqNxS7JTde7J7dTNLj9YfzWcjZcem52ClcNAMFW4jOlVw==
X-Received: by 2002:a5d:6343:0:b0:1e6:9825:101e with SMTP id
	b3-20020a5d6343000000b001e69825101emr15881331wrw.570.1645450082829;
	Mon, 21 Feb 2022 05:28:02 -0800 (PST)
Received: from waffles ([90.250.160.235]) by smtp.gmail.com with ESMTPSA id
	o35-20020a05600c512300b0037df3512e9dsm8089095wms.3.2022.02.21.05.28.02
	for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
	Mon, 21 Feb 2022 05:28:02 -0800 (PST)
Date: Mon, 21 Feb 2022 13:28:15 +0000
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: mutt or alpine
Message-ID: <YhOTb3lGvSAtzG4f@waffles>
References: <edc2d213-6272-de0-503b-5f3082f2ab95@panix.com>
	<13df69b9-b6e0-94a4-66b9-ba596636429d@panix.com>
MIME-Version: 1.0
In-Reply-To: <13df69b9-b6e0-94a4-66b9-ba596636429d@panix.com>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.85 on 10.11.54.10
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Disposition: inline
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

That's my main gripe with Alpine, the fact it loses track of IMAP
messages in gmail whereas Mutt doesn't. I've not found a way to fix that
> If anyone would like, I can share my .pinerc file so you can see what I
> have going with alpine.  One over-arching consideration especially with
> software and more generally with operating systems is length of support.
> With operating systems much email is sent on other lists whether to
> upgrade or not.  Very simply, everyone has a choice of upgrade or bail.
> In the case of bail, the move gets made to different operating systems.
> 
> 
> On Mon, 21 Feb 2022, Linux for blind general discussion wrote:
> 
> > There was and maybe still is a website called dotfiles.org.  It had
> > configuration files on it for various programs people found useful.  If
> > the website still exists the linux blindness lists might be able to
> > contribute to it but anyone who does so will help others in our community
> > by commenting their configuration files appropriately perhaps with a
> > #braille-friendly or #console-screen-reader-friendly or a
> > #graphical-screen-reader-friendly tag.  This way we have a chance to build
> > our capabilities and those that find these configuration files in the
> > future.
> >
> > _______________________________________________
> > Blinux-list mailing list
> > Blinux-list@redhat.com
> > https://listman.redhat.com/mailman/listinfo/blinux-list
> >
> >
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

