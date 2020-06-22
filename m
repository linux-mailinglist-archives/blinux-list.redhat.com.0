Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [207.211.31.81])
	by mail.lfdr.de (Postfix) with ESMTP id 028CF2039D1
	for <lists+blinux-list@lfdr.de>; Mon, 22 Jun 2020 16:44:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1592837096;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=pS3SYB53O5eXW5j5LvDvcOpMnyGVVBnvjuKmwKLtZz8=;
	b=gn8PsXNtYreNRQkH7SkfrT+ox6hTA3Q9JteGKPzOlaNDr1zpefi2IkRT/6rTlDAMYYrFRb
	DUnVb1dNYUP4CJDgDRxzL3qjrFRerE04ir+7D3HIbfknYpksr2Jv0ntjHe00GR6MgoKDFB
	k1IdKNRI7ZFRO70MeicUNVPEP8kKzU4=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-263-TlrN1t2nMrOA9fTjQpqcfA-1; Mon, 22 Jun 2020 10:44:54 -0400
X-MC-Unique: TlrN1t2nMrOA9fTjQpqcfA-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com [10.5.11.16])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 144BA107ACF4;
	Mon, 22 Jun 2020 14:44:50 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id C8D825C221;
	Mon, 22 Jun 2020 14:44:49 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 3AEE0833A4;
	Mon, 22 Jun 2020 14:44:49 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.rdu2.redhat.com
	[10.11.54.3])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 05MEikQW014294 for <blinux-list@listman.util.phx.redhat.com>;
	Mon, 22 Jun 2020 10:44:46 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id EDEFE10F1CA5; Mon, 22 Jun 2020 14:44:45 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast01.extmail.prod.ext.rdu2.redhat.com [10.11.55.17])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id DF8B210F1CBE
	for <blinux-list@redhat.com>; Mon, 22 Jun 2020 14:44:34 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[205.139.110.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 54805857D04
	for <blinux-list@redhat.com>; Mon, 22 Jun 2020 14:44:28 +0000 (UTC)
Received: from mail-ot1-f51.google.com (mail-ot1-f51.google.com
	[209.85.210.51]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-338-ityGc1xPP9-iCT55vyahwA-1; Mon, 22 Jun 2020 10:44:25 -0400
X-MC-Unique: ityGc1xPP9-iCT55vyahwA-1
Received: by mail-ot1-f51.google.com with SMTP id t6so13217677otk.9
	for <blinux-list@redhat.com>; Mon, 22 Jun 2020 07:44:25 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:content-transfer-encoding:mime-version
	:subject:date:references:to:in-reply-to:message-id;
	bh=BnKiQ/jR4+TRV8IecW7msmOjF9Knrx+5oa1B3ae5p7w=;
	b=mKjm1tfoGsY30fCWm8ZFkoEGuoqSs4Y4FV7bum1NnqiLsRyAt85ICJAgTgyOpvSCut
	KSdQPe4ivGlYkuuY4DtlyGExhLMjPdGGjxPBvaMdRBWd8k61aTRXiCzpoBVXBo9XFENW
	rdW6dPrysQe6q+obbMAX5DWyBfx1xJLbDNs5OhGpjg21ESs5FU1MEwKh8el9ZrTFJCH9
	LJK4cTEdF7fR6YAVI3scbhlyG/obPHOayTnKNYXbhW+dBO1cR5bPRal1WbOFTzLwSykx
	yI1iFtv0BGNa4m90RC6WVj6vpb/pugkZS6QyC7uX1Mg/S/WfyZfn6IJQbIZBJp/Az4GC
	gbZA==
X-Gm-Message-State: AOAM530KvOSUGC1DiyrQUwSR6rsETcWwh3Ke0YGJYTr4urS8Sy0nDTyx
	ADn+6OnGf6cAgRzSigXeZZPtGYwzc04=
X-Google-Smtp-Source: ABdhPJzCevfF2fxbZQ+xh+SIN5CxvStvufOseI2rK1EDBbSxbEbT2jNmADoFpbvggh+WOQ6w+CmvGw==
X-Received: by 2002:a9d:822:: with SMTP id 31mr13559146oty.137.1592837064586; 
	Mon, 22 Jun 2020 07:44:24 -0700 (PDT)
Received: from ?IPv6:2601:3c2:8200:9360:146e:afd2:98ee:6d9b?
	([2601:3c2:8200:9360:146e:afd2:98ee:6d9b])
	by smtp.gmail.com with ESMTPSA id r7sm3428667oor.9.2020.06.22.07.44.23
	for <blinux-list@redhat.com>
	(version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
	Mon, 22 Jun 2020 07:44:23 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 11.5 \(3445.9.5\))
Subject: Re: Prospects for an accessible and open version of Android?
Date: Mon, 22 Jun 2020 09:44:22 -0500
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
	<9A1F6B85-D0FF-4CC3-9DB1-8585F92EB74E@cfcl.com>
	<F216610A-50CE-4BE6-A7B5-C1C5DA236210@gmail.com>
	<020601d64807$b2b22a80$18167f80$@gmail.com>
	<D32CF46C-F003-4E5C-B518-B78451F8909A@gmail.com>
	<84E95FBD-9BD7-4D68-A1AB-4C63B4526038@pipkrokodil.se>
	<EDF1563A-2FF3-4966-92C9-0D56C440E445@gmail.com>
	<0BA842DF-6DEA-4352-A635-B447ECB597E2@gmail.com>
	<CAO2sX31aVwswLgsx=JjjjLGw8waC+hvBBVag60UBB5JbSFRYnQ@mail.gmail.com>
To: blinux-list@redhat.com
In-Reply-To: <CAO2sX31aVwswLgsx=JjjjLGw8waC+hvBBVag60UBB5JbSFRYnQ@mail.gmail.com>
Message-Id: <2A1D7016-E760-46B1-BB5E-3A7C56B8BC88@gmail.com>
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.3
X-MIME-Autoconverted: from quoted-printable to 8bit by
	lists01.pubmisc.prod.ext.phx2.redhat.com id 05MEikQW014294
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

What is s b l?
I have used speakup, and have heard of fen rir, sorry for bad spelling.

> On Jun 22, 2020, at 8:54 AM, Linux for blind general discussion <blinux-list@redhat.com> wrote:
> 
> No piece of sufficiently complex software is perfect(SBL is my
> favorite console screen reader and I wish it was packaged for as many
> distros as espeakup and Fenrir are, but it does have this annoying
> habit that when programs have an updating progress statement at the
> bottom of their output, SBL starts over reading the line whenever it
> updates instead of finishing the read it started, and where this
> progress moves quickly(e.g. the program executing on many small
> inputs), it often never gets to reading the important part of the
> progress statement), and often, which flaws one is willing to put up
> with are just as important as which features one values most when
> selecting between two pieces of software that do similar jobs.
> 
> That said, I'm curious what the person who said "issues is an overused
> word" or something to that effect meant, especially with how they
> agreed with the person they were quoting just replacing "issues" with
> "problems". I realize this is probably an argument of definitions, but
> I've always thought of these words as synonyms and unlike words like
> "affordable", "inexpensive", and "cheap" where there is the same
> denotation but quite different connotation, I consider "problem" and
> "issue" to be the same in both denotation and connotation.
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

