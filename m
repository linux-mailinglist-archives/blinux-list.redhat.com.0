Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [216.205.24.124])
	by mail.lfdr.de (Postfix) with ESMTP id 8102A3ED9CF
	for <lists+blinux-list@lfdr.de>; Mon, 16 Aug 2021 17:24:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1629127464;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=6mGFGWd4C7bh+BHKjJMKtfdvtNnLuXl9MBYBnT8VQ90=;
	b=brPFQHNmyIqg7rxFwq5EVhyEEkl2ns/c9avYjBV2pGGRbaqX0OC89VjgTYSAw9Yb/G3mxL
	beL6qMtXGGJNtu9KmRzlVQUoIXG8CveFsHA3vf5kNsF913OwLZIWR0sa6rhiAc394bVWKh
	gmOeATs633SwkgpyIwcmxp6B8sR05aY=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-281-Ce9nPJH_P1qlwEMmZJ_3xA-1; Mon, 16 Aug 2021 11:24:23 -0400
X-MC-Unique: Ce9nPJH_P1qlwEMmZJ_3xA-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com [10.5.11.14])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 310051009615;
	Mon, 16 Aug 2021 15:24:19 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 187E25DA2D;
	Mon, 16 Aug 2021 15:24:19 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id E3DD84A700;
	Mon, 16 Aug 2021 15:24:18 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.rdu2.redhat.com
	[10.11.54.6])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 17GFNHZH020304 for <blinux-list@listman.util.phx.redhat.com>;
	Mon, 16 Aug 2021 11:23:17 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 7B6F92156734; Mon, 16 Aug 2021 15:23:17 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast06.extmail.prod.ext.rdu2.redhat.com [10.11.55.22])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 7392B2156739
	for <blinux-list@redhat.com>; Mon, 16 Aug 2021 15:23:14 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [207.211.31.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
	bits)) (No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id E018118A01A0
	for <blinux-list@redhat.com>; Mon, 16 Aug 2021 15:23:13 +0000 (UTC)
Received: from mail-qk1-f172.google.com (mail-qk1-f172.google.com
	[209.85.222.172]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-125-PCcpHcCtOMS7FdoD-SHLsg-1; Mon, 16 Aug 2021 11:23:11 -0400
X-MC-Unique: PCcpHcCtOMS7FdoD-SHLsg-1
Received: by mail-qk1-f172.google.com with SMTP id t190so6076462qke.7
	for <blinux-list@redhat.com>; Mon, 16 Aug 2021 08:23:10 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to;
	bh=3eoNds2jTfgWBYrmAkPzuZHyrq02UUmt+cV6PtzM8ps=;
	b=Mnw52Nl6p69SUj2+kj9W4NSJyFup+90QtadA0S4fUXeRmgosPqjw27W2Qnz8Wy/K0y
	TgEpP9qBWHzLLz1yWmu7ckjHkHVKe7rZrWkf1H9GExUrH+augeUPO0EV1ynfogh07hnM
	kHAIX44UG5wC5fkF6FAnqUyvI5udGFtVN6B+uL9c+5RJ41fd5mT5+eD3pbt+ow9kfatL
	DwmYfiajtc7oB9yIawnHOHqNLDjOH4ccKhUpAbZpkkJxoqL0fg1IwcFEaMAsItxcXoTE
	p0OE1TAYFisG8V3KAhfRLL18qR3bW7I7CF+O9oIQadGP68Q8R9Ti7YB1KNbQYddZU/YW
	+KGg==
X-Gm-Message-State: AOAM530YlM7gbQSLrpp/Rpt2VDbLnYA/N5IDhZXT9EDsxA56qYSfFzIE
	NhvWLC7qj1Z2Xy896xxuXRsrhKJPUYeaouCdT0zNy1Ab868=
X-Google-Smtp-Source: ABdhPJzL/o09ch1wNBdvTb2hhS5EZDRJLYG/meej5iU/ab4LtDJ8YSl3XYDREKgZhm39sCJabJ7cX2BbvAj+Kd7KPA8=
X-Received: by 2002:a37:803:: with SMTP id 3mr8350652qki.127.1629127390425;
	Mon, 16 Aug 2021 08:23:10 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a05:6214:b07:0:0:0:0 with HTTP; Mon, 16 Aug 2021 08:23:09
	-0700 (PDT)
In-Reply-To: <CAO2sX30xaswpT1vxCzem_jxckXVdRBW38NGuJMc9ODsmYMrsUw@mail.gmail.com>
References: <17f6f79e-2927-3ad4-7915-42053461d773@protonmail.com>
	<CAO2sX30xaswpT1vxCzem_jxckXVdRBW38NGuJMc9ODsmYMrsUw@mail.gmail.com>
Date: Mon, 16 Aug 2021 15:23:09 +0000
Message-ID: <CAO2sX309cRD-+61Q3sQ3zwv1KBqhcOaHfb1A4OBFjZxmry8kzQ@mail.gmail.com>
Subject: Re: Anyone else experiencing Firefox 91 crashes?
To: blinux-list@redhat.com
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

I recently tried the 32-bit version of Firefox-ESR 91.0 from Debian
Experimental and had the same issue... everything was crashing so
often I downgraded to Firefox-ESR 78.13 from Debian Unstable within an
hour... thankfully, ESR 91 did let me export my bookmarks to html so I
didn't lose them with the downgrade forcing me to create a new Firefox
profile.

Here's hoping this gets fixed before the 91 branch of Firefox-ESR
makes it's way to Debian Testing/Unstable.

On 8/16/21, Jeffery Mewtamer <mewtamer@gmail.com> wrote:
>
>

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

