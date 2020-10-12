Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [216.205.24.124])
	by mail.lfdr.de (Postfix) with ESMTP id B1ACF28AF98
	for <lists+blinux-list@lfdr.de>; Mon, 12 Oct 2020 10:04:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1602489871;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=S7bV62nEu/L62VM3rhGgSzDyNco9dRi0b/OpkQzb56A=;
	b=MQtt1OlPDi/Nv7SgKmrH0Np+xVG7hRWrl3jt2RC8FpPekign6uSWlWOz3Q8qwe3v3042UL
	coLuayRVq/N8v07Qk+SkCxSYuTgFRU/ZqDl5esx7TDGAjetO9grqlLVtl+Jrz506zJ+CHl
	dLv1nnTHeTcdh68J2cxcMcFMf6yzgyg=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-27-Q9Qfp6ZtOoS-SUy9WUB8wA-1; Mon, 12 Oct 2020 04:04:29 -0400
X-MC-Unique: Q9Qfp6ZtOoS-SUy9WUB8wA-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com [10.5.11.23])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 85DCB835B4A;
	Mon, 12 Oct 2020 08:04:25 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 8C4D327C2A;
	Mon, 12 Oct 2020 08:04:22 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id AAD1D181A06B;
	Mon, 12 Oct 2020 08:04:13 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.rdu2.redhat.com
	[10.11.54.4])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 09C844NN024586 for <blinux-list@listman.util.phx.redhat.com>;
	Mon, 12 Oct 2020 04:04:04 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id E748D207B2D7; Mon, 12 Oct 2020 08:04:03 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast02.extmail.prod.ext.rdu2.redhat.com [10.11.55.18])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id E27EF207B323
	for <blinux-list@redhat.com>; Mon, 12 Oct 2020 08:04:00 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [207.211.31.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id D62B9801184
	for <blinux-list@redhat.com>; Mon, 12 Oct 2020 08:04:00 +0000 (UTC)
Received: from gateway24.websitewelcome.com (gateway24.websitewelcome.com
	[192.185.51.56]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-149-NP0wkZMJMPKgPQJVAHxn7A-1; Mon, 12 Oct 2020 04:03:58 -0400
X-MC-Unique: NP0wkZMJMPKgPQJVAHxn7A-1
Received: from cm12.websitewelcome.com (cm12.websitewelcome.com [100.42.49.8])
	by gateway24.websitewelcome.com (Postfix) with ESMTP id 1425A6921
	for <blinux-list@redhat.com>; Mon, 12 Oct 2020 02:41:31 -0500 (CDT)
Received: from gator4065.hostgator.com ([192.185.4.76]) by cmsmtp with SMTP
	id RsSZk7kjTn9FWRsSZkx1V1; Mon, 12 Oct 2020 02:41:31 -0500
X-Authority-Reason: nr=8
Received: from igld-84-229-96-152.inter.net.il ([84.229.96.152]:42616
	helo=telaviv1.shlomifish.org)
	by gator4065.hostgator.com with esmtpsa (TLS1.2) tls
	TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.93)
	(envelope-from <shlomif@shlomifish.org>) id 1kRsSY-000i7M-LN
	for blinux-list@redhat.com; Mon, 12 Oct 2020 02:41:30 -0500
Received: from telaviv1.shlomifish.org (telaviv1.shlomifish.org [127.0.0.1])
	by telaviv1.shlomifish.org (Postfix) with ESMTP id C4D48261077
	for <blinux-list@redhat.com>; Mon, 12 Oct 2020 10:41:27 +0300 (IDT)
Date: Mon, 12 Oct 2020 10:41:27 +0300
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: have we any experts on the list?
Message-ID: <20201012104127.6e887e1c@telaviv1.shlomifish.org>
In-Reply-To: <D4A5BA9C3CBF4FE39CAE97397FB516BE@bobsh23aug09>
References: <alpine.NEB.2.23.451.2010111141030.17015@panix1.panix.com>
	<c81de67d-96ad-d809-8f1a-0cbf30051702@gmail.com>
	<D4A5BA9C3CBF4FE39CAE97397FB516BE@bobsh23aug09>
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
X-Exim-ID: 1kRsSY-000i7M-LN
X-Source: 
X-Source-Args: 
X-Source-Dir: 
X-Source-Sender: igld-84-229-96-152.inter.net.il (telaviv1.shlomifish.org)
	[84.229.96.152]:42616
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
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.4
X-MIME-Autoconverted: from quoted-printable to 8bit by
	lists01.pubmisc.prod.ext.phx2.redhat.com id 09C844NN024586
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SGksCgpPbiBTdW4sIDExIE9jdCAyMDIwIDE4OjIwOjQxICswMTAwCkxpbnV4IGZvciBibGluZCBn
ZW5lcmFsIGRpc2N1c3Npb24gPGJsaW51eC1saXN0QHJlZGhhdC5jb20+IHdyb3RlOgoKPiBJcyB0
aGlzIGEgZCZkIHRoaW5nPyAgIG5vdCBwbGF5ZWQgdGhhdCBmb3IgZGVjYWRlcy4gIERpZCB0aGV5
IHVzZWQgdG8gYmUgCj4gY2FsbGVkIE1VRHM/Cj4gCgpObywgdGhleSByZWZlcnJlZCB0byBJUkM6
IGh0dHBzOi8vZW4ud2lraXBlZGlhLm9yZy93aWtpL0ludGVybmV0X1JlbGF5X0NoYXQgLgoKPiBJ
J20gZ3Vlc3NpbmcsIHNvIGxvbmcgc2luY2UgSSBoYWQgdG8gdGhpbmsgYWJvdXQgaXQsIEkgZG9u
J3QgYW55IG1vcmUuCj4gCj4gRW5qb3kuCj4gCj4gLS0tLS0gT3JpZ2luYWwgTWVzc2FnZSAtLS0t
LSAKPiBGcm9tOiAiTGludXggZm9yIGJsaW5kIGdlbmVyYWwgZGlzY3Vzc2lvbiIgPGJsaW51eC1s
aXN0QHJlZGhhdC5jb20+Cj4gVG86ICJMaW51eCBmb3IgYmxpbmQgZ2VuZXJhbCBkaXNjdXNzaW9u
IiA8YmxpbnV4LWxpc3RAcmVkaGF0LmNvbT4KPiBTZW50OiBTdW5kYXksIE9jdG9iZXIgMTEsIDIw
MjAgNDo0NyBQTQo+IFN1YmplY3Q6IFJlOiBoYXZlIHdlIGFueSBleHBlcnRzIG9uIHRoZSBsaXN0
Pwo+IAo+IAo+IHdoYXQgcm9vbT8KPiAKPiAxMS4xMC4yMDIwIDE4OjQyLCBMaW51eCBmb3IgYmxp
bmQgZ2VuZXJhbCBkaXNjdXNzaW9uINC/0LjRiNC10YI6Cj4gPiBJZiB5ZXMsIGRvZXMgYSB3YXkg
ZXhpc3QgZm9yIGEgdXNlciBlbnRlcmluZyBhIHJvb20gdG8gbGlzdCB0cmFmZmljIHRoYXQKPiA+
IGhhcHBlbmVkIGluIHRoZSByb29tIGJlZm9yZSB0aGUgdXNlciBlbnRlcmVkIHRoZSByb29tPwo+
ID4KPiA+Cj4gPiAtLQo+ID4KPiA+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fCj4gPiBCbGludXgtbGlzdCBtYWlsaW5nIGxpc3QKPiA+IEJsaW51eC1saXN0
QHJlZGhhdC5jb20KPiA+IGh0dHBzOi8vd3d3LnJlZGhhdC5jb20vbWFpbG1hbi9saXN0aW5mby9i
bGludXgtbGlzdAo+ID4gIAoKCgotLSAKClNobG9taSBGaXNoICAgICAgIGh0dHBzOi8vd3d3LnNo
bG9taWZpc2gub3JnLwpXaGF0IGRvZXMg4oCcWmlvbmlzbeKAnSBtZWFuPyAtIGh0dHBzOi8vc2hs
b20uaW4vZGVmLXppb25pc20KCknigJlkIGxvdmUgdG8gY2hhbmdlIHRoZSB3b3JsZCwgYnV0IHRo
ZXkgd29u4oCZdCBnaXZlIG1lIHRoZSBzb3VyY2UgY29kZS4KICAgIOKAlCBVbmtub3duCgpQbGVh
c2UgcmVwbHkgdG8gbGlzdCBpZiBpdCdzIGEgbWFpbGluZyBsaXN0IHBvc3QgLSBodHRwczovL3No
bG9tLmluL3JlcGx5IC4KCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwpCbGludXgtbGlzdCBtYWlsaW5nIGxpc3QKQmxpbnV4LWxpc3RAcmVkaGF0LmNvbQpo
dHRwczovL3d3dy5yZWRoYXQuY29tL21haWxtYW4vbGlzdGluZm8vYmxpbnV4LWxpc3Q=

