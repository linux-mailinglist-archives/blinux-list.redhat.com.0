Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A7329BC2E
	for <lists+blinux-list@lfdr.de>; Sat, 24 Aug 2019 08:14:24 +0200 (CEST)
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com [10.5.11.23])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mx1.redhat.com (Postfix) with ESMTPS id 387F63082E90;
	Sat, 24 Aug 2019 06:14:22 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 02B3E19C4F;
	Sat, 24 Aug 2019 06:14:19 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 09B632551B;
	Sat, 24 Aug 2019 06:14:15 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com
	[10.5.11.16])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id x7O6E7Y8029161 for <blinux-list@listman.util.phx.redhat.com>;
	Sat, 24 Aug 2019 02:14:07 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 472235C548; Sat, 24 Aug 2019 06:14:07 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mx1.redhat.com (ext-mx20.extmail.prod.ext.phx2.redhat.com
	[10.5.110.49])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 417E65C296
	for <blinux-list@redhat.com>; Sat, 24 Aug 2019 06:14:04 +0000 (UTC)
Received: from mail-yw1-f48.google.com (mail-yw1-f48.google.com
	[209.85.161.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mx1.redhat.com (Postfix) with ESMTPS id 054ED3086246
	for <blinux-list@redhat.com>; Sat, 24 Aug 2019 06:14:04 +0000 (UTC)
Received: by mail-yw1-f48.google.com with SMTP id e65so4765589ywh.0
	for <blinux-list@redhat.com>; Fri, 23 Aug 2019 23:14:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=date:user-agent:in-reply-to:references:mime-version
	:content-transfer-encoding:subject:to:from:message-id;
	bh=6Unkcj9Y2tQHxS0OoBsUct4HcH8pSfPVZ9ehB+hrTf8=;
	b=egAB+pxEJr32J36P4dBDfX+0MtA+p6GwUJYrwVjRPfUo0wgSJ6R9AXqEvHcbfQKcTu
	qFT4+GnfGVTI5Sp4rw8yPcGPSJ9+PE0cqgIBBbakDc7e6SCKJxbPheUDbTxNHuLx6XLO
	hqz28a5c50ZRHT5nEwgQWwz+tQRjS32xKfItTGw1vtmHXEBTzY+zcJ4DDvNrKRInZORa
	daYselwViI6RzZHu6HR9NESd7mVpU1rBpr1cxeX0dAvUGFapP1MF7n0nrVrWcRoeYjsc
	oxAqEOw85MAw8CHhW8hOKpluzHmISVFvaCLQSHWwbeV4/v+M4Ijyn9it9N7BCFBFvSx4
	NiVQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:date:user-agent:in-reply-to:references
	:mime-version:content-transfer-encoding:subject:to:from:message-id;
	bh=6Unkcj9Y2tQHxS0OoBsUct4HcH8pSfPVZ9ehB+hrTf8=;
	b=Px7aUPUx/9+0vs7PmUmtstP+V+vrKmaq7OHghmjz5Ln/Vy2x1wfHWPqQk5cVDGO7Bh
	tDadEZJjbCx3SlmT9n9Y33E0SAhdOBiA+R5EMWSoe6b0ywePAsTFgwCRtNpX4PDtAsV4
	/kYJQxKKeh3SXcWAPBioAM22QqjzsUCH6lvTn8RKRCgxz3UN6UI86FQoOYQkhl/gmmUy
	Eav5MkvOXcHjfWXnqu/4RptdmjFiXH0oISLVVdDNSttC707vQQTtWmcQX5AAOC7aDW/U
	zSOVpQ0u37ADaPz2u477voMi3bnQmnED6y7O7/IrIR3w+mtIaQ5SsgBsxM/fBoJpfSpy
	7V9A==
X-Gm-Message-State: APjAAAXFycYxRP6P66dMHZjfzPaJPaRcO8V+j3YnKjUfBi0+YFVJLo1x
	cY9raTDewoHa9hcJ6Owp6BVNe1BYyvs=
X-Google-Smtp-Source: APXvYqzp3CvGDUagIMRv2K2X3WjiMzyTDz/i0qfG5uN8YXch9nWgaLPlYqz81m9FKcqtCBByUU0/UQ==
X-Received: by 2002:a81:7a92:: with SMTP id v140mr5892343ywc.315.1566627242965;
	Fri, 23 Aug 2019 23:14:02 -0700 (PDT)
Received: from android-6116dfaa305bca74.lan (cpe-75-189-192-174.nc.res.rr.com.
	[75.189.192.174]) by smtp.gmail.com with ESMTPSA id
	e127sm1077245ywb.28.2019.08.23.23.14.01 for <blinux-list@redhat.com>
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Fri, 23 Aug 2019 23:14:02 -0700 (PDT)
Date: Sat, 24 Aug 2019 02:13:53 -0400
User-Agent: K-9 Mail for Android
In-Reply-To: <CAO2sX32GhipoPjeRWNbCAT88bPgQYjOAoti50xXKafChDJ3H=w@mail.gmail.com>
References: <Pine.LNX.4.64.1908231944410.10534@server2.shellworld.net>
	<A4215BB2-6107-4752-AC5F-679E449FC076@gmail.com>
	<Pine.LNX.4.64.1908231729330.11612@server2.shellworld.net>
	<alpine.NEB.2.21.1908232114580.20438@panix1.panix.com>
	<CAO2sX32GhipoPjeRWNbCAT88bPgQYjOAoti50xXKafChDJ3H=w@mail.gmail.com>
MIME-Version: 1.0
Subject: Re: amazon?
To: blinux-list@redhat.com
Message-ID: <31ECFF33-9D34-476D-9B96-10EB9F491255@gmail.com>
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
	(mx1.redhat.com [10.5.110.49]);
	Sat, 24 Aug 2019 06:14:04 +0000 (UTC)
X-Greylist: inspected by milter-greylist-4.5.16 (mx1.redhat.com [10.5.110.49]);
	Sat, 24 Aug 2019 06:14:04 +0000 (UTC) for IP:'209.85.161.48'
	DOMAIN:'mail-yw1-f48.google.com' HELO:'mail-yw1-f48.google.com'
	FROM:'kyle4jesus@gmail.com' RCPT:''
X-RedHat-Spam-Score: -0.099  (DKIM_SIGNED, DKIM_VALID, DKIM_VALID_AU,
	FREEMAIL_FROM, RCVD_IN_DNSWL_NONE, SPF_HELO_NONE,
	SPF_PASS) 209.85.161.48 mail-yw1-f48.google.com 209.85.161.48
	mail-yw1-f48.google.com <kyle4jesus@gmail.com>
X-Scanned-By: MIMEDefang 2.84 on 10.5.110.49
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
X-MIME-Autoconverted: from quoted-printable to 8bit by
	lists01.pubmisc.prod.ext.phx2.redhat.com id x7O6E7Y8029161
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
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16 (mx1.redhat.com [10.5.110.46]); Sat, 24 Aug 2019 06:14:22 +0000 (UTC)

Tell all this to the W3C and other standards bodies who have adopted HTML5 and Javascript standards for the web. If so many people really want to use text-base browsers wherever possible, then one would think that either text-based browsers would be better developed to fully comply with the latest web standards, or that web standards didn't need to be updated at all, since the 1990's HTML standards were sufficient then, and should still be satisfactory now. For many sites, especially those with large codebases, it can be a nightmare just supporting four well-known graphical browsers. But I know firsthand that trying to support text-based browsers can greatly increase the codebase, which can make already large pages rather unwieldy.
Imetumwa kutoka karatasi yangu

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://www.redhat.com/mailman/listinfo/blinux-list
