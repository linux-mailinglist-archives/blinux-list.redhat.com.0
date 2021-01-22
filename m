Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [63.128.21.124])
	by mail.lfdr.de (Postfix) with ESMTP id D37D5300CC0
	for <lists+blinux-list@lfdr.de>; Fri, 22 Jan 2021 20:39:30 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1611344369;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=+pdcmsHRXov+s3Am/rSTUgYcRXYz6oqYtzEdjtx7f0s=;
	b=TpD1O6p/VmESde1Os1E/Rt8ghO88Gl5tCjoTxvu9bGIg3CeVV6/PZrDvPJKwb3ixI7lGJd
	jbwjoCSs2XagL7d/vqMGet+Qy6yFKB/yR2DFZEo/BliC6g8iPVYvo8HERdreDgaX5YrqF5
	RxJjH1Skb8nyGRE/TU1SzG9zi360h6c=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-554-4oN4CbcVMFupbjGnzRfVZg-1; Fri, 22 Jan 2021 14:39:28 -0500
X-MC-Unique: 4oN4CbcVMFupbjGnzRfVZg-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com [10.5.11.13])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id C4705806661;
	Fri, 22 Jan 2021 19:39:20 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 7F40160855;
	Fri, 22 Jan 2021 19:39:16 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 12B3F18095FF;
	Fri, 22 Jan 2021 19:39:06 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.rdu2.redhat.com
	[10.11.54.3])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 10MJcsv1026155 for <blinux-list@listman.util.phx.redhat.com>;
	Fri, 22 Jan 2021 14:38:54 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 01CF1101B54F; Fri, 22 Jan 2021 19:38:54 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast01.extmail.prod.ext.rdu2.redhat.com [10.11.55.17])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id F08851031F26
	for <blinux-list@redhat.com>; Fri, 22 Jan 2021 19:38:51 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [205.139.110.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 32FF6858EEC
	for <blinux-list@redhat.com>; Fri, 22 Jan 2021 19:38:51 +0000 (UTC)
Received: from mail-oi1-f170.google.com (mail-oi1-f170.google.com
	[209.85.167.170]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-464--e1UgjnJNM2f-g3BSDZS-Q-1; Fri, 22 Jan 2021 14:38:49 -0500
X-MC-Unique: -e1UgjnJNM2f-g3BSDZS-Q-1
Received: by mail-oi1-f170.google.com with SMTP id w8so7278535oie.2
	for <blinux-list@redhat.com>; Fri, 22 Jan 2021 11:38:48 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:content-transfer-encoding:mime-version
	:subject:message-id:date:to;
	bh=YnZqIW0l4x1nlaFpV2yahvI6QpW4xwjDr4gU7Joketk=;
	b=AovTThyX3O5PcYTsFDSWNQcnIiP9i6ywQdQm0FoDG+PKT3nIg0opl6rbuFxPxvx26Z
	sMU9UsfnayPyKHXG726R+Bu9/3W7O5hDQhDuzqx2rfnK7OXfq+ul0KPt51JNyPFpk/6o
	+ewfmAp7L7IyJyJsdHcBRory0uEOOoFrC/ItNiWfAwhvvr1DvXDT+RIrxqw/1rSbTYt4
	0Oqhatsc8TNoMzayROkmcZFUB1Q4v0220LG+5nEZB5bjbHFkhRiAEv56MUWBrtdyHVvW
	m46qubNlZIPqIs5SXCgrTXVUBGtzAnRbkOrSWL4YVwgl3EhLCzSXWG0Y9sC11T5GkGDI
	JQyQ==
X-Gm-Message-State: AOAM532ogL2PYuATgPUqlFkQ88cr3aZV9NnsfkfA7EU1sy315KQbR5xv
	RK5vtF6AULj1FELeoImQ0kG+1Of6BL3pnA==
X-Google-Smtp-Source: ABdhPJw6nth5x8zTq1AUhw55EXJZJrEbmw4Sx0LluiUC2RihH16l6G9CrKEeLii05Fmg76vW3269mg==
X-Received: by 2002:aca:b5d6:: with SMTP id e205mr4310137oif.15.1611344328087; 
	Fri, 22 Jan 2021 11:38:48 -0800 (PST)
Received: from ?IPv6:2601:3c2:8200:9360:796d:88d0:db62:c65c?
	([2601:3c2:8200:9360:796d:88d0:db62:c65c])
	by smtp.gmail.com with ESMTPSA id
	y84sm1944312oig.36.2021.01.22.11.38.46 for <blinux-list@redhat.com>
	(version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
	Fri, 22 Jan 2021 11:38:47 -0800 (PST)
Mime-Version: 1.0 (Mac OS X Mail 11.5 \(3445.9.7\))
Subject: renaming many files
Message-Id: <465180FE-6581-48FA-9EFD-23329FE3906A@gmail.com>
Date: Fri, 22 Jan 2021 13:38:46 -0600
To: Linux for blind general discussion <blinux-list@redhat.com>
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
	lists01.pubmisc.prod.ext.phx2.redhat.com id 10MJcsv1026155
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
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SSBoYXZlIG1hbnkgZmlsZXMgaW4gb25lIGRpcmVjdG9yeSB3aGljaCBoYXZlIHRoZSBzYW1lIHR3
byB3b3JkcyBpbiB0aGUgYmVnaW5uaW5nIG9mIHRoZSBuYW1lLgpyZW5ld2FsIHRhbGsgMDEgZWF0
aW5nIGJldHRlcgpyZW5ld2FsIHRhbGsgMDIgZXhlcmNpc2UKYW5kIHNvIG9uLgpXaXRoIHRoZSBj
b21tYW5kIGxpbmUsIGlzIHRoZXJlIGEgd2F5IG9mIGdldHRpbmcgcmlkIG9mIOKAmHJlbmV3YWwg
dGFsa+KAmSBmb3IgYWxsIGZpbGVzIGFuZCBrZWVwaW5nIHRoZSBvdGhlciB3b3JkcyBpbiB0aGVp
ciBuYW1lcz8KCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
XwpCbGludXgtbGlzdCBtYWlsaW5nIGxpc3QKQmxpbnV4LWxpc3RAcmVkaGF0LmNvbQpodHRwczov
L3d3dy5yZWRoYXQuY29tL21haWxtYW4vbGlzdGluZm8vYmxpbnV4LWxpc3Q=

