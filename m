Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id AE6FA4BB477
	for <lists+blinux-list@lfdr.de>; Fri, 18 Feb 2022 09:42:52 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1645173771;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=4U96zI+F1I852loRtb60QZhev3Un7zMprst44iOOs2E=;
	b=VkqY3u7740P6dHT4+QbKDAjigvQAYxbKvz6Ql0nwIPgMXuq+fEGspzltrFB4z5R5mEqXLi
	0CdBO07oMS5d+URdQsEo89ZYxGoGgW3FVqBUzbiI9V5WatMPT5mAjGprk4KGMqaNooMWUB
	zfKWxypk1pQnuaZTlWoZ94Sr3yWW/+0=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-540-jAMJ0evVMiW8G26BgzA8wA-1; Fri, 18 Feb 2022 03:42:50 -0500
X-MC-Unique: jAMJ0evVMiW8G26BgzA8wA-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.12])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id DEC1980573C;
	Fri, 18 Feb 2022 08:42:45 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id D71026C1A8;
	Fri, 18 Feb 2022 08:42:42 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 400AC1809CAB;
	Fri, 18 Feb 2022 08:42:34 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.rdu2.redhat.com
	[10.11.54.7])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 21I8gQaB017660 for <blinux-list@listman.util.phx.redhat.com>;
	Fri, 18 Feb 2022 03:42:26 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id F0B5C1427B21; Fri, 18 Feb 2022 08:42:25 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast06.extmail.prod.ext.rdu2.redhat.com [10.11.55.22])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id EC3551427B20
	for <blinux-list@redhat.com>; Fri, 18 Feb 2022 08:42:25 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [207.211.31.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
	bits)) (No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id CE144185A7A4
	for <blinux-list@redhat.com>; Fri, 18 Feb 2022 08:42:25 +0000 (UTC)
Received: from mail-wm1-f43.google.com (mail-wm1-f43.google.com
	[209.85.128.43]) by relay.mimecast.com with ESMTP with STARTTLS
	(version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-217-nQU9cd2HPZqZ1DnMnQRPQA-1; Fri, 18 Feb 2022 03:42:23 -0500
X-MC-Unique: nQU9cd2HPZqZ1DnMnQRPQA-1
Received: by mail-wm1-f43.google.com with SMTP id
	k127-20020a1ca185000000b0037bc4be8713so8056059wme.3
	for <blinux-list@redhat.com>; Fri, 18 Feb 2022 00:42:23 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20210112;
	h=x-gm-message-state:from:mime-version:subject:date:references:to
	:in-reply-to:message-id;
	bh=b7eYMKYCicrGGpfSZ0/m/UVGxVoYbYJFaYfCtgss8AE=;
	b=InAuS2eNX/2XzmiZ1ayQ+W1KNp4HmUxXG/Qw/lUDIK9f6GQWuHV/I7zP423T+cwlQF
	gEC5obdxwUWp1xtFGnbeBvqqDr62emvqgPZWgiylybPJSbig7ibBAdhppi6yLknH21Aq
	lVBWwgSvtE1ih4vc4UyjlrbIy4DRjQXLtxwbntzdmd4btkWtsMK3GWpswouYeq0U8g4B
	cElFddOj1ipC9bkwNnhOSX+tFiar1x0bqAjHN+CFbxtbWGwbypG/b5OqgSyTVW93F8gk
	TmGjQM8JlRh2IzoaPKcpfxGG26FDPQT0kLTZVa6pE9wKoM/T9i4EKxZ1AJQHCbXo7yg6
	CtAw==
X-Gm-Message-State: AOAM530wUnWBRf6pPUJOiLK600ht0uf8E8aIb6nKwZaru0jBHOE4HznJ
	8jKE0oWGKgmvidWN3jzgid5MpNqz9c/kdw==
X-Google-Smtp-Source: ABdhPJwCplJFaRikNC7w/IN1gskkgnMeus5uJCIzJLD7lEyI3TNGt9UmREwg40OTodKLraDg7u2nQQ==
X-Received: by 2002:a05:600c:4f46:b0:37c:8fba:4054 with SMTP id
	m6-20020a05600c4f4600b0037c8fba4054mr6035437wmq.101.1645173742128;
	Fri, 18 Feb 2022 00:42:22 -0800 (PST)
Received: from smtpclient.apple ([197.184.176.211])
	by smtp.gmail.com with ESMTPSA id o8sm3475972wmc.46.2022.02.18.00.42.20
	for <blinux-list@redhat.com>
	(version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
	Fri, 18 Feb 2022 00:42:21 -0800 (PST)
Mime-Version: 1.0 (Mac OS X Mail 15.0 \(3693.40.0.1.81\))
Subject: Re: Accessibility of installing Distros?
Date: Thu, 17 Feb 2022 20:12:42 +0200
References: <4ced451-6f9c-3d8c-3a80-ce15147d9f2b@brandt-slint.local>
	<bac75179-5e55-1893-4303-f56f3e04d148@gmail.com>
	<F9575516-3959-465F-B245-A179D7FA122C@gmail.com>
	<f97f5363-fc3c-cb1d-e323-ccea994d3a98@panix.com>
	<c54f8e3-b720-644-923-78399bfc5417@brandt-slint.local>
	<35d00f20-12b4-aa58-aa0a-a09a11df055f@gmail.com>
	<BFCF3BBE-9D66-4030-886C-FFCE149C4FCF@gmail.com>
	<1f539f84-0171-ff12-29df-3f2e2c7f2788@gmail.com>
	<efda5c9-a7d-44ad-2598-2db5bcb573@panix.com>
To: blinux-list@redhat.com
In-Reply-To: <efda5c9-a7d-44ad-2598-2db5bcb573@panix.com>
Message-Id: <05EF6B4E-84E9-4A4B-A0CD-CA20610A93D2@gmail.com>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.85 on 10.11.54.7
X-loop: blinux-list@redhat.com
X-Content-Filtered-By: Mailman/MimeDel 2.1.12
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.12
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

I could never get Jenux to work correctly on my setup.

Warm regards,

Brandt Steenkamp

Sent from my MacBook Air

Contact:

Phone: +27 (0)60 525 9181 <tel://+27605259181>

Email: brandt.steenkamp@gmail.com <mailto:brandt.steenkamp@gmail.com>

Twitter: @brandtsteenkamp <http://www.twitter.com/brandtsteenkamp>




> On 17 Feb 2022, at 17:43, Linux for blind general discussion <blinux-list@redhat.com> wrote:
> 
> Jenux might be a possibility if it can install archlinux on a system it
> will do that.  With odd hardware that's when things get interesting for
> most linux systems.  The killer with gentoo is you have to build your
> kernel with speech synthesizer support added and that takes a while.  You
> really have to have deep knowledge of your hardware otherwise you'll make
> bad choices in the kernel building and things won't work afterward on
> first boot.  The whole gentoo kernel build process could be massively
> simplified by having a switch with the kernel build software that tells
> the software that does the build to build with all hardware now enabled.
> Hardware that's not enabled won't be included but maybe that could be
> added and fixed later.  I never got enough into gentoo to know if that is
> possible.
> 
> 
> On Thu, 17 Feb 2022, Linux for blind general discussion wrote:
> 
>> Trisquel will install, whether you have the free wifi or not, in the latter
>> case, it just won't work, but your ethernet will.  Yep; Arch and Jentoo are
>> the tough ones.
>> 
>> 
>> Cheers,
>> 
>> 
>> Dave
>> 
>> 
>> 
>> On 2/17/22 04:36, Linux for blind general discussion wrote:
>>> Also, as I said, Trisquel also installed on this system without complaining
>>> at all.
>> 
>> _______________________________________________
>> Blinux-list mailing list
>> Blinux-list@redhat.com
>> https://listman.redhat.com/mailman/listinfo/blinux-list
>> 
> 
> 
> _______________________________________________
> Blinux-list mailing list
> Blinux-list@redhat.com
> https://listman.redhat.com/mailman/listinfo/blinux-list

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

