Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
	by mail.lfdr.de (Postfix) with ESMTPS id A4F869B98B
	for <lists+blinux-list@lfdr.de>; Sat, 24 Aug 2019 02:26:16 +0200 (CEST)
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com [10.5.11.15])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mx1.redhat.com (Postfix) with ESMTPS id 4350718C426C;
	Sat, 24 Aug 2019 00:26:14 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id E8C625D6B2;
	Sat, 24 Aug 2019 00:26:12 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id DC4C03CBF;
	Sat, 24 Aug 2019 00:26:09 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com
	[10.5.11.12])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id x7O0Q15X020231 for <blinux-list@listman.util.phx.redhat.com>;
	Fri, 23 Aug 2019 20:26:01 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 0787860F86; Sat, 24 Aug 2019 00:26:01 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mx1.redhat.com (ext-mx26.extmail.prod.ext.phx2.redhat.com
	[10.5.110.67])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 0131884F3
	for <blinux-list@redhat.com>; Sat, 24 Aug 2019 00:25:58 +0000 (UTC)
Received: from mail-yb1-f173.google.com (mail-yb1-f173.google.com
	[209.85.219.173])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mx1.redhat.com (Postfix) with ESMTPS id B6E9A8980EE
	for <blinux-list@redhat.com>; Sat, 24 Aug 2019 00:25:56 +0000 (UTC)
Received: by mail-yb1-f173.google.com with SMTP id m9so4733821ybm.3
	for <blinux-list@redhat.com>; Fri, 23 Aug 2019 17:25:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=date:user-agent:in-reply-to:references:mime-version
	:content-transfer-encoding:subject:to:from:message-id;
	bh=vmgkkEN1T9OCULLZkpsDZIInZwnqccbFBqPeGjdpD/Q=;
	b=IBxy0XarPTCjm+mh6TF3OPmuQJ93SkiNnIrjVSmijPYoQGK1ML45D42ixuB/Kej9hi
	zTfDAJxP4/wNjKPnWbLZwK+IVNM5Qj/MdWyzttyPv5a6N2CUauYZ+uXkLkJ7WKR8BgA4
	x8lCsGJyV2ta/lpbRAi/LfO/OchAVHzsuSVAzPL9YDNSnJqy8AxRvmiKNjIYtAYG9/k6
	FNF2C3m5r0LepVqLDzbfU5tkH2950zoODu5ZM3xvXTILiQlS/A+lm79gE3gUiLEd8fB1
	4mEjwQ2W5P1Cpnpc5oEWfM2LxU20A9RtKL4UnkIfSh3waXkfk9dfycB5BNkGUksp2mVU
	nkWA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:date:user-agent:in-reply-to:references
	:mime-version:content-transfer-encoding:subject:to:from:message-id;
	bh=vmgkkEN1T9OCULLZkpsDZIInZwnqccbFBqPeGjdpD/Q=;
	b=TdWwdpsIOBPtEZtTupBuDakUr3C5xma/3BTSXk3lDx99zcRz+Oz8j92H4YUynrBw9I
	ItVHG7it07/jaTLdB1XgCkOTrkNstdZipsk+qqmy54U3je4VD97RHYt0bt+VmsllptiB
	5V2VHbDH3vkyW+eEDAyRtO+Fzpg+K/u6NIPRgWQGewzM82gaSOS3Ht4tFup205UVP2NW
	UWQjD7QuJulLqgSI0CyjSrq3SKrQ+ue0sM7+A5tDl1LRh8S9a+ml6b/Q1Um2zXK4gRsV
	CH4FjQw6MDZJHQM967f5VZe5LBDq2TEjm1DoocykbA/4axz8Vsg17zvNH/2qdP5Ny3TJ
	+pBg==
X-Gm-Message-State: APjAAAVDAvs/RNGa/XpmPi3ZRLKmZFBmnGpnxJk8kA2nfAa+rRoli6WZ
	X9dQsXKIlHTuu5eYsbcyEbhDDRaBEFk=
