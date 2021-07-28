Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTP id 7E9EF3D93F0
	for <lists+blinux-list@lfdr.de>; Wed, 28 Jul 2021 19:06:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1627491970;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=GrmuVI2zr4DcAOh/OW7Mj/EVhYFf/L4dzuOlj/RAIN0=;
	b=e1f7ohCkSFvJC8rPAar32trzSrQpzbUHxeW6t436ldHfCiXerUq6tVy2IDvgHdySGjTeNX
	M31USqyYKZ6FMNJp15ydYJXlwBs+0D8TIuMAywTjegbLPugbQ7gAHoy080RZ1KQ/R0i9YA
	+RzsG3VsDXAveOS8DJYx4iGHwFNgfEE=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-172-YdkEH6JlO7GnrAN-jfKEhw-1; Wed, 28 Jul 2021 13:06:09 -0400
X-MC-Unique: YdkEH6JlO7GnrAN-jfKEhw-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com [10.5.11.23])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 26C3C64140;
	Wed, 28 Jul 2021 17:06:05 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 07D4E19C66;
	Wed, 28 Jul 2021 17:06:03 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 28894180B7A2;
	Wed, 28 Jul 2021 17:05:59 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.rdu2.redhat.com
	[10.11.54.3])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 16SGruNI029740 for <blinux-list@listman.util.phx.redhat.com>;
	Wed, 28 Jul 2021 12:53:56 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 0B40610CD678; Wed, 28 Jul 2021 16:53:56 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast03.extmail.prod.ext.rdu2.redhat.com [10.11.55.19])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 05A611031F27
	for <blinux-list@redhat.com>; Wed, 28 Jul 2021 16:53:52 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [207.211.31.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
	bits)) (No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 2BF2880066D
	for <blinux-list@redhat.com>; Wed, 28 Jul 2021 16:53:52 +0000 (UTC)
Received: from mail-wr1-f48.google.com (mail-wr1-f48.google.com
	[209.85.221.48]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-467-ANfpEYMrP3aOoAtDlHGpvg-1; Wed, 28 Jul 2021 12:53:50 -0400
X-MC-Unique: ANfpEYMrP3aOoAtDlHGpvg-1
Received: by mail-wr1-f48.google.com with SMTP id g15so3400870wrd.3
	for <blinux-list@redhat.com>; Wed, 28 Jul 2021 09:53:49 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:references:in-reply-to:subject:date
	:message-id:mime-version:content-transfer-encoding:content-language
	:thread-index;
	bh=xEa4UiL2v6/YON3GZHuVUfkvMoubXmNp+uMGTAZWoEg=;
	b=bNEV2vaxqrSV0Yo+5pVsqEldh9vywAiYK5JwNhz0727/jaewQXp4ETrSNtFIvNODbB
	KhByt1dcIcwdkvK8fHW6S/emUbVN1spBqXNHH81n/xPtNCx4uD3goblZfyvDwZmduEU2
	SHEFUByKqL4IN8YS93wIAMb9DafjdHOSLGngFuVcOWOcfNX5K3TOQGcnzhkG4UQU0HPg
	3LKGlAOYJDwwgCImzdXqKlvGLR0D7yX61h0852jRzigMZDJRvrHjjciAB0Wi7wyrIKOj
	mxexJ6TZLF/HbMCFWmft4vpVMeKr3jQHgkfXFiCEgtEYKNzLqhNCawh6X17JFO4Olgtx
	eMdA==
X-Gm-Message-State: AOAM531YLqwwrN0iubDX4YxMWz8r5yIEcnTPV+GN8mWfKTi1d2brYs6S
	zBSoW5IXLmL6wI1vD/C8TR1yeD6dQKKQXw==
X-Google-Smtp-Source: ABdhPJzDL3SU68lyYRPoH5DF9aGIpLxQBZKxNF+puBp6Dc3NaPvMMEos0x2zf2UctY7em2CnXLRh6A==
X-Received: by 2002:adf:f885:: with SMTP id u5mr380655wrp.84.1627491228759;
	Wed, 28 Jul 2021 09:53:48 -0700 (PDT)
Received: from LAPTOP57VCMCF1 ([197.185.105.92])
	by smtp.gmail.com with ESMTPSA id u11sm356893wrp.26.2021.07.28.09.53.46
	for <blinux-list@redhat.com>
	(version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
	Wed, 28 Jul 2021 09:53:48 -0700 (PDT)
To: <blinux-list@redhat.com>
References: <b3f2a77d-40b6-1404-33ba-21580c29f6dc@gmail.com>	<CAD_4ddSaTQ3FGNw8RaizfH4_Tau=zZ2w_UUnSXu2m8bazCa54Q@mail.gmail.com>
	<alpine.NEB.2.23.451.2107281141570.22533@panix1.panix.com>
In-Reply-To: <alpine.NEB.2.23.451.2107281141570.22533@panix1.panix.com>
Subject: RE: Open Suse install?
Date: Wed, 28 Jul 2021 18:53:45 +0200
Message-ID: <016e01d783d1$22943220$67bc9660$@gmail.com>
MIME-Version: 1.0
Thread-Index: AQIkuu34ORv8cGbhztWGMmBUIVhpyALsvvD6AWn9tFmqm3ZocA==
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
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-za
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Hi,

Thank you for that.

-----Original Message-----
From: blinux-list-bounces@redhat.com <blinux-list-bounces@redhat.com> On
Behalf Of Linux for blind general discussion
Sent: Wednesday, 28 July 2021 17:45
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: Open Suse install?

When you boot tumbleweed, listen for hard drive action if installing on real
hardware.  When all of this stops, control-alt-s will slowly start orca up.
Once done turn assistive technology on to avoid doing this again.  That will
allow you to install tumbleweed.  Once tumbleweed is installed, use
super-alt-s to get orca up and then turn on assistive technology to keep
accessibility alive.


On Wed, 28 Jul 2021, Linux for blind general discussion wrote:

> Hello there,
>
> As far as I know, it is not.
> I cannot tell you more however, because I heard it myself from another 
> source.
> Best regards.
> Francisco.
>
> On Wed, Jul 28, 2021 at 10:36 AM Linux for blind general discussion < 
> blinux-list@redhat.com> wrote:
>
> > Hi all,
> >
> >
> > I would like to have a play with Open Suse tumbleweed. I would like 
> > to know if the installer is accessible, and if so, how do you get it to
talk.
> >
> > --
> > Warm regards,
> >
> > Brandt Steenkamp
> >
> > Sent using Thunderbird from Slint
> >
> > _______________________________________________
> > Blinux-list mailing list
> > Blinux-list@redhat.com
> > https://listman.redhat.com/mailman/listinfo/blinux-list
> >
> >
> _______________________________________________
> Blinux-list mailing list
> Blinux-list@redhat.com
> https://listman.redhat.com/mailman/listinfo/blinux-list
>
>

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list


_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

