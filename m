Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTP id 95B263EBB52
	for <lists+blinux-list@lfdr.de>; Fri, 13 Aug 2021 19:21:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1628875318;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=/9KvW/JL0X5BZUN3eHucDpwjjATVUgX1SDFMK01Vplk=;
	b=bT/nCMOedgw4Cmil8Ft3RjBZNrYfOYtfEmdmAsUtzNw4UTVCoaUM5Qcmc854scuxqpSpbq
	qAg1Kao7f5gRU+pbBjVTsyYeQtFAR2AaqUcIKozLIuYAg03/cga6lnPP0jIoQX2Q8x2lb5
	mhThG9ZOMNOZY+ATBHLJIflXWB3a4V4=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-76-1Gus6p1qNqGksqD5Pm7xDw-1; Fri, 13 Aug 2021 13:21:56 -0400
X-MC-Unique: 1Gus6p1qNqGksqD5Pm7xDw-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com [10.5.11.23])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 51BBC87180C;
	Fri, 13 Aug 2021 17:21:53 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 7877219C44;
	Fri, 13 Aug 2021 17:21:52 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 17637181A2A8;
	Fri, 13 Aug 2021 17:21:51 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.rdu2.redhat.com
	[10.11.54.6])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 17DHLkwJ019724 for <blinux-list@listman.util.phx.redhat.com>;
	Fri, 13 Aug 2021 13:21:46 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 3B5F12051B17; Fri, 13 Aug 2021 17:21:46 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast06.extmail.prod.ext.rdu2.redhat.com [10.11.55.22])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 3689720B89FF
	for <blinux-list@redhat.com>; Fri, 13 Aug 2021 17:21:42 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[205.139.110.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id BFED6189FFF8
	for <blinux-list@redhat.com>; Fri, 13 Aug 2021 17:21:42 +0000 (UTC)
Received: from mail-lf1-f43.google.com (mail-lf1-f43.google.com
	[209.85.167.43]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-430-rg90GdjfMWKMIsCreT6NhA-1; Fri, 13 Aug 2021 13:21:40 -0400
X-MC-Unique: rg90GdjfMWKMIsCreT6NhA-1
Received: by mail-lf1-f43.google.com with SMTP id x27so21114280lfu.5
	for <blinux-list@redhat.com>; Fri, 13 Aug 2021 10:21:40 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:date:from:to:subject:message-id:references
	:mime-version:content-disposition:in-reply-to:user-agent;
	bh=LsgWoqOwrxp5onwHxz2xz1M1pr3x2hqNg5yLPLjXy80=;
	b=g+OiAJdVstv1GVbclVPVZPfzklz2YKtY7Yk5nXN06/+OQKXBWFnuSPJxoHP1tW8gAl
	BHHoYh6JG0txRRoZqlgyTG6/EJoOLnOck2rFc8nVxCTOoGq1GYda0mNiXh1OWN6xqHBq
	ha/bMRZTC6CfR1qsale5LKvDk8CvAAdW96uRX6YQ2hxzm7spCz2hkdd+sWqLOx/DX0Lm
	Bj5jCI28MZs/uL4YZkyAKtWkEVqyzSRhwCpYqHlkHXvZxFS2ljUSzTRp/mNoSvg13zv2
	45np3TrChfU7PR2KijdXeh5fohLML1z3O8zu2Yu/MpsimIxFACbia75Mz8SaBeufqSGe
	XRzw==
X-Gm-Message-State: AOAM531sTRXaR00R5tjigiJvWDboeZ+CaXtBt507RCtth+oMVBjixwrW
	uSMdes3zp3gbgxUyujEhWKlZexxQkTU=
X-Google-Smtp-Source: ABdhPJwhxrEhiFCCZmNXGY6RTujM7WZTok9fwo19v1VZELtyyXt4oEW9FAwORrA6HkBb+zBhi41LBg==
X-Received: by 2002:a05:6512:3990:: with SMTP id
	j16mr2609975lfu.280.1628875298819; 
	Fri, 13 Aug 2021 10:21:38 -0700 (PDT)
Received: from localhost ([91.77.167.245])
	by smtp.gmail.com with ESMTPSA id f11sm205520lfh.58.2021.08.13.10.21.38
	for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
	Fri, 13 Aug 2021 10:21:38 -0700 (PDT)
Date: Fri, 13 Aug 2021 20:21:37 +0300
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: Changing Keyboard layout in Gnome
Message-ID: <20210813172137.3pzxlmfrb4mtovy5@alex-pc>
References: <a551801c-079e-9515-0e20-ed4e552bbb96@gmail.com>
	<20210813163907.wdlet72ewhmutadf@alex-pc>
	<2b19d652-7205-ef77-f95f-5e74fd4246a6@gmail.com>
MIME-Version: 1.0
In-Reply-To: <2b19d652-7205-ef77-f95f-5e74fd4246a6@gmail.com>
User-Agent: NeoMutt/20210205
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
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Disposition: inline
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

On Fri, Aug 13, 2021 at 07:03:17PM +0200, Linux for blind general discussion wrote:
> Appologies,

no need to.

> I see you can set the keymap with *set-x11-keymap, however, it takes
> dvorak-l as invalid, which is really odd, since that is the keymap on my
> console.*
>

you need to provide layout, model and variant eg:
$ localectl set-x11-keymap us pc105 dvorak-l

> On 8/13/21 4:39 PM, Linux for blind general discussion wrote:
> > On Fri, Aug 13, 2021 at 03:54:11PM +0000, Linux for blind general discussion wrote:
> > > Hi all,
> > >
> > >
> > > I tried to install vanilla arch again, and was successful, but for some
> > > reason Mate didn't want to install. I am now making do with Gnome, not my
> > > favourite desktop, but anyway.
> > can you tell me how you tried to install mate. and what the error was?
> >
> > > I am one-handed, and have taught myself Left-Handed Dvorak. I need to change
> > > the layout in Gnome, otherwise I am as slow as can be. If anyone knows how
> > > to do this either in the GUI using orca, or even better, which config file I
> > > can go edit to do this, I would be really grateful.
> > hello Brandt. you can change keyboard layout with localectl[1] command.
> >
> > [1]: https://man.archlinux.org/man/localectl.1
> >
> > > Warm regards from a cold Johannesburg,
> > >
> > > Brandt Steenkamp
> > >
> > > Sent from my Arch powered ice heater!
> > --
> > Sincerely, Alexander
> >

--
Sincerely, Alexander

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

