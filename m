Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [216.205.24.124])
	by mail.lfdr.de (Postfix) with ESMTP id 73D9E3EDCC7
	for <lists+blinux-list@lfdr.de>; Mon, 16 Aug 2021 20:05:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1629137104;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=RFy9gneBqSF+AdqyZC1Eqd1qXU2SKuZblLvEyU5kdn4=;
	b=MKcbURYSDdsHa0D6CNLKOvjPC8QqVKnl/D0srzNnRub39clCASU2WKCAh1A+ZE3c1Pg7SB
	TiscY59qEFlHeIB1Bxu5S3CI8GarGvtRMzVlSqA+c9TRNmy/sUpcR5CM7cs9omG6gryewx
	ht19+bPNxNbCtJ4s3+1P+zokfM+aPP4=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-579-Wqd2A3iXObiwet8Q6V1O0w-1; Mon, 16 Aug 2021 14:05:02 -0400
X-MC-Unique: Wqd2A3iXObiwet8Q6V1O0w-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com [10.5.11.16])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id E19861008070;
	Mon, 16 Aug 2021 18:04:57 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 45B375C1D5;
	Mon, 16 Aug 2021 18:04:57 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id DE9E5181A3ED;
	Mon, 16 Aug 2021 18:04:55 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.rdu2.redhat.com
	[10.11.54.5])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 17GI4oU8005196 for <blinux-list@listman.util.phx.redhat.com>;
	Mon, 16 Aug 2021 14:04:50 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id E7EDB44006; Mon, 16 Aug 2021 18:04:49 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast03.extmail.prod.ext.rdu2.redhat.com [10.11.55.19])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id E3B9BAEC8E
	for <blinux-list@redhat.com>; Mon, 16 Aug 2021 18:04:47 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[205.139.110.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 52575800FFB
	for <blinux-list@redhat.com>; Mon, 16 Aug 2021 18:04:47 +0000 (UTC)
Received: from darkstar.slint.fr (darkstar.slint.fr [172.105.89.79]) by
	relay.mimecast.com with ESMTP id us-mta-588-cJJWjHolNwqWz4wmSwkPSQ-1;
	Mon, 16 Aug 2021 14:04:44 -0400
X-MC-Unique: cJJWjHolNwqWz4wmSwkPSQ-1
Received: from ici.slint.fr (sfa89-1-78-208-157-71.fbx.proxad.net
	[78.208.157.71])
	by darkstar.slint.fr (Postfix) with ESMTPSA id 13B06A3E94;
	Mon, 16 Aug 2021 18:04:35 +0200 (CEST)
Subject: Re: Anyone else experiencing Firefox 91 crashes?
To: blinux-list@redhat.com, orca-list <orca-list@gnome.org>
References: <17f6f79e-2927-3ad4-7915-42053461d773@protonmail.com>
	<20210816172548.7pw3tmt57aqoc2ng@alex-pc>
Message-ID: <a7b7f280-7231-f43e-504b-fa113bac8072@slint.fr>
Date: Mon, 16 Aug 2021 20:04:42 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
	Thunderbird/78.13.0
MIME-Version: 1.0
In-Reply-To: <20210816172548.7pw3tmt57aqoc2ng@alex-pc>
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
	lists01.pubmisc.prod.ext.phx2.redhat.com id 17GI4oU8005196
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"

VGhpcyBpc3N1ZSBoYXBwZW5zIGhlcmUgb24gU2xpbnQgb25seSBpZiBPcmNhIGlzIGFjdGl2ZSAo
dXNpbmcgYSAKcmVwYWNrYWdlZCBvZmZpY2lhbCBiaW5hcnkgb2YgZmlyZWZveC05MSkuCgpUaGlz
IGlzIGNvbnNpc3RlbnQgd2l0aCBBbGV4YW5kZXIncyBhc3N1bXB0aW9uCgpDaGVlcnMsCkRpZGll
cgotLQpEaWRpZXIgU3BhaWVyClNsaW50IG1haW50YWluZXIKZGlpZGVyIChhdCkgc2xpbnQgKGRv
dCkgZnIKCgpMZSAxNi8wOC8yMDIxIMOgIDE5OjI1LCBMaW51eCBmb3IgYmxpbmQgZ2VuZXJhbCBk
aXNjdXNzaW9uIGEgw6ljcml0wqA6Cj4gT24gTW9uLCBBdWcgMTYsIDIwMjEgYXQgMDI6NDY6MjVQ
TSArMDAwMCwgTGludXggZm9yIGJsaW5kIGdlbmVyYWwgZGlzY3Vzc2lvbiB3cm90ZToKPj4gSGVs
bG8gbGlzdCwKPj4KPj4gSSBkb24ndCByZW1lbWJlciB3aGVuIGRpZCBJIHVwZGF0ZSBteSBzb2Z0
d2FyZSB0aGUgbGFzdCB0aW1lLCBidXQgSSBoYXZlCj4+IEZpcmVmb3ggOTEgNjQtYml0IGluc3Rh
bGxlZCBhbmQgaW4gdGhlIGZldyByZWNlbnQgZGF5cywgaXQncyBjcmFzaGluZwo+PiBxdWl0ZSBp
bnRlbnNpdmVseS4KPj4KPj4KPj4gTGlrZSwgSSBsYXVuY2ggaXQsIHR5cGUgc29tZXRoaW5nIGlu
dG8gdGhlIHNlYXJjaCBmaWVsZC4uLiBDcmFzaCEKPj4KPj4gSSBsYXVuY2ggaXQgYWdhaW4sIHR5
cGUgZ29vZ2xlIHVybCB0byB0aGUgc2VhcmNoIGZpZWxkLCBlbnRlciBteSBzZWFyY2gKPj4gdGVy
bSBvbiB0aGUgcGFnZSBhbmQgd2hpbGUgdHlwaW5nLi4uIENyYXNoIQo+Pgo+PiBJIHdhbnQgdG8g
aW5zdGFsbCBhbiBhZGRvbiBhbmQgZXZlbiBpZiBJIHNvbWVob3cgbWFuYWdlIHRvIGVudGVyIG15
Cj4+IHF1ZXJ5IGFuZCBnZXQgdGhlIHNlYXJjaCByZXN1bHRzLCB3aGVuIEkgYWN0dWFsbHkgY2xp
Y2sgb24gb25lLi4uIENyYXNoIQo+Pgo+Pgo+PiBJdCdzIHJlYWxseSBhbm5veWluZywgdGhlIGJy
b3dzZXIgaXMgYWxtb3N0IHVudXNhYmxlLiBNeSBjYWNoZSBhbmQKPj4gY29va2llcyBhcmUgY2xl
YXJlZCBhdXRvbWF0aWNhbGx5IGFmdGVyIGV2ZXJ5IHJ1biwgc28gdGhpcyBzaG91bGRuJ3QgYmUK
Pj4gdGhlIHNvdXJjZSBvZiB0aGUgaXNzdWVzLgo+Pgo+PiBJJ3ZlIHRyaWVkIHRoZSB0cm91Ymxl
c2hvb3RpbmcgbW9kZSBhbmQgaXQgYmVoYXZlcyBpbiB0aGUgc2FtZSB3YXksIHNvCj4+IGV4dGVu
c2lvbnMgYWxzbyBkb24ndCBzZWVtIHRvIGJlIGd1aWx0eS4KPj4KPj4gSSBoYXZlIGV2ZW4gZG93
bmxvYWRlZCBhIHBvcnRhYmxlIHZlcnNpb24gb2YgdGhlIGJyb3dzZXIgZnJvbSB0aGUKPj4gTW96
aWxsYSB3ZWJzaXRlIGFuZCBpdCBjcmFzaGVzIGFzIHdlbGwuCj4+Cj4+Cj4+IFRoZSBvbmx5IHRo
aW5nIHRoYXQgY29tZXMgb24gbXkgbWluZCB0aGF0IGl0J3MgYSBidWcgaW4gdGhlIGJyb3dzZXIs
IGJ1dAo+PiBJIGRpZG4ndCBmaW5kIGFueXRoaW5nIGFib3V0IGl0IHdoZW4gc2VhcmNoaW5nLgo+
Pgo+Pgo+PiBEb2VzIGFueW9uZSBoYXZlIHNpbWlsYXIgZXhwZXJpZW5jZXM/Cj4+Cj4+Cj4+IEZp
cmVmb3ggOTEuMCA2NC1iaXQsIFVidW50dSBtYXRlIDIwLjA0IDY0LWJpdC4KPj4KPj4KPj4gQmVz
dCByZWdhcmRzCj4+Cj4+Cj4+IFJhc3Rpc2xhdgo+IAo+IGkgZmFjZWQgdGhpcyBwcm9ibGVtIHRv
by4gZm9yIG5vdyBJIGhhdmUgcm9sbGVkIGJhY2sgdG8gZmYgOTAuMC4yCj4gYW5kIHRyeSB0byB1
c2UgY2hyb20gd2hlbmV2ZXIgcG9zc2libGUuCj4gSSB0aGluayB0aGVzZSBjcmFzaGVzIGhhdmUg
c29tZXRoaW5nIHRvIGRvIHdpdGggdGhlIGFjY2Vzc2liaWxpdHkgc3RhY2suIG90aGVyd2lzZSB0
aGV5IHdvdWxkIGhhdmUgYmVlbiBub3RpY2VkIGVhcmxpZXIuCj4gCj4gLS0KPiBTaW5jZXJlbHks
IEFsZXhhbmRlcgo+IAo+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fCj4gQmxpbnV4LWxpc3QgbWFpbGluZyBsaXN0Cj4gQmxpbnV4LWxpc3RAcmVkaGF0LmNv
bQo+IGh0dHBzOi8vbGlzdG1hbi5yZWRoYXQuY29tL21haWxtYW4vbGlzdGluZm8vYmxpbnV4LWxp
c3QKPiAKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpC
bGludXgtbGlzdCBtYWlsaW5nIGxpc3QKQmxpbnV4LWxpc3RAcmVkaGF0LmNvbQpodHRwczovL2xp
c3RtYW4ucmVkaGF0LmNvbS9tYWlsbWFuL2xpc3RpbmZvL2JsaW51eC1saXN0

