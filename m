Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
	by mail.lfdr.de (Postfix) with ESMTPS id D50FA9C82C
	for <lists+blinux-list@lfdr.de>; Mon, 26 Aug 2019 06:04:26 +0200 (CEST)
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com [10.5.11.16])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mx1.redhat.com (Postfix) with ESMTPS id 0A31B18C4271;
	Mon, 26 Aug 2019 04:04:25 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id A5C8F5C207;
	Mon, 26 Aug 2019 04:04:23 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id BC8262551C;
	Mon, 26 Aug 2019 04:04:22 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com
	[10.5.11.23])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id x7Q445Lm018666 for <blinux-list@listman.util.phx.redhat.com>;
	Mon, 26 Aug 2019 00:04:05 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 92BA219D7A; Mon, 26 Aug 2019 04:04:05 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mx1.redhat.com (ext-mx28.extmail.prod.ext.phx2.redhat.com
	[10.5.110.69])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 8D34519C70
	for <blinux-list@redhat.com>; Mon, 26 Aug 2019 04:04:03 +0000 (UTC)
Received: from mail-ot1-f52.google.com (mail-ot1-f52.google.com
	[209.85.210.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mx1.redhat.com (Postfix) with ESMTPS id 91F698AC6F2
	for <blinux-list@redhat.com>; Mon, 26 Aug 2019 04:04:02 +0000 (UTC)
Received: by mail-ot1-f52.google.com with SMTP id z17so13897060otk.13
	for <blinux-list@redhat.com>; Sun, 25 Aug 2019 21:04:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to; 
	bh=wuxNZo3Iyhg1FkIeZ08RrVJqvdsNTtaKQ3EvIyD+Qc0=;
	b=sWjL8nm+ptKzQIxy52jbUlF2WVBXo5LC5/Nkh1FyDABpYWLTef0kPxe8JwoCx+fNVn
	BkoELQrfwLv+VlprXhn3+Q43tNEzxPUj9y/QfudcT3zxLAwBDiUXKqEf5TwbyAPByMLu
	aqhfszwmi2jDP3fJnkzpTOf8UuFlF3eYYG5/VJuFkRLMEyGm/IbxPPPUEsFBH/SfFYQL
	YPnJ3fDzBPv/LFIa72PptosEI4fATuT/ovfR9ltGCP3RB1ddr3MsxuoAeCT+ho8PHqM9
	IyPKipZpZ0pPfwVBiwmuRZnhAaeiftPQ4awOjILrT72iRB0BLLmoLDX19UtZfrVX0DuU
	c3Vg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to;
	bh=wuxNZo3Iyhg1FkIeZ08RrVJqvdsNTtaKQ3EvIyD+Qc0=;
	b=JgiVbzMrVB7CiDXmYwjnslSGNUe5uqmWJFr3mNaIr5V+gFcUWZqLvuaavzYHwcpsiv
	sM5Q/Fo4IXvxrCJ8+8ji1uD7mGUCZ2Zjb6S7UKJnuiKEUisQC3YmCp5KsuALtt1g2SAY
	2OrfU2pQkxJ4XuICUkrUbrUvMxo8HqPVEFv6SwiHkTB5cktObjFvw3GIx9lwMTPbq1KJ
	sLMX9bm+X02AX5cOIzD4pikst8Er2wXzFY2wLZM4LcRmhiDeEU00ohykedPYsPFOAInf
	HzWTqLgqszl7/R54GWDC4YT3WO2Xbfc0i3nMnPkf4Z5w974x6bNx9O/MCofU+kZtgug7
	b5ig==
X-Gm-Message-State: APjAAAWNYJPvBwuF7fzC8prLNsl5AfE9TKOijAYDo4N5g+wmVO0IWGwG
	1r8WMF/qtPC2280W6tNgzOCrXCwsrnLgdNWiaAR74w==
X-Google-Smtp-Source: APXvYqyMM3THAo5kDVtzazyx7HhNxayntz5lckDeAF7S/H+YDcMKzcUlxaiNxraoLilCS0yZy32Q9HMNTm1GGgOfpgk=
X-Received: by 2002:a9d:66d2:: with SMTP id t18mr11980985otm.355.1566792242014;
	Sun, 25 Aug 2019 21:04:02 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a9d:48d:0:0:0:0:0 with HTTP;
	Sun, 25 Aug 2019 21:04:01 -0700 (PDT)
In-Reply-To: <Pine.LNX.4.64.1908252215290.13997@server2.shellworld.net>
References: <20190826004808.lapid7qsq5dili2u@prl-debianold-64.jexium-island.net>
	<Pine.LNX.4.64.1908252054480.12148@server2.shellworld.net>
	<4F2EC260-5157-43BD-95C3-F3BEFC09CF5E@gmail.com>
	<Pine.LNX.4.64.1908252215290.13997@server2.shellworld.net>
Date: Mon, 26 Aug 2019 04:04:01 +0000
Message-ID: <CAO2sX31-dortHjXk_pL+ZJW0hTivNvzZAS3z=3P8x66r+JkpSg@mail.gmail.com>
Subject: Re: latest lynx ANN: lynx2.9.0dev.3
To: blinux-list@redhat.com
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.6.2
	(mx1.redhat.com [10.5.110.69]);
	Mon, 26 Aug 2019 04:04:02 +0000 (UTC)
X-Greylist: inspected by milter-greylist-4.6.2 (mx1.redhat.com [10.5.110.69]);
	Mon, 26 Aug 2019 04:04:02 +0000 (UTC) for IP:'209.85.210.52'
	DOMAIN:'mail-ot1-f52.google.com' HELO:'mail-ot1-f52.google.com'
	FROM:'mewtamer@gmail.com' RCPT:''
X-RedHat-Spam-Score: -0.097  (DKIM_SIGNED, DKIM_VALID, DKIM_VALID_AU,
	FREEMAIL_FROM, RCVD_IN_DNSWL_NONE, RCVD_IN_MSPIKE_H3,
	RCVD_IN_MSPIKE_WL, SPF_HELO_NONE,
	SPF_PASS) 209.85.210.52 mail-ot1-f52.google.com 209.85.210.52
	mail-ot1-f52.google.com <mewtamer@gmail.com>
X-Scanned-By: MIMEDefang 2.84 on 10.5.110.69
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.6.2 (mx1.redhat.com [10.5.110.62]); Mon, 26 Aug 2019 04:04:25 +0000 (UTC)

I don't follow the development of any web browser, not even the one I
spend most of my waking hours in(Firefox), but if HTML5 has been a
standard since 2012 and Lynx has only had HTML5 support since 2016,
that still sounds like a rather significant amount of feature lag.

Not that I'd expect a text-mode browser to stay cutting edge, but it
does make you wonder how many web sites are one major upgrade away
from breaking in Lynx and how many web design teams wouldn't even be
aware it happened.

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://www.redhat.com/mailman/listinfo/blinux-list
