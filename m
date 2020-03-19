Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-74.mimecast.com (us-smtp-delivery-74.mimecast.com [63.128.21.74])
	by mail.lfdr.de (Postfix) with ESMTP id B46C118BACC
	for <lists+blinux-list@lfdr.de>; Thu, 19 Mar 2020 16:18:27 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1584631106;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=t+1okCUhJsbYz3KoKeErHJWGm/+9UCTUsGTmrdMUBXM=;
	b=EQ04lJxG85IVkB7J9yh3GrLOI+ZVFBqYe8+WwmR86DXcfIauMcHaCztWwRA3+Vd+I4PMXo
	WLS8CUuVrgJkAgytm9ur9n9GoZW05JZ0ZP4q3HahRaYf9U0DMxTwZMyAiy680ndqtHulVZ
	009bL0e7y3krKC1bD7qF50SFdY7aNHs=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-60-9nddba3TMti9wxmn8NQFaA-1; Thu, 19 Mar 2020 11:18:23 -0400
X-MC-Unique: 9nddba3TMti9wxmn8NQFaA-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com [10.5.11.13])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 1505C1083E84;
	Thu, 19 Mar 2020 15:18:18 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 195B8BBBC2;
	Thu, 19 Mar 2020 15:18:16 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 994CE94287;
	Thu, 19 Mar 2020 15:18:13 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.rdu2.redhat.com
	[10.11.54.4])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 02JFI59O011750 for <blinux-list@listman.util.phx.redhat.com>;
	Thu, 19 Mar 2020 11:18:05 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id AF49B2093CFE; Thu, 19 Mar 2020 15:18:05 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast01.extmail.prod.ext.rdu2.redhat.com [10.11.55.17])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id AA9322028DCC
	for <blinux-list@redhat.com>; Thu, 19 Mar 2020 15:18:02 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[207.211.31.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id CBDF98F68E7
	for <blinux-list@redhat.com>; Thu, 19 Mar 2020 15:18:02 +0000 (UTC)
Received: from mail-qv1-f44.google.com (mail-qv1-f44.google.com
	[209.85.219.44]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-151-NNm9UJPpMSSZ4PdRKxxUZA-1; Thu, 19 Mar 2020 11:18:00 -0400
X-MC-Unique: NNm9UJPpMSSZ4PdRKxxUZA-1
Received: by mail-qv1-f44.google.com with SMTP id n1so1185891qvz.4
	for <blinux-list@redhat.com>; Thu, 19 Mar 2020 08:17:59 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:content-transfer-encoding:mime-version:date
	:message-id:references:in-reply-to:subject:to;
	bh=b9ZpEFQ9zZVB+Rzs+ZWLKln8kZRN3raB8UARvse/WZE=;
	b=DP1xG3JtApGopxpG8Zx0CuEQETe5/OItWDSNg+3bc1C2HnjsvzuCIQjqnfLaRTxCXv
	lekTLGDaEp3d1q1L88hzUjCKCttwDiVLecK9OYycV1u/WrGZrgdAZqfdhb7nqzLpHpKK
	8BNCH4W3VQkM4XLN//e2JGillR7lJz+3in0Itd2tXj+xhjFaeA7Wo38ybEdYMXwYicFN
	Dpb1BPnLx698S9g5wwgGmKIOBdp/Rq3x+bI1zeGji30c4swkwIFLVgr2K/9kCo0QC4o7
	qYZEPWBLdTuC2zW3TqIPxeWdRE+jh5Pr8yl5A1TQH2LNebOyPc45UQGzIe63oGSkFCsh
	1yDQ==
X-Gm-Message-State: ANhLgQ0ZAFov9VRknTnsxoLKXWwVgAFIjxgS27nx0Nzkp0sRfSCEHXQv
	GDkcdLNHF9nm17nodBi8cE0Faasy
X-Google-Smtp-Source: ADFU+vtCPo0QZqZOl2KmYgNcHAY3e3k8mPHmnJe3Xn/McbLBVCw/FI80vLXtgXgI0lyrb8sgiuNMxg==
X-Received: by 2002:a05:6214:138a:: with SMTP id
	g10mr3489798qvz.231.1584631078686; 
	Thu, 19 Mar 2020 08:17:58 -0700 (PDT)
Received: from ?IPv6:2600:1700:81f0:1c10:8d7f:776a:8961:5b57?
	([2600:1700:81f0:1c10:8d7f:776a:8961:5b57])
	by smtp.gmail.com with ESMTPSA id d24sm1649247qkl.8.2020.03.19.08.17.56
	for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Thu, 19 Mar 2020 08:17:57 -0700 (PDT)
X-Google-Original-From: Maurice Mines <Maurice.Mines@gmail.com>
Mime-Version: 1.0 (1.0)
Date: Thu, 19 Mar 2020 08:17:56 -0700
Message-Id: <461EB1F7-5E8F-48E7-A5F7-24C8F5B20374@gmail.com>
References: <22c752d8-c3ab-f251-7776-c80067fb6b59@gmail.com>
In-Reply-To: <22c752d8-c3ab-f251-7776-c80067fb6b59@gmail.com>
Subject: Re: Brltty on login screen under Fedora
To: blinux-list@redhat.com
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.4
X-MIME-Autoconverted: from quoted-printable to 8bit by
	lists01.pubmisc.prod.ext.phx2.redhat.com id 02JFI59O011750
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SGkgZXZlcnlvbmUsIEkgc2F3IHRoaXMgbWVzc2FnZSBidXQgSeKAmW0gYXNraW5nIHlvdSBhIHF1
ZXN0aW9uIGlmIEkgZG9u4oCZdCB1c2UgVWJlciBhbmQgdHdvLCB3aGF0IHdvdWxkIGJlIGEgTm90
aGVyIGRpc3RybyB0aGF0IEkgY2FuIHVzZSBpbiBhIHZpcnR1YWwgbWFjaGluZS4gQmVjYXVzZSBJ
IGFtIHVzaW5nIGEgTWFjLiBIYXZlIGxvdHMgb2YgdGltZSBvbiBteSBoYW5kcy4gQmVjYXVzZSBv
ZiBhbGwgb2YgdGhlIGN1cnJlbnQgY29uZGl0aW9ucy4gSG9wZSBldmVyeW9uZSBpcyB3ZWxsIHNh
ZmUgYW5kIGlmIHlvdeKAmXJlIGluIG1hbnkgcGFydHMgb2YgdGhlIFVTIGF0IGhvbWUuIFBsZWFz
ZSBub3RlIEkgYW0gZGljdGF0aW5nIHRoaXMgdG8gbXkgcGhvbmUuIFNvIHRoZXJlIG1heSBiZSBw
YXJ0cyBvZiB0aGUgYWJvdmUgbWVzc2FnZSB0aGF0IEkgaGF2ZSBkaWN0YXRlZCB0aGF0IG1heSBu
b3QgYmUgY29tcGxldGVseSB1bmRlcnN0YW5kYWJsZS4gSWYgeW91IGhhdmUgYSBxdWVzdGlvbiBh
Ym91dCBteSBvcmlnaW5hbCBpbnRlbnQgcGxlYXNlIGFzayBtZSBJIHdpbGwgZG8gbXkgdmVyeSBi
ZXN0IHRvIHRyeSB0byBjbGVhciB1cCBhbnkgbWlzdW5kZXJzdGFuZGluZ3MKCk1hdXJpY2UgTWlu
ZXMuCmJvYXJkIG1lbWJlciBOZmJkYi4KVnAgbmZiIG9mIENhIEJha2Vyc2ZpZWxkIGNoYXB0ZXIu
ClVzIGhhbSByYWRpbyBjYWxsIGtkMGlrby4KU3ByaW50IElwICByZWxheSBudW1iZXIgNjYxMjQ2
MzExMC4KCj4+IE9uIE1hciAxOSwgMjAyMCwgYXQgMDY6MzgsIExpbnV4IGZvciBibGluZCBnZW5l
cmFsIGRpc2N1c3Npb24gPGJsaW51eC1saXN0QHJlZGhhdC5jb20+IHdyb3RlOgo+IO+7v0hpLAo+
IAo+IFVidW50dSBhbmQgRGViaWFuIGFsbG93cyBtZSB0byByZWFkIGNvbnRlbnQgZnJvbSBsb2dp
biBzY3JlZW4gd2l0aCBPcmNhIGFuZCBCcmx0dHkuIFVuZGVyIEZlZG9yYSwgSSBjYW4gYWNjZXNz
IEJybHR0eSBhZnRlciBhdXRoZW50aWNhdGlvbiBpcyBkb25lLiBDYW4gSSBzb21laG93IGNvbmZp
Z3VyZSBCcmx0dHkgdG8gZ2V0IGFjY2VzcyBmb3IgYWxsIHNjcmVlbnM/Cj4gCj4gVGhhbmtzLAo+
IAo+IFBhdmVsCj4gCj4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KPiBCbGludXgtbGlzdCBtYWlsaW5nIGxpc3QKPiBCbGludXgtbGlzdEByZWRoYXQuY29t
Cj4gaHR0cHM6Ly93d3cucmVkaGF0LmNvbS9tYWlsbWFuL2xpc3RpbmZvL2JsaW51eC1saXN0CgoK
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KQmxpbnV4LWxp
c3QgbWFpbGluZyBsaXN0CkJsaW51eC1saXN0QHJlZGhhdC5jb20KaHR0cHM6Ly93d3cucmVkaGF0
LmNvbS9tYWlsbWFuL2xpc3RpbmZvL2JsaW51eC1saXN0

