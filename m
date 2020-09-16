Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [216.205.24.124])
	by mail.lfdr.de (Postfix) with ESMTP id 37FD426BDDD
	for <lists+blinux-list@lfdr.de>; Wed, 16 Sep 2020 09:22:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1600240923;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=ygPTdwCSKJgeR0rL/yVtZ5mUYbJkDaZA5GQio2XZWbo=;
	b=Ud2vyWCy7rCFacfSrpCD4pM10IdhuaNF4KcxCi2rES2pxHFZ1II6iT+k4M8vs5IQDPmwM8
	r8TXIX3ISFpU8vIE/y9jxeweVRKc4nz3oDcYRZOSlzraswlV0ZxTSt92aqAepswfXMsKaV
	m6wioIefK/JBmuMfSR/WexN4AVmKDAA=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-295-n76h6OFkOQekvsMoOjD7dA-1; Wed, 16 Sep 2020 03:22:01 -0400
X-MC-Unique: n76h6OFkOQekvsMoOjD7dA-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com [10.5.11.23])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 58D651868416;
	Wed, 16 Sep 2020 07:21:56 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 710A819D6C;
	Wed, 16 Sep 2020 07:21:54 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 56F0A183D029;
	Wed, 16 Sep 2020 07:21:47 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.rdu2.redhat.com
	[10.11.54.6])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 08G7LeLM023287 for <blinux-list@listman.util.phx.redhat.com>;
	Wed, 16 Sep 2020 03:21:40 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id E50DE2156A34; Wed, 16 Sep 2020 07:21:39 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast06.extmail.prod.ext.rdu2.redhat.com [10.11.55.22])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id E02D42156A2D
	for <blinux-list@redhat.com>; Wed, 16 Sep 2020 07:21:37 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[207.211.31.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 846B4185A78B
	for <blinux-list@redhat.com>; Wed, 16 Sep 2020 07:21:37 +0000 (UTC)
Received: from gateway20.websitewelcome.com (gateway20.websitewelcome.com
	[192.185.58.11]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-537-UZBtrUyoM32MtQ0ABaEyqA-1; Wed, 16 Sep 2020 03:21:34 -0400
X-MC-Unique: UZBtrUyoM32MtQ0ABaEyqA-1
Received: from cm10.websitewelcome.com (cm10.websitewelcome.com [100.42.49.4])
	by gateway20.websitewelcome.com (Postfix) with ESMTP id 82842400C47B7
	for <blinux-list@redhat.com>; Wed, 16 Sep 2020 00:09:25 -0500 (CDT)
Received: from gator4065.hostgator.com ([192.185.4.76]) by cmsmtp with SMTP
	id IR18k3GEnLFNkIR18kKOqQ; Wed, 16 Sep 2020 01:34:10 -0500
X-Authority-Reason: nr=8
Received: from igld-84-229-96-152.inter.net.il ([84.229.96.152]:57368
	helo=telaviv1.shlomifish.org)
	by gator4065.hostgator.com with esmtpsa (TLS1.2) tls
	TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.93)
	(envelope-from <shlomif@shlomifish.org>) id 1kIR18-000KW2-Cs
	for blinux-list@redhat.com; Wed, 16 Sep 2020 01:34:10 -0500
Received: from telaviv1.shlomifish.org (telaviv1.shlomifish.org [127.0.0.1])
	by telaviv1.shlomifish.org (Postfix) with ESMTP id 09972260050
	for <blinux-list@redhat.com>; Wed, 16 Sep 2020 09:34:08 +0300 (IDT)
Date: Wed, 16 Sep 2020 09:34:07 +0300
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: Strange Happenings in mpv?
Message-ID: <20200916093407.2f4a5577@telaviv1.shlomifish.org>
In-Reply-To: <alpine.DEB.2.23.453.2009151328080.2287550@chime>
References: <alpine.DEB.2.23.453.2009151328080.2287550@chime>
MIME-Version: 1.0
X-AntiAbuse: This header was added to track abuse,
	please include it with any abuse report
X-AntiAbuse: Primary Hostname - gator4065.hostgator.com
X-AntiAbuse: Original Domain - redhat.com
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - shlomifish.org
X-BWhitelist: no
X-Source-IP: 84.229.96.152
X-Source-L: No
X-Exim-ID: 1kIR18-000KW2-Cs
X-Source: 
X-Source-Args: 
X-Source-Dir: 
X-Source-Sender: igld-84-229-96-152.inter.net.il (telaviv1.shlomifish.org)
	[84.229.96.152]:57368
X-Source-Auth: shlomif@shlomifish.org
X-Email-Count: 1
X-Source-Cap: c2hsb21pZjtzaGxvbWlmO2dhdG9yNDA2NS5ob3N0Z2F0b3IuY29t
X-Local-Domain: yes
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false;
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.6
X-MIME-Autoconverted: from quoted-printable to 8bit by
	lists01.pubmisc.prod.ext.phx2.redhat.com id 08G7LeLM023287
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
X-Mimecast-Spam-Score: 0.003
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SGkgQ2hpbWUsCgpPbiBUdWUsIDE1IFNlcCAyMDIwIDEzOjQxOjA1IC0wNzAwIChQRFQpCkxpbnV4
IGZvciBibGluZCBnZW5lcmFsIGRpc2N1c3Npb24gPGJsaW51eC1saXN0QHJlZGhhdC5jb20+IHdy
b3RlOgoKPiBXZWxsLCBqdXN0IGZvciB0aGUgcmVjb3JkLCBJIGFtIHJ1bm5pbmcgRGViaWFuIHNp
ZCwgYXMgSSBjZXJ0YWlubHkgbG92ZSAKPiBnZXR0aW5nIHRoZSBsYXRlc3QgcGFja2FnZXMuIFNv
LCAxIG9mIG15IExpbnV4IGV4cGVydHMgY3JlYXRlZCBhbiBhdWRpbyAKPiBlZGl0b3Igd2hpY2gg
SSBjYW4gdXNlIGFmdGVyIHJpcHBpbmcgc3RyZWFtcy4gSnVzdCByZWNlbnRseSBhbnkgZmlsZXMs
IAo+IGVzcGVjaWFsbHkgZG90IGFhYywgYnV0IHJlYWxseSBhbnl0aGluZywgbm93IHdoZW4gSSBw
bGF5IHRoZW0gaW4gbXB2LCBJIAo+IGNhbm5vdCBhcnJvdyB0aHJvdWdoIHRvIHNhbXBsZSBhdWRp
by4gSSBjYW4gYXJyb3cgd2hlbiBwbGF5aW5nIHRoZXNlIGluIG0gCj4gcGxheWVyLiBTbywgaGVy
ZSdzIGFuIGV2ZW4gc3RyYW5nZXIgYXNwZWN0LiBJZiBJIG1vdmUgYW55IG9mIHRoZXNlIGZpbGVz
IAo+IG9yIHRoZWlyIGRpcmVjdG9yeSwgSSBjYW4gdGhlbiBhcnJvdy4gQXQgdGhhdCBwb2ludCwg
ZXZlbiBpZiBJIGNoYW5nZSBhIAo+IG5hbWUgb2YgYSBmaWxlLCBidXQgaWYgSSBtb3ZlIGl0IGJh
Y2sgdG8gaXRzIG9ycmlnaW5hbCBsb2NhdGlvbiwgYWdhaW4gSSAKPiBjYW5ub3QgYXJyb3cuIEZp
cnN0IHdlIHRob3VnaHQgdGhlcmUgd2FzIHNvbWUgbGlicmFyeSBidWcgaW4gbXB2LCBidXQgdGhl
IAo+IGZhY3QgSSBjYW4gd29yayB3aXRoIHRoZXNlIGZpbGVzIGlmIHRoZXkgYXJlIG1vdmVkLCBz
YXlzIGl0cyBub3QgdGhhdC4gTXkgCj4gZXhwZXJ0IGlzIHVzZWluZyBhIHZsYyBsaWJyYXJ5IHRv
IGVuYWJsZSBtZSB0byBlZGl0LiBDYW4gYW55MSBwbGVhc2UgCj4gaW5mb3JtIGlmIHlvdSd2ZSBl
dmVyIHNlZW4gdGhpcyBvciB3aGF0IEkgY2FuIGRvIHRvIGZpeGl0PyBCeSB0aGUgd2F5IHZsYyAK
PiBzZWVtcyB0byBuZXZlciBsZXQgbWUgYXJyb3cgdGhyb3VnaCBhIGZpbGUuCj4gQ2hpbWUKPiAK
ClNlZW1zIHN0cmFuZ2UuIFRoZSB1cC9kb3duL2xlZnQvcmlnaHQgYXJyb3cga2V5cyBmdW5jdGlv
biB3ZWxsIGluIG1wdiB3aXRoCnNhbXBsZTIuYWFjIGhlcmUgZXZlbiBhZnRlciBJICJjaG1vZCA0
NDQiIGl0OgoKKiBodHRwczovL2ZpbGVzYW1wbGVzLmNvbS9mb3JtYXRzL2FhYwoKKiBodHRwczov
L3d3dy5zaGxvbWlmaXNoLm9yZy9GaWxlcy9maWxlcy9tdXNpYy9tcDMtb2dnL3NhbXBsZTIuYWFj
CgpldmVuICJtcHYgaHR0cHM6Ly93d3cuc2hsb21pZmlzaC5vcmcvRmlsZXMvZmlsZXMvbXVzaWMv
bXAzLW9nZy9zYW1wbGUyLmFhYyIKd29ya3MgZmluZS4KCkkgYW0gdXNpbmcgbWFnZWlhIHY4L3g4
Ni02NCAoYW5kIG5vdGUgdGhhdCBJIGFtIHNpZ2h0ZWQpLgoKPiBfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+IEJsaW51eC1saXN0IG1haWxpbmcgbGlzdAo+
IEJsaW51eC1saXN0QHJlZGhhdC5jb20KPiBodHRwczovL3d3dy5yZWRoYXQuY29tL21haWxtYW4v
bGlzdGluZm8vYmxpbnV4LWxpc3QKPiAKCgoKLS0gCgpTaGxvbWkgRmlzaCAgICAgICBodHRwczov
L3d3dy5zaGxvbWlmaXNoLm9yZy8KUGVybCBIdW1vdXIgLSBodHRwczovL3BlcmwtYmVnaW4ub3Jn
L2h1bW91ci8KCkFmdGVyIGFsbCBpcyBzYWlkIGFuZCBkb25lLCBhIGhlbGwgb2YgYSBsb3QgbW9y
ZSBpcyBzYWlkIHRoYW4gZG9uZS4KICAgIOKAlCBVbmNsZWFyIHNvdXJjZSwgdmlhIGZvcnR1bmUt
bW9kLgoKUGxlYXNlIHJlcGx5IHRvIGxpc3QgaWYgaXQncyBhIG1haWxpbmcgbGlzdCBwb3N0IC0g
aHR0cHM6Ly9zaGxvbS5pbi9yZXBseSAuCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KQmxpbnV4LWxpc3QgbWFpbGluZyBsaXN0CkJsaW51eC1saXN0QHJl
ZGhhdC5jb20KaHR0cHM6Ly93d3cucmVkaGF0LmNvbS9tYWlsbWFuL2xpc3RpbmZvL2JsaW51eC1s
aXN0

