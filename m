Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com [207.211.31.120])
	by mail.lfdr.de (Postfix) with ESMTP id 28D27202B8B
	for <lists+blinux-list@lfdr.de>; Sun, 21 Jun 2020 18:26:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1592756792;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=aUEny8e44FUf4Bp2ZHjkE7igIubT0jwL5SzQymAlE50=;
	b=iaK8VxG88KqmZRoeKfsm3HVGta6wh3YCz4IrzxQBoswfFKyIWnLXhy5IB50gLlXQftN9Ze
	oG3Py6o2f1dsYoi5tQiRVNRp8a2iJ2hoemlNgPb5sxp4KITAUHqWzImu95gWNgnTdeKpne
	DLSouzEP4b9amiY9Td8Ti8Zu1plOC8k=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-337-7pN2p3jfO7WHnpOaLlXmiA-1; Sun, 21 Jun 2020 12:26:30 -0400
X-MC-Unique: 7pN2p3jfO7WHnpOaLlXmiA-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com [10.5.11.13])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 5523DEC1A0;
	Sun, 21 Jun 2020 16:26:26 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id E15187C1F9;
	Sun, 21 Jun 2020 16:26:25 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 596ED833A4;
	Sun, 21 Jun 2020 16:26:24 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.rdu2.redhat.com
	[10.11.54.5])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 05LGQJfu019952 for <blinux-list@listman.util.phx.redhat.com>;
	Sun, 21 Jun 2020 12:26:19 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 0BA8C33251; Sun, 21 Jun 2020 16:26:19 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast03.extmail.prod.ext.rdu2.redhat.com [10.11.55.19])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 06D6533250
	for <blinux-list@redhat.com>; Sun, 21 Jun 2020 16:26:17 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[207.211.31.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 11FC2811E7A
	for <blinux-list@redhat.com>; Sun, 21 Jun 2020 16:26:17 +0000 (UTC)
Received: from mail-oi1-f179.google.com (mail-oi1-f179.google.com
	[209.85.167.179]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-215-Hcw5-6a3P9Wc25N04LwjoQ-1; Sun, 21 Jun 2020 12:26:14 -0400
X-MC-Unique: Hcw5-6a3P9Wc25N04LwjoQ-1
Received: by mail-oi1-f179.google.com with SMTP id x202so13447000oix.11
	for <blinux-list@redhat.com>; Sun, 21 Jun 2020 09:26:14 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to;
	bh=nWFaWHsm26cfr2lWhayxSL9LsNk85ubM+8aDQnJEXhs=;
	b=XxyDGo7oCgVo8I6soMOiy4LGnijD7z3uWNUTsNwQGsPZCpFNmikcrIXVH0YvOAJoTP
	cX1BboKKoDvceEC8BRTicO2yP9M5xW5we4xuXXSA7YWhTRHFqO9GgpgJN03sYSVSBiLR
	M0HndxHtwu1FmP9DEWgh103GO5hwH3/QVcY2UPSJMdrFhwcK2aGQQyzWVf/CXMd4YG+e
	8VtJ8ANOEZTQS+atMUqnqT2a0E4ZcfTKf70khxAng6bbMZBdX14l/WPta33Nq1YyI60d
	k+2+ZUhvQdhl55c04nOHfVjtF1Q0HRqYUC2AqspL8294Kzrh5aWSx3Sgwz5Qb5M1JrPc
	23xw==
X-Gm-Message-State: AOAM530WcDoB7vIjrZeo59+9UxJTVkClIsu9+ZuBC7Aewq87lLWQtVIM
	5kRAjMSrhpVUrUbm+B+lkT/MHhSNcU4tT13Bjb00pPRg
X-Google-Smtp-Source: ABdhPJwvxQu9En+iOn4+x1TpoPchuJt18abjB8aLebKXBU9n9lDB+5Nmgwp3zGSO/lmeK+I0dDSms3WFu9R7xQl+YRM=
X-Received: by 2002:aca:ba0a:: with SMTP id k10mr9362946oif.13.1592756773875; 
	Sun, 21 Jun 2020 09:26:13 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a9d:12d6:0:0:0:0:0 with HTTP; Sun, 21 Jun 2020 09:26:13
	-0700 (PDT)
In-Reply-To: <9A1F6B85-D0FF-4CC3-9DB1-8585F92EB74E@cfcl.com>
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
Date: Sun, 21 Jun 2020 11:26:13 -0500
Message-ID: <CABKqQvH5+KRLb5+p5Y-w45P4HPfcyrf1UeBxKFZDOjn=UedtqA@mail.gmail.com>
Subject: Re: Prospects for an accessible and open version of Android?
To: blinux-list@redhat.com
X-Scanned-By: MIMEDefang 2.79 on 10.11.54.5
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

I would also like a phone running an OS that's not Android or iOS.
They're both currently pushing some updates that I don't think I want.

On 6/21/20, Linux for blind general discussion <blinux-list@redhat.com> wrote:
>> On Jun 21, 2020, at 00:47, (Janina) wrote:
>>
>> ... I wonder if asking an Android phone to serve this function is
>> more an academic exercise than a practical one at this point?
>>
>> I say this because I'm just now in the process of buying my next
>> (natively) Linux computer, and it's quite small. It comes pretty close
>> to the size of an Android phone. So, I suspect it might be the easier
>> path of practicality is the point. ...
>
> There are a number of small systems showing up on the market these days.
> I think this is great, but it doesn't really address the use case I have
> in mind (a pocket-sized computer with instant-on capability).  The issues
> include integration, cost, size, weight, and instant-on capacity.
>
> The Intel-based systems tend to be pricier than the RasPi ones, but all
> of them cost at least a few hundred dollars.  Adding an internal UPS is
> going to raise that by at least another hundred dollars.  Also, someone
> will have to engineer and fabricate the add-on UPS board, battery, etc.
>
> A retired Android cell phone, in contrast, will already have a built-in
> UPS and can be found for well under $100.  For a poor (e.g., third-world)
> blind user, these may be critical issues.
>
> Size and weight are also important.  The mini PC systems fit nicely on a
> desktop, but none of them will fit into a normal pocket.  Carrying one
> around would thus require something like a backpack.  Some users would be
> OK with this, but I think most would not.
>
> So, this is a serious practical question, rather than an academic exercise.
> If we could find a way to put usable portable computers into the hands of
> blind users around the world, that would be a major contribution.  Also, I
> think the effort might lead to useful enhancements in at least some of the
> mainstream Android distributions.
>
> - Rich Morin
>
> _______________________________________________
> Blinux-list mailing list
> Blinux-list@redhat.com
> https://www.redhat.com/mailman/listinfo/blinux-list
>
>

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://www.redhat.com/mailman/listinfo/blinux-list

