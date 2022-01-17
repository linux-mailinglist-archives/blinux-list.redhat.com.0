Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id D0E4449009E
	for <lists+blinux-list@lfdr.de>; Mon, 17 Jan 2022 04:41:39 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1642390898;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=HQ3ZsJd6pAS16R945Fk68v24pDrPvAY91Fd5KGujw+M=;
	b=ejZfVCemce7NZS4bSRU/fmwTWjno7R50GNEufAfuhj8AK7vliAKDAWPMvFva9naAZvkvRd
	5H75Cw2D3OS835ONkxwfza+shDn3tLmY3sjq2kJGa208sH9EYRl0suGoG5UeBc8uVP4w+t
	KE/IA4BDWKCeqUXfkDqBFJll+SMacCA=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-265-yTPWqqDgPm2NyhP0JLx1aQ-1; Sun, 16 Jan 2022 22:41:35 -0500
X-MC-Unique: yTPWqqDgPm2NyhP0JLx1aQ-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.11])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id B931185B6CC;
	Mon, 17 Jan 2022 03:41:31 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 4778E56F7C;
	Mon, 17 Jan 2022 03:41:31 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 8232F1809CB8;
	Mon, 17 Jan 2022 03:41:30 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx09.intmail.prod.int.rdu2.redhat.com
	[10.11.54.9])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 20H3ZxUo010314 for <blinux-list@listman.util.phx.redhat.com>;
	Sun, 16 Jan 2022 22:36:00 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id D743C492CA7; Mon, 17 Jan 2022 03:35:59 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast07.extmail.prod.ext.rdu2.redhat.com [10.11.55.23])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id D261D492CA4
	for <blinux-list@redhat.com>; Mon, 17 Jan 2022 03:35:59 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [205.139.110.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 9CB9F3C1BA22
	for <blinux-list@redhat.com>; Mon, 17 Jan 2022 03:35:59 +0000 (UTC)
Received: from gateway8.unifiedlayer.com (gateway8.unifiedlayer.com
	[67.20.81.134]) by relay.mimecast.com with ESMTP with STARTTLS
	(version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-26-_BuAHVi3O7Gznhu76rjZaA-1; Sun, 16 Jan 2022 22:35:57 -0500
X-MC-Unique: _BuAHVi3O7Gznhu76rjZaA-1
Received: from cm4.websitewelcome.com (unknown [108.167.139.16])
	by gateway8.unifiedlayer.com (Postfix) with ESMTP id C30C72009FACF
	for <blinux-list@redhat.com>; Sun, 16 Jan 2022 21:13:59 -0600 (CST)
Received: from uscentral455.accountservergroup.com ([174.136.13.174])
	by cmsmtp with ESMTP
	id 9IT1nO7bUcfn89IT1nDYt5; Sun, 16 Jan 2022 21:13:59 -0600
X-Authority-Reason: nr=8
Received: from 76-222-220-222.lightspeed.rcsntx.sbcglobal.net
	([76.222.220.222]:55374 helo=bigbox.attlocal.net)
	by uscentral455.accountservergroup.com with esmtpsa (TLS1.2) tls
	TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.93)
	(envelope-from <blinux.list@thechases.com>) id 1n9IT1-002Iyh-G3
	for blinux-list@redhat.com; Sun, 16 Jan 2022 21:13:59 -0600
Date: Sun, 16 Jan 2022 21:13:58 -0600
To: blinux-list@redhat.com
Subject: Re: looking for accessible music library app
Message-ID: <20220116211358.3eb943f5@bigbox.attlocal.net>
In-Reply-To: <7197b2a9-e23a-de3e-906f-9cd9cc2a65e0@icloud.com>
References: <7197b2a9-e23a-de3e-906f-9cd9cc2a65e0@icloud.com>
MIME-Version: 1.0
X-AntiAbuse: This header was added to track abuse,
	please include it with any abuse report
X-AntiAbuse: Primary Hostname - uscentral455.accountservergroup.com
X-AntiAbuse: Original Domain - redhat.com
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - thechases.com
X-BWhitelist: no
X-Source-IP: 76.222.220.222
X-Source-L: No
X-Exim-ID: 1n9IT1-002Iyh-G3
X-Source: 
X-Source-Args: 
X-Source-Dir: 
X-Source-Sender: 76-222-220-222.lightspeed.rcsntx.sbcglobal.net
	(bigbox.attlocal.net) [76.222.220.222]:55374
X-Source-Auth: tim@thechases.com
X-Email-Count: 1
X-Source-Cap: dGhlY2hhc2U7dGhlY2hhc2U7dXNjZW50cmFsNDU1LmFjY291bnRzZXJ2ZXJncm91cC5jb20=
X-Local-Domain: yes
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.85 on 10.11.54.9
X-MIME-Autoconverted: from quoted-printable to 8bit by
	lists01.pubmisc.prod.ext.phx2.redhat.com id 20H3ZxUo010314
X-loop: blinux-list@redhat.com
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.11
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

VGltIGhlcmUuICBJdCBtaWdodCBkZXBlbmQgb24geW91ciBkZWZpbml0aW9ucyBvZiAiYWNjZXNz
aWJsZSIgKGRvCnlvdSBwcmVmZXIgY29tbWFuZC1saW5lLCBUVUksIEdVSSwgb3Igd2ViIGludGVy
ZmFjZT8pIGFuZCAibXVzaWMKbGlicmFyeSIgKGp1c3QgbG9jYWwgTVAzL09HRy9XQVYgZmlsZXMs
IG9yIGludGVyZmFjaW5nIHdpdGggc29tZSB3ZWIKY2F0YWxvZyBsaWtlIGlUdW5lcy9TcG90aWZ5
L0FtYXpvbiwgZXRjKS4KCkZvciBsb2NhbCBjb2xsZWN0aW9ucywgdGhlICJtcGQiICgibXVzaWMg
cGxheWVyIGRhZW1vbiIpIG9mZmVycyBhCm51bWJlciBvZiBmcm9udC1lbmRzIGluY2x1ZGluZyBD
TEksIFRVSSwgR1VJLCBhbmQgd2ViOgoKaHR0cHM6Ly93d3cubXVzaWNwZC5vcmcvY2xpZW50cy8K
CkkgZG9uJ3Qga25vdyBob3cgd2VsbCBpdCBpbnRlcmFjdHMgd2l0aCAzcmQtcGFydHkgc2Vydmlj
ZXMgYW5kCnN0cmVhbWluZy4KCkhvd2V2ZXIsIEkgZm91bmQgaXQgYSBiaXQgbW9yZSBjb21wbGV4
IHRvIHNldCB1cC4gIEkndmUgZG9uZSBpdCBhCmNvdXBsZSBvZiB0aW1lcyB0byB0ZXN0IHRoaW5n
cyBmb3Igb3RoZXIgZm9sa3MsIGJ1dCBteSBkYWlseS1kcml2ZXIKZm9yIHBsYXlpbmcgbXkgbXVz
aWMgY29sbGVjdGlvbiBpcyAiY211cyIsIGEgY3Vyc2VzLWJhc2VkIFRVSSB0aGF0CmhhbmRsZXMg
bXkgbG9jYWwgbGlicmFyeSBvZiBtdXNpYyB3aXRob3V0IGlzc3VlLiAgSXQgaGl0cyBhIHN3ZWV0
CnNwb3Qgb2YgZWFzeSBzZXR1cCwgcG93ZXJmdWwgZmVhdHVyZXMsIGxpZ2h0IHJlc291cmNlIHVz
YWdlICh3b3JrcwpmaW5lIG9uIGFuIG9sZGVyIFJQaSksIGFuZCBrZXlib2FyZCBhY2Nlc3NpYmls
aXR5LCBhbmQgaXQgb2ZmZXJzIGEKQ0xJIHJlbW90ZS1jb250cm9sIGludGVyZmFjZSBzbyBJIGNh
biBtYXAga2V5cyBpbiBteSB3aW5kb3ctbWFuYWdlcgp0byBzZW5kIGNvbW1hbmRzIHRvIGNvbnRy
b2wgaXQuICBJIGtub3cgdGhlIE1QRCBjb21tYW5kLWxpbmUgY2xpZW50CmNhbiBkbyB0aGUgc2Ft
ZSB0aGluZyBmb3IgY29udHJvbGxpbmcsIGJ1dCB0aGUgc2V0dXAgd2FzIGEgYml0IG1vcmUKZmlu
aWNreS4KCkZvcnR1bmF0ZWx5LCBtcGQsIG1wYywgYW5kIGNtdXMgc2hvdWxkIGFsbCByZWFkaWx5
IGJlIGF2YWlsYWJsZSBpbgpwYWNrYWdlIHJlcG9zIG9uIExpbnV4LCBGcmVlQlNELCBhbmQgT3Bl
bkJTRCwgc28geW91IGNhbiB0cnkgdGhlbSBhbGwKYW5kIHNlZSB3aGljaCB3b3JrIGZvciB5b3Uu
CgotdGltCgpPbiBKYW51YXJ5IDE2LCAyMDIyLCBMaW51eCBmb3IgYmxpbmQgZ2VuZXJhbCBkaXNj
dXNzaW9uIHdyb3RlOgo+ICDCoCBIaSwKPiAKPiBJcyB0aGVyZSDCoCBhIGFjY2Vzc2libGUgbXVz
aWMgbGlicmFyeSBhcHAgbGlrZSBpVHVuZXM/Cj4gCj4gVGhhbmtzLAo+IAo+IFJvYgo+IAo+IAo+
IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCj4gQmxpbnV4
LWxpc3QgbWFpbGluZyBsaXN0Cj4gQmxpbnV4LWxpc3RAcmVkaGF0LmNvbQo+IGh0dHBzOi8vbGlz
dG1hbi5yZWRoYXQuY29tL21haWxtYW4vbGlzdGluZm8vYmxpbnV4LWxpc3QKCgpfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpCbGludXgtbGlzdCBtYWlsaW5n
IGxpc3QKQmxpbnV4LWxpc3RAcmVkaGF0LmNvbQpodHRwczovL2xpc3RtYW4ucmVkaGF0LmNvbS9t
YWlsbWFuL2xpc3RpbmZvL2JsaW51eC1saXN0

