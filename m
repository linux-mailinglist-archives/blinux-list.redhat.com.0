Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-1.mimecast.com (us-smtp-1.mimecast.com [207.211.31.81])
	by mail.lfdr.de (Postfix) with ESMTP id F27C62036F0
	for <lists+blinux-list@lfdr.de>; Mon, 22 Jun 2020 14:38:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1592829496;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=e5ecNgm2Dg0KgPzpEQLE+mWv6OyRPwvZI6z8Tu/kTk8=;
	b=ihkmHCBBtb5oJL+b4f+PyQjYPHVK8KpFHaV8gwbccOb/vFWflU5r6pW77wjVsxs2Nh7J+M
	lZSJpDgrpv3wJs1CpRqY++Ij9CKpH8YqV5nUjiBrJIJqJ16i6k/8JUunmW8aM3qPNnn2e8
	nrULNpEuJdnGE//JN/xWU24ClPd2nsc=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-417--CWI3G_vN6ifKbeQzKh9vQ-1; Mon, 22 Jun 2020 08:38:14 -0400
X-MC-Unique: -CWI3G_vN6ifKbeQzKh9vQ-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com [10.5.11.23])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id ED20E107ACF3;
	Mon, 22 Jun 2020 12:38:09 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 4B7C827CD6;
	Mon, 22 Jun 2020 12:38:09 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 2E8AE833C3;
	Mon, 22 Jun 2020 12:38:07 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.rdu2.redhat.com
	[10.11.54.6])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 05MCc1GX030769 for <blinux-list@listman.util.phx.redhat.com>;
	Mon, 22 Jun 2020 08:38:01 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 4DCAD2156A50; Mon, 22 Jun 2020 12:38:01 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast02.extmail.prod.ext.rdu2.redhat.com [10.11.55.18])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 498F02156A51
	for <blinux-list@redhat.com>; Mon, 22 Jun 2020 12:37:58 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[205.139.110.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id EF0528007B1
	for <blinux-list@redhat.com>; Mon, 22 Jun 2020 12:37:57 +0000 (UTC)
Received: from mail-ot1-f53.google.com (mail-ot1-f53.google.com
	[209.85.210.53]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-386-n_f6hYNFP-SXGYdu_3qxuw-1; Mon, 22 Jun 2020 08:37:27 -0400
X-MC-Unique: n_f6hYNFP-SXGYdu_3qxuw-1
Received: by mail-ot1-f53.google.com with SMTP id 64so1972444oti.5
	for <blinux-list@redhat.com>; Mon, 22 Jun 2020 05:37:26 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:content-transfer-encoding:mime-version
	:subject:date:references:to:in-reply-to:message-id;
	bh=MCeaVlC6ZGax4qIrKJPCVGs0US5jr2ZmDZGVS2+hTXg=;
	b=iQlE9eiuWS1ImyiiY45hV6JA+oLqlWFYqqizX90c/9mHpTJjsoFLZDMEzc/BeLTjrT
	e/e8Vr/z3CKKwvB9H9ChJ8dHQdTxCSEsl6XJrGzHv4DloC25+b51NibRYxv801UI4e1s
	r83f/GHjBSnuCZF9johmcAe777LSJ3f0GSvjYpXpZYYssnaV5oxEdMiH1gq1EMYmj0eu
	8+5MzZoWvr16CRcUYnca1Cc/+ls9or1W8c99iRq8C7B3nVhpdYkW4kYR6h2xIhK4YS8D
	nHNOQMv02vAMV+lbOOy3jg6HKaUyNihRJgsDoGLCFTZwOeU7WI/wjPNCr9vf76+p9G3I
	aizQ==
X-Gm-Message-State: AOAM531+xGyy0Zw+sYmrJPeadUs0H0Ncn6JSumT3ylcWyLOZkV54dJzs
	Ym4n1UWTHuFTfR/kXfi3OTy/Fa4fjtA=
X-Google-Smtp-Source: ABdhPJyXGH/4QmEh4ZSsV3QFb2Cc0tQmyuUcPawVFCY7d+DDyy3cV2Lhy9p1EnU5YaLstjRzeJ06fw==
X-Received: by 2002:a9d:7dd3:: with SMTP id k19mr14078098otn.278.1592829445825;
	Mon, 22 Jun 2020 05:37:25 -0700 (PDT)
Received: from ?IPv6:2601:3c2:8200:9360:146e:afd2:98ee:6d9b?
	([2601:3c2:8200:9360:146e:afd2:98ee:6d9b])
	by smtp.gmail.com with ESMTPSA id
	t22sm3270663oth.53.2020.06.22.05.37.24 for <blinux-list@redhat.com>
	(version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
	Mon, 22 Jun 2020 05:37:25 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 11.5 \(3445.9.5\))
Subject: Re: Prospects for an accessible and open version of Android?
Date: Mon, 22 Jun 2020 07:37:23 -0500
References: <DF019091-ECBE-48AC-8B3F-A85FCB13F98F@gmail.com>
	<68F8B348-C5F3-4E40-9731-CB928C1E1786@cfcl.com>
	<3FF9DFF0-EBA2-41FA-AF6D-41A15F7D96B3@gmail.com>
	<1E64643A-5D91-45E2-A546-970F7E14EF28@cfcl.com>
	<alpine.DEB.2.22.394.2006141355001.3348482@chime>
	<eb770c6c-c8e6-84d6-973c-e3afc118ca1b@slint.fr>
	<20200615100242.GC2180@rednote.net>
	<CABKqQvG5Nv14kAK-uipF1d4-mXqkea9Uk_0E8e+qbNGLN3XV=g@mail.gmail.com>
	<20200616065933.GF2180@rednote.net>
	<843663A4-EEEA-4DB7-A1CB-56C6A65E41BC@cfcl.com>
	<20200621074757.GA2690@rednote.net>
To: Linux for blind general discussion <blinux-list@redhat.com>
In-Reply-To: <20200621074757.GA2690@rednote.net>
Message-Id: <59FA6586-BB9F-4405-9BDC-41565123A17E@gmail.com>
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.6
X-MIME-Autoconverted: from quoted-printable to 8bit by
	lists01.pubmisc.prod.ext.phx2.redhat.com id 05MCc1GX030769
X-loop: blinux-list@redhat.com
From: Linux for blind general discussion <blinux-list@redhat.com>
X-BeenThere: blinux-list@redhat.com
X-Mailman-Version: 2.1.12
Precedence: junk
Reply-To: blinux-list@redhat.com
List-Id: Linux for blind general discussion <blinux-list.redhat.com>
List-Unsubscribe: <https://www.redhat.com/mailman/options/blinux-list>,
	<mailto:blinux-list-request@redhat.com?subject=unsubscribe>
List-Archive: <https://www.redhat.com/archives/blinux-list>
List-Post: <mailto:blinux-list@redhat.com>
List-Help: <mailto:blinux-list-request@redhat.com?subject=help>
List-Subscribe: <https://www.redhat.com/mailman/listinfo/blinux-list>,
	<mailto:blinux-list-request@redhat.com?subject=subscribe>
Sender: blinux-list-bounces@redhat.com
Errors-To: blinux-list-bounces@redhat.com
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

How did you decide on System 76 as and not some other machine and replacing the operating system of one bought from somewhere else?
Is it the idea of a company that deals with linux all the time?

> On Jun 21, 2020, at 2:47 AM, Linux for blind general discussion <blinux-list@redhat.com> wrote:
> 
> My apology for not keeping the initial question in mind.
> 
> However, I wonder if asking an Android phone to serve this function is
> more an academic exercise than a practical one at this point?
> 
> I say this because I'm just now in the process of buying my next
> (natively) Linux computer, and it's quite small. It comes pretty close
> to the size of an Android phone. So, I suspect it might be the easier
> path of practicality is the point.
> 
> I'm talking about the MeerKat 5 (small) from System76.com (which you can
> get with up to a 10th generation Intel I7, 64Gb RAM, and 2Tb NVME
> drive), all in a box about 4.5 inches by 4.5 inches by 1.5 inches tall.
> The base price is very competitive with a new Android device, imo, with
> far more going for it when portable Linux is the goal.
> 
> Which is not to put down academic exercies aimed at hacking Android into
> something usable. I just think the two questions are worth treating
> separately.
> 
> Best,
> 
> Janina
> 
> Linux for blind general discussion writes:
>> I think Amanda is trying to get back to the question I originally posted.
>> That is, she wants to set up a cell phone with a (mostly) FOSS Android variant,
>> in order to have an accessible, extensible, and extremely portable computer
>> that is under her (rather than Google's) control.
>> 
>> Although she might use the Android UI for some tasks, the goal is to have a
>> command-line interface and a set of blind-friendly commands that she can enter
>> via Bluetooth, SSH, etc.  Longer term, entering commands by braille or voice
>> might allow her to dispense with a separate keyboard.
>> 
>> As my posting indicated, there are several candidates for a base OS, but it's
>> hard to tell which one(s) would be a good fit for this use case.  Suggestions?
>> 
>> - Rich Morin
>> 
>>> On Jun 15, 2020, at 23:59, Linux for blind general discussion <blinux-list@redhat.com> wrote:
>>> 
>>> I don't understand your question. An Android device is a Linux device.
>>> It runs on linux kernels, implements several Linux libraries. Its audio
>>> subsystem is driven by alsa.
>>> 
>>> The user doesn't see this, of course, because all of that is under the
>>> hood, so to speak. The user interface on Android is written in Java, so
>>> bears no resemblance to the graphical desktop one might see on a typical
>>> Linux computer, typically GNOME or KDE.
>>> 
>>> So, what are you asking? Please say more.
>> 
>> 
>> _______________________________________________
>> Blinux-list mailing list
>> Blinux-list@redhat.com
>> https://www.redhat.com/mailman/listinfo/blinux-list
> 
> -- 
> 
> Janina Sajka
> 
> Linux Foundation Fellow
> Executive Chair, Accessibility Workgroup:	http://a11y.org
> 
> The World Wide Web Consortium (W3C), Web Accessibility Initiative (WAI)
> Chair, Accessible Platform Architectures	http://www.w3.org/wai/apa
> 
> _______________________________________________
> Blinux-list mailing list
> Blinux-list@redhat.com
> https://www.redhat.com/mailman/listinfo/blinux-list
> 


_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://www.redhat.com/mailman/listinfo/blinux-list

