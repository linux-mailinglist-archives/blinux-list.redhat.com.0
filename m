Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [216.205.24.124])
	by mail.lfdr.de (Postfix) with ESMTP id 593883DC983
	for <lists+blinux-list@lfdr.de>; Sun,  1 Aug 2021 05:48:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1627789736;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=WribFp589MqkxXUk3ZcKd5sPYEvy4UKkC6nPRbXAYIc=;
	b=iCb9eqzb3ydqUJOAuAuwbwPpw9HlAmniYQfFTz3xHjwdF7tRnMe3KcZdYP8YAorKNaGfIO
	dECelZOUZSp/cz92o6R8I36+efjX67h4FEVFLGRrQoRxC+LL1m7Nmh/u42tYO242DRvQAm
	2+mVXdAmidV9TTzNwfdXvIh7rE1L37g=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-45-tWnJxaP2OsmLWGVmKtV-qg-1; Sat, 31 Jul 2021 23:48:42 -0400
X-MC-Unique: tWnJxaP2OsmLWGVmKtV-qg-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com [10.5.11.16])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 96F76180FCCB;
	Sun,  1 Aug 2021 03:48:38 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id DB4A35C1A3;
	Sun,  1 Aug 2021 03:48:37 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 83596180BAB1;
	Sun,  1 Aug 2021 03:48:36 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.rdu2.redhat.com
	[10.11.54.6])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 1713lElX017127 for <blinux-list@listman.util.phx.redhat.com>;
	Sat, 31 Jul 2021 23:47:15 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id B521E2157F37; Sun,  1 Aug 2021 03:47:14 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast05.extmail.prod.ext.rdu2.redhat.com [10.11.55.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id B059B2157F36
	for <blinux-list@redhat.com>; Sun,  1 Aug 2021 03:47:12 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[207.211.31.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 3F7FF800260
	for <blinux-list@redhat.com>; Sun,  1 Aug 2021 03:47:12 +0000 (UTC)
Received: from gateway23.websitewelcome.com (gateway23.websitewelcome.com
	[192.185.50.104]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-47-G7XEIsdqNX6LzEXPAXDUOQ-1; Sat, 31 Jul 2021 23:47:09 -0400
X-MC-Unique: G7XEIsdqNX6LzEXPAXDUOQ-1
Received: from cm12.websitewelcome.com (cm12.websitewelcome.com [100.42.49.8])
	by gateway23.websitewelcome.com (Postfix) with ESMTP id B8E7F8504
	for <blinux-list@redhat.com>; Sat, 31 Jul 2021 22:24:25 -0500 (CDT)
Received: from box2167.bluehost.com ([50.87.253.68]) by cmsmtp with SMTP
	id A25RmDyDnBvjyA25Rm4gHp; Sat, 31 Jul 2021 22:24:25 -0500
X-Authority-Reason: nr=8
Received: from [104.60.194.40] (port=57340 helo=BREWCREW)
	by box2167.bluehost.com with esmtpsa (TLS1.2) tls
	TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
	(envelope-from <kelly@kellford.com>) id 1mA25R-003sLv-6M
	for blinux-list@redhat.com; Sat, 31 Jul 2021 21:24:25 -0600
To: <blinux-list@redhat.com>
References: <017601d78622$98193d80$c84bb880$@kellford.com>	<d51f3b64-b207-d46a-80fd-0c25dd18699f@protonmail.com>
	<CAM+Q2c6xO87oSJ76K9wJEiiiHGBdS4x3eKPiH11MJfYreh0gVg@mail.gmail.com>
In-Reply-To: <CAM+Q2c6xO87oSJ76K9wJEiiiHGBdS4x3eKPiH11MJfYreh0gVg@mail.gmail.com>
Subject: RE: Setup of Raspberry PI
Date: Sat, 31 Jul 2021 22:24:24 -0500
Message-ID: <00a001d78684$ba980910$2fc81b30$@kellford.com>
MIME-Version: 1.0
Thread-Index: AQGJcHVHpvWeH6eeC9VMrZpuPoIKaAE33VDYAmbLQQmr3TLbkA==
X-AntiAbuse: This header was added to track abuse,
	please include it with any abuse report
X-AntiAbuse: Primary Hostname - box2167.bluehost.com
X-AntiAbuse: Original Domain - redhat.com
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - kellford.com
X-BWhitelist: no
X-Source-IP: 104.60.194.40
X-Source-L: No
X-Exim-ID: 1mA25R-003sLv-6M
X-Source: 
X-Source-Args: 
X-Source-Dir: 
X-Source-Sender: (BREWCREW) [104.60.194.40]:57340
X-Source-Auth: kelly@kellford.com
X-Email-Count: 1
X-Source-Cap: a2VsbHlmb3I7a2VsbHlmb3I7Ym94MjE2Ny5ibHVlaG9zdC5jb20=
X-Local-Domain: yes
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.6
X-MIME-Autoconverted: from quoted-printable to 8bit by
	lists01.pubmisc.prod.ext.phx2.redhat.com id 1713lElX017127
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
Content-Language: en-us
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

VGhhbmsgeW91IGZvciBhbGwgdGhlIGhpbnRzIGFuZCBwb2ludGVycy4gIEkgZ290IHRoaXMgd29y
a2luZyB3aXRoIHRoZSBkZWZhdWx0IGltYWdlIGluIHRoZSBlbmQuICBJIGhhZCBmb3Jnb3R0ZW4g
YWJvdXQgdGhlIGFiaWxpdHkgdG8gYWRkIGFuIHNzaCBmaWxlIHRvIG15IGJvb3QgZGV2aWNlIGFu
ZCBjb25uZWN0IHRoYXQgd2F5LgoKSSByZWFsbHkgYXBwcmVjaWF0ZSB0aGUgYW5zd2VycyBoZXJl
LgoKS2VsbHkKCi0tLS0tT3JpZ2luYWwgTWVzc2FnZS0tLS0tCkZyb206IGJsaW51eC1saXN0LWJv
dW5jZXNAcmVkaGF0LmNvbSA8YmxpbnV4LWxpc3QtYm91bmNlc0ByZWRoYXQuY29tPiBPbiBCZWhh
bGYgT2YgTGludXggZm9yIGJsaW5kIGdlbmVyYWwgZGlzY3Vzc2lvbgpTZW50OiBTYXR1cmRheSwg
SnVseSAzMSwgMjAyMSAxOjMyIFBNClRvOiBibGludXgtbGlzdEByZWRoYXQuY29tClN1YmplY3Q6
IFJlOiBTZXR1cCBvZiBSYXNwYmVycnkgUEkKCkkgaW5zdGFsbGVkIFVidW50dSBzZXJ2ZXIgdXNp
bmcgdGhlIFJhc3BiZXJyeSBQaSBpbWFnZXIsIHRoZW4gc2ltcGx5IHdvcmtlZCB3L2l0IHZpYSBT
U0guCgpPbiA3LzMxLzIxLCBMaW51eCBmb3IgYmxpbmQgZ2VuZXJhbCBkaXNjdXNzaW9uIDxibGlu
dXgtbGlzdEByZWRoYXQuY29tPiB3cm90ZToKPiBIZWxsbywKPgo+IEkgZG9uJ3Qga25vdyBhYm91
dCB0aGUgb2xkZXIgdmVyc2lvbnMgb2YgUGksIGJ1dCBJJ3ZlIHNldCB1cCA0QiAKPiBzdWNjZXNz
ZnVsbHkgd2l0aG91dCBhbnkgc2lnaHRlZCBhc3Npc3RhbmNlIHVzaW5nIHRoZSBvZmZpY2lhbCAK
PiBSYXNwYmVycnkgT1MgaW1hZ2UuCj4KPgo+IFByYW5hdiBMYXYgd3JvdGUgYSB2ZXJ5IGdvb2Qg
dHV0b3JpYWwgb24gaGlzIGJsb2c6Cj4KPiBodHRwczovL3RlY2hlc290ZXJpY2EuY29tL2dldHRp
bmctdGhlLW9yY2Etc2NyZWVuLXJlYWRlci13b3JraW5nLW9uLWEtCj4gcmFzcGJlcnJ5LXBpLTQt
d2l0aC1yYXNwYmlhbi1idXN0ZXItYW5kLXRoZS1tYXRlLWRlc2t0b3AvCj4KPgo+IEkgaGF2ZSB0
d2Vha2VkIGl0IGEgYml0IGZvciBteSBwdXJwb3NlcywgaW5jbHVkaW5nIGNvbmZpZ3VyYXRpb24g
b2YgCj4gdGhlIGxhbmd1YWdlIGFuZCB3aWZpIG92ZXIgU1NILCB1c2luZyB0aGUgZGVmYXVsdCBk
ZXNrdG9wIGVudmlyb25tZW50IAo+ICh3aGljaCBpcyBhIGZvcmsgb2YgTFhEZSkgYW5kIGluc3Rh
bGxpbmcgT3JjYSBkaXJlY3RseSBmcm9tIHRoZSAKPiByZXBvc2l0b3J5LCBhcyB0aGUgZnJvbSBz
b3VyY2UgaW5zdGFsbGF0aW9uIGRpZCBub3Qgd29yayB2ZXJ5IHdlbGwgLSBJIAo+IHdhcyBub3Qg
YWJsZSB0byBjb25maXJtIHRoZSBjb25maWd1cmF0aW9uIHJlcXVlc3RlZCBvbiB0aGUgZmlyc3Qg
cnVuLgo+Cj4gVGhvdWdoIEkgc3VwcG9zZSB0aGlzIGNhbiBiZSB3b3JrZWQgYXJvdW5kIHNpbXBs
eSBieSBpbnN0YWxsaW5nIAo+IHNvdXJjZS1jb21waWxlZCBPcmNhIG92ZXIgYSByZXBvc2l0b3J5
IGluc3RhbGxhdGlvbiwgSSB1c2UgaXQgdGhpcyB3YXkgCj4gb24gbXkgbGFwdG9wIGFuZCBpdCB3
b3JrcyBxdWl0ZSB3ZWxsICh0aGUgcmVwb3NpdG9yeSB2ZXJzaW9uIGlzIG5vdCAKPiB1cGRhdGVk
IGFueXdoZXJlIG5lYXIgbG93IGZyZXF1ZW50bHksIHNvIEknbSBub3Qgd29ycmllZCBhYm91dCB0
aGluZ3MgCj4gZ2V0dGluZyBtZXNzZWQuIDopICkKPgo+Cj4gQmVzdCByZWdhcmRzCj4KPgo+IFJh
c3Rpc2xhdgo+Cj4KPiBExYhhIDMxLiA3LiAyMDIxIG8gMTc6NDEgTGludXggZm9yIGJsaW5kIGdl
bmVyYWwgZGlzY3Vzc2lvbiBuYXDDrXNhbChhKToKPj4gSGksCj4+Cj4+Cj4+Cj4+IE15IFJhc3Bi
ZXJyeSBQSSBkZXZpY2UgbG9zdCBwb3dlciBkdXJpbmcgYW4gdXBncmFkZSBzbyB3YXNuJ3QgYm9v
dGluZyAKPj4gYW55IGxvbmdlci4gIEkgcmVmbGFzaGVkIHRoZSBTRCBjYXJkIHRvIGp1c3QgZG8g
YSBjbGVhbiBpbnN0YWxsLiAgQnV0IAo+PiBJIGFtIG5vdyBjdXJpb3VzIGlmIHRoZXJlIGlzIGEg
d2F5IHRvIGdldCBPUkNBIG9yIG90aGVyIHNwZWVjaCB0byBkbyBzZXR1cD8KPj4KPj4KPj4KPj4g
VGhlIGZpcnN0IHRpbWUgSSBkaWQgdGhpcywgSSBoYWQgc2lnaHRlZCBhc3Npc3RhbmNlIGJlY2F1
c2UgSSBhbmQgYSAKPj4gYnJvdGhlciB3ZXJlIHNldHRpbmcgdXAgZm91ciBvZiB0aGVzZSBhdCB0
aGUgc2FtZSB0aW1lCj4+Cj4+Cj4+Cj4+IEkndmUgdHJpZWQgYSBmZXcgdGhpbmdzIHRvIHRyeSBh
bmQgZ2V0IHRoaW5ncyB0YWxraW5nIHdpdGggbm8gbHVjay4gIAo+PiBJJ20gdXNpbmcgdGhlIGRl
ZmF1bHQgUmFzcGJlcnJ5IFBJIGltYWdlIGZyb20gdGhlaXIgc2l0ZS4KPj4KPj4KPj4KPj4gS2Vs
bHkKPj4KPj4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
Pj4gQmxpbnV4LWxpc3QgbWFpbGluZyBsaXN0Cj4+IEJsaW51eC1saXN0QHJlZGhhdC5jb20KPj4g
aHR0cHM6Ly9saXN0bWFuLnJlZGhhdC5jb20vbWFpbG1hbi9saXN0aW5mby9ibGludXgtbGlzdAo+
Pgo+Cj4KPiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+
IEJsaW51eC1saXN0IG1haWxpbmcgbGlzdAo+IEJsaW51eC1saXN0QHJlZGhhdC5jb20KPiBodHRw
czovL2xpc3RtYW4ucmVkaGF0LmNvbS9tYWlsbWFuL2xpc3RpbmZvL2JsaW51eC1saXN0CgoKLS0K
U3Vic2NyaWJlIHRvIGEgV29yZFByZXNzIGZvciBOZXdiaWVzIE1haWxpbmcgTGlzdCBieSBzZW5k
aW5nIGEgbWVzc2FnZSB0bzoKd3A0bmV3YnMtcmVxdWVzdEBmcmVlbGlzdHMub3JnIHdpdGggJ3N1
YnNjcmliZScgaW4gdGhlIFN1YmplY3QgZmllbGQgT1IgYnkgdmlzaXRpbmcgdGhlIGxpc3QgcGFn
ZSBhdCBodHRwOi8vd3d3LmZyZWVsaXN0cy5vcmcvbGlzdC93cDRuZXdicwomIGNoZWNrIG91dCBt
eSBzaXRlcyBhdCB3d3cuYnJpZ2h0c3RhcnN3ZWIuY29tICYgd3d3Lm15c2l0ZXNiZWVuaGFja2Vk
LmNvbQoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkJs
aW51eC1saXN0IG1haWxpbmcgbGlzdApCbGludXgtbGlzdEByZWRoYXQuY29tCmh0dHBzOi8vbGlz
dG1hbi5yZWRoYXQuY29tL21haWxtYW4vbGlzdGluZm8vYmxpbnV4LWxpc3QKCgpfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpCbGludXgtbGlzdCBtYWlsaW5n
IGxpc3QKQmxpbnV4LWxpc3RAcmVkaGF0LmNvbQpodHRwczovL2xpc3RtYW4ucmVkaGF0LmNvbS9t
YWlsbWFuL2xpc3RpbmZvL2JsaW51eC1saXN0

