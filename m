Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [216.205.24.124])
	by mail.lfdr.de (Postfix) with ESMTP id 7D29F2A5C9C
	for <lists+blinux-list@lfdr.de>; Wed,  4 Nov 2020 03:10:20 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1604455819;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=FFj6uFO110ygh+T73jqWpRzjJLBaatER6T32ANk4fj4=;
	b=BIBXZSo9+cG2e3jwdRf9x07tXeZcsWrD8aa+JT/v8PWuMkWt9AFuVvqdlvQFdOf6of2Ope
	znHvc9RPaAN3BgRW9UO7nuyeUZ0d97ZsPAp14/etL5SROq/N7Zx7sKpHFOiqoEiFWHqnuz
	5qf19lBQGksgUzi16EQuVZb5amKcqrE=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-357-yB9aFY8bNKebk0j1wLm6OA-1; Tue, 03 Nov 2020 21:10:17 -0500
X-MC-Unique: yB9aFY8bNKebk0j1wLm6OA-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com [10.5.11.23])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 82B7C100746E;
	Wed,  4 Nov 2020 02:10:12 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 881AF1A3D7;
	Wed,  4 Nov 2020 02:10:11 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id F212344A47;
	Wed,  4 Nov 2020 02:10:08 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.rdu2.redhat.com
	[10.11.54.3])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 0A42A1gQ015678 for <blinux-list@listman.util.phx.redhat.com>;
	Tue, 3 Nov 2020 21:10:01 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 019261016D9D; Wed,  4 Nov 2020 02:10:01 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast02.extmail.prod.ext.rdu2.redhat.com [10.11.55.18])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id F1C0A1000DAB
	for <blinux-list@redhat.com>; Wed,  4 Nov 2020 02:09:57 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [205.139.110.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id ACBE18007D9
	for <blinux-list@redhat.com>; Wed,  4 Nov 2020 02:09:57 +0000 (UTC)
Received: from mail-ot1-f47.google.com (mail-ot1-f47.google.com
	[209.85.210.47]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-312-N1bwX008MfSfrZT63jVajA-1; Tue, 03 Nov 2020 21:09:55 -0500
X-MC-Unique: N1bwX008MfSfrZT63jVajA-1
Received: by mail-ot1-f47.google.com with SMTP id 79so10502180otc.7
	for <blinux-list@redhat.com>; Tue, 03 Nov 2020 18:09:55 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:content-transfer-encoding:mime-version
	:subject:date:references:to:in-reply-to:message-id;
	bh=E4Q7r18DyAt/ER299dvZUSri+2UASAf+cuAS6v0SGok=;
	b=DgxLMruKbdLZqeX+dqangN71K4RPEjtxl91fEjGbbxPpo9kAZiSRsy1gRE2t2Irwcs
	8U8lbxDzu9sA0RU3DYSAH6XMGD+ys6ZobVViSNSrPhBVYmSdSq2U/9X+cAn8SV3kxzMB
	P9JBgHj99IXhZ/40MCUDx8hNrAE1mxDb7ifL55fPxQQJUDwhNPQH/Khfi42b3JOlGAMt
	F4wd4QVetoDkGuHDIoSeoFYKEoega8Db9f4Oj+p2yCMMDZcsDExvrzD7CuzhiWK2n7XD
	8jcFH/UICSAiWca5kWAXQtewKgoMjK1+pe7MIyf+00a0qzcHzrqVmfF1LD0zueWJKNGr
	FbHg==
X-Gm-Message-State: AOAM532OvQz4xRwKnEsFaOwlsljIGHzjtwfHS08zIUZt1y1NId35o8fC
	NBodpSZMRmAvZvY11ClTw/ykFBRwGNHWPw==
X-Google-Smtp-Source: ABdhPJybgYfTZrq9fW3A7BHnQAjH6bYRhPI4mSYIumF2tr+ZStf6atGBzZKaqUnMrAaV4paF0DCW0g==
X-Received: by 2002:a05:6830:2401:: with SMTP id
	j1mr10567439ots.235.1604455794254; 
	Tue, 03 Nov 2020 18:09:54 -0800 (PST)
Received: from ?IPv6:2601:3c2:8200:9360:8c7f:b214:116c:ac94?
	([2601:3c2:8200:9360:8c7f:b214:116c:ac94])
	by smtp.gmail.com with ESMTPSA id f18sm197567oos.19.2020.11.03.18.09.53
	for <blinux-list@redhat.com>
	(version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
	Tue, 03 Nov 2020 18:09:53 -0800 (PST)
Mime-Version: 1.0 (Mac OS X Mail 11.5 \(3445.9.5\))
Subject: Re: arch linux and broadcom
Date: Tue, 3 Nov 2020 20:09:52 -0600
References: <00B86B11-5D22-4EAA-A7DC-FF8194FBD424@gmail.com>
	<cfc665bf-d6f8-3866-2ccb-94c3ee2a52db@gmail.com>
	<81EA0C39-FAB8-4D0A-AE23-20128A853C36@gmail.com>
	<2efcfd32-6658-b7ed-0782-fc44648e6b6e@gmail.com>
To: Linux for blind general discussion <blinux-list@redhat.com>
In-Reply-To: <2efcfd32-6658-b7ed-0782-fc44648e6b6e@gmail.com>
Message-Id: <6E8462C4-2EDE-443A-9F05-B729551E931A@gmail.com>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.3
X-MIME-Autoconverted: from quoted-printable to 8bit by
	lists01.pubmisc.prod.ext.phx2.redhat.com id 0A42A1gQ015678
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
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

The wifi chip is a usb thing that works well with ubuntu and fedora.  The ethernet is built in.

> On Nov 3, 2020, at 6:52 PM, Linux for blind general discussion <blinux-list@redhat.com> wrote:
> 
> Since that machine is a tower, the ethernet chip could possibly be on the motherboard, but it may also be a card that you can remove and replace with another. Ethernet cards that plug into PCI or similar internal slots are not very expensive usually. If you do have a card and not something onboard, I would recommend replacing it. Broadcom hardware does tend to be a bit of a pita on some Linux distributions. Wifi is the worst, but ethernet can be problematic as well.
> 
> ~Kyle
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

