Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-1.mimecast.com (us-smtp-1.mimecast.com [205.139.110.61])
	by mail.lfdr.de (Postfix) with ESMTP id E822225236A
	for <lists+blinux-list@lfdr.de>; Wed, 26 Aug 2020 00:13:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1598393630;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=sj0C2XlJAKpXEAHKt1CF+4kZb/AiHOUYOrC2WL0MUjQ=;
	b=BPEOTTCBQ0Bye2RzG9a/JTe8MP1gLKgVH5N0bJLrEm5ALfOYtiVMm4oi1sVBZuA1PHfeoU
	p/7fHmUg35AecIETwPOoQIVJYKVGF72Dvq1uFKR3bYDKNwecBao/McfIwMZb68szrF9OxI
	8g9DZfzaYefdbJzkOL8SDgTFRal5Bkw=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-34-NdNviLcFNrm2woDpJ3VpXA-1; Tue, 25 Aug 2020 18:13:48 -0400
X-MC-Unique: NdNviLcFNrm2woDpJ3VpXA-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com [10.5.11.15])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id B5D6F100738B;
	Tue, 25 Aug 2020 22:13:43 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 39A991944D;
	Tue, 25 Aug 2020 22:13:42 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id AAEA21826D2B;
	Tue, 25 Aug 2020 22:13:39 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.rdu2.redhat.com
	[10.11.54.6])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 07PMDX9T029640 for <blinux-list@listman.util.phx.redhat.com>;
	Tue, 25 Aug 2020 18:13:33 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 35C2B2166B28; Tue, 25 Aug 2020 22:13:33 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast02.extmail.prod.ext.rdu2.redhat.com [10.11.55.18])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 30E222166BA4
	for <blinux-list@redhat.com>; Tue, 25 Aug 2020 22:13:30 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[207.211.31.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 970A88007D1
	for <blinux-list@redhat.com>; Tue, 25 Aug 2020 22:13:30 +0000 (UTC)
Received: from mail-qk1-f170.google.com (mail-qk1-f170.google.com
	[209.85.222.170]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-315-5MHPZg5hONibucY3tk4Wmw-1; Tue, 25 Aug 2020 18:13:27 -0400
X-MC-Unique: 5MHPZg5hONibucY3tk4Wmw-1
Received: by mail-qk1-f170.google.com with SMTP id p25so80242qkp.2
	for <blinux-list@redhat.com>; Tue, 25 Aug 2020 15:13:27 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to;
	bh=9+ITKl0HeoaGe8MDqIs/lFIJbDeZkq96+OuU33R7rw4=;
	b=J7weOp5ISCQccylQKnSQ2oQZO4lhelFDDknqoe50nzcGriJ2nWuuFJ30p/aIzSAAyK
	/y23nVp1UMp+E6OfWHxPEwDrJgEY65zcfaQ+/V+OmqSKeY/tP1DG7kx+gSunY6L2yjYw
	J83wyD404lKzepa4hktcqq+MmF/+DrR4jX/tsCTl7UUu876Nwrh9UofyLoDFzQv+x2Ru
	0agAENjmKMEl+y8T/1Yr8hbYZSDD2EPaoUsyedwD5gOSmoM+XFOs3q5MXCZ6zbJ/O5uk
	n39YnmWdSmSvNQEx1F4Lj1+n5Ej/WMTsZYHB6uU+ynPrBhI5pH6gNazf4xdbzuYNazmM
	PwVg==
X-Gm-Message-State: AOAM530iVD7nUXdXwECB265yiPCQCaM8QNN77vJ+KFHuBAlRD2vs3Wba
	BO2ZmpW/XR9oQxrgfQkw93ucLUAvaewZOkudm+UN/5KqTWg=
X-Google-Smtp-Source: ABdhPJxF/VJ5LUketgvElurhtvU5290BfHt2fVCzwNqHhhKM36t6GjxzU85fyx0gaE7+xMN5jEmlgE5E7ScVUEVCuaY=
X-Received: by 2002:ae9:e00b:: with SMTP id m11mr11534032qkk.341.1598393606941;
	Tue, 25 Aug 2020 15:13:26 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a0c:e807:0:0:0:0:0 with HTTP; Tue, 25 Aug 2020 15:13:26
	-0700 (PDT)
In-Reply-To: <alpine.NEB.2.23.451.2008251743310.9959@panix1.panix.com>
References: <alpine.NEB.2.23.451.2008251743310.9959@panix1.panix.com>
Date: Tue, 25 Aug 2020 22:13:26 +0000
Message-ID: <CAO2sX32zY8fraBaxNamf2f83y4d2F_OBMNVf6ruUKDC_GYi93g@mail.gmail.com>
Subject: Re: tried accessible coconut
To: blinux-list@redhat.com
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false;
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.6
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0.002
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

That's odd... I've never used accessible Coconut, and I've really only
tried Knoppix and Debian for x86 and Raspbian on the Raspberry Pi when
it comes to trying to set a Linux System up with speech, but I've
never had an issue with something refusing to boot or a screenreader
failing to launch because of no monitor being connected.

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://www.redhat.com/mailman/listinfo/blinux-list

