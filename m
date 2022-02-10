Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id DE6B74B096A
	for <lists+blinux-list@lfdr.de>; Thu, 10 Feb 2022 10:26:27 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1644485186;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=VreBomQGKFNIF6qsz9qJH6HIK0Bric68VY6hZH+Hifc=;
	b=K/WXl8vWsHyTE1Jok90/ZjgBny+yZeaNoOAo6vYlueLhpe40MwbH28EftklSbbogbUPaLd
	pbiKSuaY2nfFwy00FNP2rttC6fF1lNsD1QmWrKN9kZA1KzAtzuOb0gPJ/LVA0OZTZAqMrq
	eWodH1/2ELukH62FrUVUN4xicqORVQw=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-240-WQuAe0OaNfShmoNvLrl1zA-1; Thu, 10 Feb 2022 04:26:23 -0500
X-MC-Unique: WQuAe0OaNfShmoNvLrl1zA-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.12])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 8CCB710247AA;
	Thu, 10 Feb 2022 09:26:18 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 53BF16C1A6;
	Thu, 10 Feb 2022 09:26:14 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 155EC180B654;
	Thu, 10 Feb 2022 09:26:03 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.rdu2.redhat.com
	[10.11.54.5])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 21A9PtcL008032 for <blinux-list@listman.util.phx.redhat.com>;
	Thu, 10 Feb 2022 04:25:55 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id E93E1778B; Thu, 10 Feb 2022 09:25:54 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast08.extmail.prod.ext.rdu2.redhat.com [10.11.55.24])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id E5817778A
	for <blinux-list@redhat.com>; Thu, 10 Feb 2022 09:25:50 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [205.139.110.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 401D83800E97
	for <blinux-list@redhat.com>; Thu, 10 Feb 2022 09:25:50 +0000 (UTC)
Received: from darkstar.slint.fr (darkstar.slint.fr [172.105.89.79]) by
	relay.mimecast.com with ESMTP id us-mta-350-Cg4QDOnBM0KfmOIJLAjT-A-1;
	Thu, 10 Feb 2022 04:25:48 -0500
X-MC-Unique: Cg4QDOnBM0KfmOIJLAjT-A-1
Received: from [192.168.1.37] (men75-h08-176-172-247-100.dsl.sta.abo.bbox.fr
	[176.172.247.100])
	by darkstar.slint.fr (Postfix) with ESMTPSA id 5AAE420394
	for <blinux-list@redhat.com>; Thu, 10 Feb 2022 09:25:36 +0100 (CET)
Message-ID: <023bb412-b406-1227-9b44-178e0f198df7@slint.fr>
Date: Thu, 10 Feb 2022 10:25:35 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
	Thunderbird/91.6.0
Subject: Re: Is Youtube-viewer Broken?
To: blinux-list@redhat.com
References: <bd935680-f9c0-3efe-8a8-3d3bf0fee08d@hubert-humphrey.com>
	<b767e62d-8e12-46e2-b412-fc376ae8b073@slint.fr>
	<d4c2176a-4263-ea61-a73-c2aa8232c2@hubert-humphrey.com>
	<5b90d33-8263-df1f-46b7-775bead4b6b@panix.com>
In-Reply-To: <5b90d33-8263-df1f-46b7-775bead4b6b@panix.com>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.79 on 10.11.54.5
X-MIME-Autoconverted: from quoted-printable to 8bit by
	lists01.pubmisc.prod.ext.phx2.redhat.com id 21A9PtcL008032
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.12
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SGVsbG8sCgpTbGludCBiZWluZyBub3QgQXJjaCwgeXQtZGxwIHdpbGwgbm90IGJlIHVwZ3JhZGVk
IGluIFNsaW50IGV2ZXJ5IHRpbWUgdGhlcmUgaXMgYQpuZXcgcmVsZWFzZSwgd2hpY2ggaXMgdmVy
eSBvZnRlblsxXSwgYW5kIG91ciBwYWNrYWdlIGlzIG5vdCB0aGF0IG9sZCAodmVyc2lvbgoyMDIx
LjEyLjAzCSkuIEhvd2V2ZXIsIHdoYXQgZG8geW91IG1pc3MgaW4gdGhlIGN1cnJlbnRseSBwcm92
aWRlZCB2ZXJzaW9uPwoKSW4gYW55IGNhc2UgeXQtZGxwIHdpbGwgYmUgdXBncmFkZWQgaW4gdXBj
b21pbmcgU2xpbnQgMTUuMApDaGVlcnMsCkRpZGllcgoKWzFdIFR5cGluZyAiZ2l0IHRhZyAtbCAi
MjAyMSp8d2MgLWwiIGluIHRoZSBjbG9uZWQgdXBzdHJlYW0gcmVwb3NpdG9yeSB0ZWxscyB1cwp0
aGF0IHRoZXJlIGhhdmUgYmVlbiBubyBsZXNzIHRoYW4gNTAgdXBzdHJlYW0gcmVsZWFzZXMgb2Yg
eXQtZGxwIGxhc3QgeWVhci4KCkxlIDEwLzAyLzIwMjIgw6AgMDE6NTYsIExpbnV4IGZvciBibGlu
ZCBnZW5lcmFsIGRpc2N1c3Npb24gYSDDqWNyaXTCoDoKPiB5dC1kbHAgb24gc2xpbnQgaXMgb3V0
ZGF0ZWQuCj4gCj4gCj4gT24gV2VkLCA5IEZlYiAyMDIyLCBMaW51eCBmb3IgYmxpbmQgZ2VuZXJh
bCBkaXNjdXNzaW9uIHdyb3RlOgo+IAo+PiBIaSBEaWRpZXItYW5kLXRoYW5rcyBmb3IgeW91ciBz
dWdnZXN0aW9ucy4gSSBzdXBwb3NlZGx5IGhhZCBwaXBlLXZpZXdlcgo+PiBpbnN0YWxsZWQsIGJ1
dCBJIGdldCBzaW1pbGFyIGVycm9ycyB0byBvbmVzIEkgc2VudCBhbG9uZyBlYXJsaWVyLiBZZXMs
IGFtCj4+IHVzZWluZyB5dC1kbHAgaW5zdGVhZCBvZiB5b3V0dWJlLWRsIHRvIGdyYWIsIGJ1dCBJ
ICBsaWtlIHlvdXR1YmUtdmlld2VyIGFzIGl0Cj4+IHdpbGwgZGlzcGxheSA1MCByZXN1bHRzLWFu
ZC1hZnRlciBteSBzdWdnZXN0aW9ucyBoYXMgYSBmYXZvcml0ZXMgbGlzdCBmb3IKPj4gY2hhbm5l
bHMuIEF0IGxlYXN0IDEgb2YgVHJpemVuJ3Mgb3RoZXIgcHJvamVjdHMgZGlzcGxheWVkIDIgY29u
c2VjdXRpdmUgZ3JvdXBzCj4+IG9mIGR1cGxpY2F0ZSByZXN1bHRzLiBZb3V0dWJlLXZpZXdlciBk
b2VzIHRoZSB0cmljaywgYnV0IEkgY2VydGFpbmx5IHdpc2ggSQo+PiBjb3VsZCBnbyBmYXIgcGFz
dCA1MCByZXN1bHRzLiBUaGFuayB5b3UKPj4gQ2hpbWUKCgpfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwpCbGludXgtbGlzdCBtYWlsaW5nIGxpc3QKQmxpbnV4
LWxpc3RAcmVkaGF0LmNvbQpodHRwczovL2xpc3RtYW4ucmVkaGF0LmNvbS9tYWlsbWFuL2xpc3Rp
bmZvL2JsaW51eC1saXN0