X-Google-Smtp-Source: APXvYqwdrKMsH1fhiTen8DE09LhZQiZkFVBhvsa3k2hh0mE0WdWUlDabyAmI1uvWnihFblSN/63DRw==
X-Received: by 2002:a25:141:: with SMTP id 62mr5353277ybb.387.1566606355807;
	Fri, 23 Aug 2019 17:25:55 -0700 (PDT)
Received: from android-6116dfaa305bca74.lan (cpe-75-189-192-174.nc.res.rr.com.
	[75.189.192.174])
	by smtp.gmail.com with ESMTPSA id j3sm847411ywf.35.2019.08.23.17.25.54
	for <blinux-list@redhat.com>
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Fri, 23 Aug 2019 17:25:55 -0700 (PDT)
Date: Fri, 23 Aug 2019 20:25:45 -0400
User-Agent: K-9 Mail for Android
In-Reply-To: <Pine.LNX.4.64.1908231944410.10534@server2.shellworld.net>
References: <Pine.LNX.4.64.1908231944410.10534@server2.shellworld.net>
MIME-Version: 1.0
Subject: Re: amazon?
To: blinux-list@redhat.com
Message-ID: <A4215BB2-6107-4752-AC5F-679E449FC076@gmail.com>
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.6.2
	(mx1.redhat.com [10.5.110.67]);
	Sat, 24 Aug 2019 00:25:56 +0000 (UTC)
X-Greylist: inspected by milter-greylist-4.6.2 (mx1.redhat.com [10.5.110.67]);
	Sat, 24 Aug 2019 00:25:56 +0000 (UTC) for IP:'209.85.219.173'
	DOMAIN:'mail-yb1-f173.google.com'
	HELO:'mail-yb1-f173.google.com' FROM:'kyle4jesus@gmail.com' RCPT:''
X-RedHat-Spam-Score: -0.099  (DKIM_SIGNED, DKIM_VALID, DKIM_VALID_AU,
	FREEMAIL_FROM, RCVD_IN_DNSWL_NONE, SPF_HELO_NONE,
	SPF_PASS) 209.85.219.173 mail-yb1-f173.google.com 209.85.219.173
	mail-yb1-f173.google.com <kyle4jesus@gmail.com>
X-Scanned-By: MIMEDefang 2.84 on 10.5.110.67
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.12
X-MIME-Autoconverted: from quoted-printable to 8bit by
	lists01.pubmisc.prod.ext.phx2.redhat.com id x7O0Q15X020231
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: blinux-list-bounces@redhat.com
Errors-To: blinux-list-bounces@redhat.com
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.6.2 (mx1.redhat.com [10.5.110.62]); Sat, 24 Aug 2019 00:26:15 +0000 (UTC)

I don't believe for a minute that the accessibility staff at Amazon has either forgotten or stopped caring about Linux accessibility. Realistically though, it is possible that they have stopped worrying about the very small number of people who still use text-based browsers and expect them to work for shopping, banking and other modern internet tasks. The thing is Linux accessibility in 2019 != lynx/links/elinks accessibility. In fact, this hasn't been the case since about 2008 or so
.
Unfortunately, text-based browsers have not kept up with the rest of the internet, and can't be expected to work well for most websites without a major overhaul, especially since they don't even support the latest HTML5 standards, nor do they support accessibility standards that have been in place for years. Even w3m doesn't fully support the w3c's own standards.

Yes, I can see why some people may want these light-weight and fast browsers to work with Amazon, and yes, they should be made aware of the problems that people are having. But to say that Amazon doesn't care about Linux accessibility because their site doesn't work with a text-based browser is at best a gross exageration, and is at worst a grave disservice to those of us who use Linux and a screen reader at the same time.
Imetumwa kutoka miti

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://www.redhat.com/mailman/listinfo/blinux-list
