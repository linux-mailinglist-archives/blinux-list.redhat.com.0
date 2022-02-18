Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id A177D4BC28C
	for <lists+blinux-list@lfdr.de>; Fri, 18 Feb 2022 23:24:25 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1645223064;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=xSIr0H+4JjBVZhS2muhtAfa6vzQ9yeZx6Ohswwi1ack=;
	b=b5+L1jBWwRW95bV5Wy8lbfnbijIjtPYG+BFrvTIQBJoePYmWRHhFutmV5cGTzdKJfskRr/
	Rw65iDUFcKxMFTUdUYVYXe7d5LaP7DtIPdvEH4Kd7NA31bbEMZ9r/2+mbFMSWGxdTQpVeB
	FsVEOKaIbJU7CLb6Ypd7PipWRcPcj3I=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-126-WYyoKVYHNUaYYW8e6kRNUA-1; Fri, 18 Feb 2022 17:24:22 -0500
X-MC-Unique: WYyoKVYHNUaYYW8e6kRNUA-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com [10.5.11.23])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id D7702180FD60;
	Fri, 18 Feb 2022 22:24:17 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 38A03E73A;
	Fri, 18 Feb 2022 22:24:16 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 727CA4BB7B;
	Fri, 18 Feb 2022 22:24:08 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.rdu2.redhat.com
	[10.11.54.2])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 21IMNiRk013236 for <blinux-list@listman.util.phx.redhat.com>;
	Fri, 18 Feb 2022 17:23:44 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id B090B40E80E4; Fri, 18 Feb 2022 22:23:44 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast09.extmail.prod.ext.rdu2.redhat.com [10.11.55.25])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id AC51E40E80E3
	for <blinux-list@redhat.com>; Fri, 18 Feb 2022 22:23:44 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[207.211.31.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 93DAF2A8E470
	for <blinux-list@redhat.com>; Fri, 18 Feb 2022 22:23:44 +0000 (UTC)
Received: from mail-yb1-f177.google.com (mail-yb1-f177.google.com
	[209.85.219.177]) by relay.mimecast.com with ESMTP with STARTTLS
	(version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-63-BL17jR8dPU6IkUzQ1fYlug-1; Fri, 18 Feb 2022 17:23:42 -0500
X-MC-Unique: BL17jR8dPU6IkUzQ1fYlug-1
Received: by mail-yb1-f177.google.com with SMTP id j2so22397998ybu.0
	for <blinux-list@redhat.com>; Fri, 18 Feb 2022 14:23:42 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20210112;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to;
	bh=WMzqM0DhtsB9UFtTpXhOhjSDaRtqwxjkl0XDchF8MQ8=;
	b=mszGrZs1bDl3EQ9Ucm5k2oF0fTIy8JZZzUA7YgONsk9f85kka+h8jjaonroMl6s5xk
	XOkiXfQx1Gr3ibhPNvi6ItqLMdp1yW7AVKe0+rmKMK2hihA2UltN0MD6Dk5pUX5QTYfY
	3caJvcM7uOysQHqNbyeEAYO4UXf0WGqJbjRdFYUKPzoSb7t7n+TA0nPWe2M1iNBL32Tf
	giffse1eILTnjJ3CA3AP+LwmVO9MjdrlvgbAMQQ1DFDpAaTdnTrAQ9MDiaijTKtkwxOl
	uR4bj3NeLXnI/kwVe+7vU5OauUO4pcVLwLZEkchOPh4ivPaL80lu+QRU5XtcZMqkqz9N
	aDgw==
X-Gm-Message-State: AOAM530uC3R0PsqGlMXmHO0n+rY59V60XNP+OJC75TAzFQ64jDEMdHdv
	EfC1ig81lGXF6ZBKHK+11IXHlu0U4pmhs1HqvCwt6Zn4TJw=
X-Google-Smtp-Source: ABdhPJxadLRC0nIvSMFUB1hok1RP2d4qSs/TyeTOVPORW9GAPSRTGgfH7KKVPVQlS/+1Xrp2lNgSFLEit/jfcxM5BXE=
X-Received: by 2002:a25:d0d3:0:b0:623:c2ec:8b33 with SMTP id
	h202-20020a25d0d3000000b00623c2ec8b33mr9429292ybg.264.1645223021633;
	Fri, 18 Feb 2022 14:23:41 -0800 (PST)
MIME-Version: 1.0
References: <CABKqQvG=xfVhpLGgJeR1-+HbtNUrzc=U2UbPDqjfLbuWYYax0w@mail.gmail.com>
In-Reply-To: <CABKqQvG=xfVhpLGgJeR1-+HbtNUrzc=U2UbPDqjfLbuWYYax0w@mail.gmail.com>
Date: Fri, 18 Feb 2022 16:23:29 -0600
Message-ID: <CAGJxbF43Nd1NA70dWmt7=2qBQL3EE+Hwz4SwqHehodx1+54sMg@mail.gmail.com>
Subject: Re: Simple code editor that is better than Jedit?
To: "blinux-list@redhat.com" <blinux-list@redhat.com>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.84 on 10.11.54.2
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
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

VS Code can do much of that, except code folding. Only Emacs with Emacspeak
can do that accessibly.
Devin Prater
r.d.t.prater@gmail.com




On Fri, Feb 18, 2022 at 2:42 PM Linux for blind general discussion <
blinux-list@redhat.com> wrote:

> Emacs made a mess of things last time I tried installing emacs and
> emacspeak.
>
> Anyway, I just need a few things, like the ability to jump to function
> or class definitions, or pull them up as a list and move around my
> program like that.
>
> Are there any simple, accessible code editors?
>
>
> Amanda[0]
>
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

