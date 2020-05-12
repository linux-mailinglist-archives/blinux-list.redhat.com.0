Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-1.mimecast.com (us-smtp-2.mimecast.com [207.211.31.81])
	by mail.lfdr.de (Postfix) with ESMTP id 5FB981CFCB3
	for <lists+blinux-list@lfdr.de>; Tue, 12 May 2020 19:58:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1589306283;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=Vvesr8Gufry/ly4O3PaO21u2I10eZeMt5SJoyGe4zk8=;
	b=gCerVnDAH4+GcIq50GiiszigY6JhY5Dc6GHghuDMjhd5gVQWazKbwK+zqgPZhBE4r+ClqA
	6PMjscE+DAsr5DTXkYibngcjW1IqRBcgWDGhBmNUVGgoToZ1Rvi0jCmEIr9XA3U6ol21Tx
	xwHdU/4mCJ6fhq3+R7Qk3AyLtLhJ93I=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-59-2Ys85A3APEGL9tI6IKF1iQ-1; Tue, 12 May 2020 13:58:01 -0400
X-MC-Unique: 2Ys85A3APEGL9tI6IKF1iQ-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.12])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id E90598005B7;
	Tue, 12 May 2020 17:57:53 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id CEDF260C80;
	Tue, 12 May 2020 17:57:53 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 357BC1809547;
	Tue, 12 May 2020 17:57:53 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.rdu2.redhat.com
	[10.11.54.5])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 04CHvmic005760 for <blinux-list@listman.util.phx.redhat.com>;
	Tue, 12 May 2020 13:57:49 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id C0B211108E0; Tue, 12 May 2020 17:57:48 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast03.extmail.prod.ext.rdu2.redhat.com [10.11.55.19])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id BCE171108E8
	for <blinux-list@redhat.com>; Tue, 12 May 2020 17:57:46 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [207.211.31.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id BCA4780066A
	for <blinux-list@redhat.com>; Tue, 12 May 2020 17:57:46 +0000 (UTC)
Received: from mail-qv1-f48.google.com (mail-qv1-f48.google.com
	[209.85.219.48]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-5-xL6HTMGBMP2DI9DR93bwNw-1; Tue, 12 May 2020 13:57:44 -0400
X-MC-Unique: xL6HTMGBMP2DI9DR93bwNw-1
Received: by mail-qv1-f48.google.com with SMTP id g20so3824721qvb.9
	for <blinux-list@redhat.com>; Tue, 12 May 2020 10:57:44 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to;
	bh=mniKh2+vKFK8YZgpUhNHu9w9DS0UHZCeIvDcEz9W92I=;
	b=Rl7bQvQzWTW6b9ZBGJh9cAg9kG6cmAsuVrwgNmo3P8E+Kn1WpelaTCSAH7p8EjKOtd
	CqzxoRZsdMz5QvXHdyJ7GQoYue9l+dYuA6Md0QgNfEbxbtCxfAebyVjvwj6SGw+MccBl
	+cuc3WoOFVA4jex7J7/isZJOsJOCLMOGYuYHB3nldUTYxJ2k6KNq0+pa18EPVrblCkRw
	NX5K0Tji8wOweNeziqsivUC7wSOkNxhRfMYt+E0zEPrXayp/zBGEH+0g1PogBaGv1CTw
	N9XUG2BfGAWbfQ9IhRIiAkFDNSfzAvjltQ5d5R7zkX5AFXlGBolc29W3oIELsSS129zF
	jNNg==
X-Gm-Message-State: AGi0PuYFf8obQ5HRekRvDPiWArseMu0z1tDWmfZBBawJSExm0DkUa5N8
	f8Me5mqSbPaOx5OsBI14aPPHQ+pMqcEzatDlLXFsdIo6
X-Google-Smtp-Source: APiQypKMwFhcs/1B1tpnPNyDPiTHQ0JcUGfDNBmz3mI2pgKaYytIJs4tnr5p2qB64Uw8lTHkT8LBXYmLfjY6MMNkK/8=
X-Received: by 2002:a05:6214:3ee:: with SMTP id
	cf14mr12835930qvb.128.1589306263563; 
	Tue, 12 May 2020 10:57:43 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a05:6214:932:0:0:0:0 with HTTP; Tue, 12 May 2020 10:57:42
	-0700 (PDT)
In-Reply-To: <969c7e66-e61f-d352-122a-18ed57b8cfe8@gmail.com>
References: <E811AB13-AE96-4C85-93CB-894ED5675931@gmail.com>
	<alpine.NEB.2.21.2005121221430.13470@panix1.panix.com>
	<CAO2sX32dVWnC1F8EQuQef1_SPStF0=r1c-k+JSz4M+Jm7z82PQ@mail.gmail.com>
	<c33e7e92-9eb7-3b58-afb4-9285eb928b86@gmail.com>
	<c638d1b2-f0c6-f973-1cbe-fe38897bbd3e@ukr.net>
	<969c7e66-e61f-d352-122a-18ed57b8cfe8@gmail.com>
Date: Tue, 12 May 2020 17:57:42 +0000
Message-ID: <CAO2sX32mwhadk=Pr1m-XpDHSWEts+G88G97CjDG6duxELQ0s+Q@mail.gmail.com>
Subject: Re: Manjaro linux
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.12
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Knoppix also offers a talking, text-mode installer if booted from live
media in Adriane mode, though admittedly, it's not really recommended
for harddrive installs in the first place and I have no experience
installing it from a normal boot with or without accessibility.

Didn't know about Ubuntu having an accessible graphical installer...
Granted, my last install of Ubuntu was years before I went blind and I
always prefered the text-installer back when I used Ubuntu as a
sighted user.

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://www.redhat.com/mailman/listinfo/blinux-list

