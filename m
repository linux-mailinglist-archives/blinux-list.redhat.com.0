Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 11E0F4644A1
	for <lists+blinux-list@lfdr.de>; Wed,  1 Dec 2021 02:48:37 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1638323317;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=6ar469UTjHRhbq/FO3qzWX8YlVbvgG2OPGbVUsy8iqo=;
	b=Cj9YZSoX41Z0X5pbi4krQu613iUlpXVrJKBfbGSJtASdSHDI6CTwFT/hR+lEnjNXi/GwxD
	cgM+cuWTJXoxcd1JCK127J9v0TrUxsnDcNSDJLhgKpFaTeAssgvYed6u0Uvt5y/RMV8grE
	CelGKzfnG6RLA1DZJy5/h8Jj8SCChas=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-442-gPsKBe6OOM-TXnPFdico2g-1; Tue, 30 Nov 2021 20:48:33 -0500
X-MC-Unique: gPsKBe6OOM-TXnPFdico2g-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com [10.5.11.13])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 0657D101AFB0;
	Wed,  1 Dec 2021 01:48:30 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id E490A6060F;
	Wed,  1 Dec 2021 01:48:26 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id C8B651809C89;
	Wed,  1 Dec 2021 01:48:18 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.rdu2.redhat.com
	[10.11.54.2])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 1B11m9VN027004 for <blinux-list@listman.util.phx.redhat.com>;
	Tue, 30 Nov 2021 20:48:10 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id D92DB4047279; Wed,  1 Dec 2021 01:48:09 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast06.extmail.prod.ext.rdu2.redhat.com [10.11.55.22])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id D54BE4047272
	for <blinux-list@redhat.com>; Wed,  1 Dec 2021 01:48:09 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[205.139.110.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id BD669185A7B2
	for <blinux-list@redhat.com>; Wed,  1 Dec 2021 01:48:09 +0000 (UTC)
Received: from mailbackend.panix.com (mailbackend.panix.com [166.84.1.89])
	by relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-456-Y8Li8MW3PtefL3IOZOD1Ww-1; Tue, 30 Nov 2021 20:48:08 -0500
X-MC-Unique: Y8Li8MW3PtefL3IOZOD1Ww-1
Received: from panix1.panix.com (panix1.panix.com [166.84.1.1])
	by mailbackend.panix.com (Postfix) with ESMTP id 4J3hn35ht1zSbk
	for <blinux-list@redhat.com>; Tue, 30 Nov 2021 20:48:07 -0500 (EST)
Received: by panix1.panix.com (Postfix, from userid 20712)
	id 4J3hn35TP8zcbc; Tue, 30 Nov 2021 20:48:07 -0500 (EST)
Received: from localhost (localhost [127.0.0.1])
	by panix1.panix.com (Postfix) with ESMTP id 4J3hn354ynzcbW
	for <blinux-list@redhat.com>; Tue, 30 Nov 2021 20:48:07 -0500 (EST)
Date: Tue, 30 Nov 2021 20:48:07 -0500
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: What is the easiest and most accessible editor?
In-Reply-To: <bc065beb-52da-b768-adc4-4c43436dc600@gmail.com>
Message-ID: <alpine.NEB.2.23.451.2111302046140.19550@panix1.panix.com>
References: <a3ea6f04-d8a4-2ef4-35cc-8e91d7582ab8@gmail.com>
	<dcf188c1-db80-bf0a-e54b-474f2fddbf55@gmail.com>
	<CAO2sX30oEaotc3CObf62R5Dg_0qLiu_qB3V3JF4EUQfACdkG+A@mail.gmail.com>
	<alpine.NEB.2.23.451.2111291731190.11659@panix1.panix.com>
	<878bd3e0-d05c-4132-52b4-d29893818041@gmail.com>
	<7d174815-a616-2abd-72e9-014ac8bf2b8b@slint.fr>
	<87bl22kqlz.fsf@brainpower.wer>
	<CAO2sX32s07jDN=1KiJCQ-31_gh5RAFFXBibGwKrLd4zuDpESKQ@mail.gmail.com>
	<PH0PR14MB4296B85503BE458036633010C8679@PH0PR14MB4296.namprd14.prod.outlook.com>
	<4d3de3ee-529a-0829-300e-3a1999cf2a76@gmail.com>
	<PH0PR14MB4296ABD498F0634DA72DCA10C8679@PH0PR14MB4296.namprd14.prod.outlook.com>
	<d7fdfa4d-de81-02bc-eb50-f741e3ab0c63@gmail.com>
	<bc065beb-52da-b768-adc4-4c43436dc600@gmail.com>
MIME-Version: 1.0
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.84 on 10.11.54.2
X-MIME-Autoconverted: from QUOTED-PRINTABLE to 8bit by
	lists01.pubmisc.prod.ext.phx2.redhat.com id 1B11m9VN027004
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

QW4gZW1haWwgcmVzb3VyY2UgaXMgaGVscC1nbnUtZW1hY3NAZ251Lm9yZyB3aGljaCBpcyBhbiBl
bWFpbCBsaXN0IGxpa2UKYmxpbnV4LWxpc3RAcmVkaGF0LmNvbS4gIFRoZW4gdGhlcmUncyB5b3V0
dWJlIHdpdGggaXRzIHNvbWV0aW1lcyBleGNlbGxlbnQKYW5kIHNvbWV0aW1lcyB1c2VsZXNzIHZp
ZGVvcy4KCgpPbiBUdWUsIDMwIE5vdiAyMDIxLCBMaW51eCBmb3IgYmxpbmQgZ2VuZXJhbCBkaXNj
dXNzaW9uIHdyb3RlOgoKPiBIaSBhbGwsCj4KPgo+IEkgaGF2ZSBiZWVuIGZvbGxvd2luZyB0aGlz
IGRpc2N1c3Npb24gZm9yIGEgYml0IGFuZCB3YXMgd29uZGVyaW5nLCBhbmQgaGF2ZQo+IGJlZW4g
ZG9pbmcgc28gZm9yIGEgd2hpbGUsIHdoZXJlIGRvIHlvdSBnbyB0byBsZWFybiBFbWFjcz8KPgo+
Cj4gRXZlbiB3b3JzZSBpcyBFbWFjc3NwZWFrLCB0aGUgdXNlciBndWlkZSBJIGNhbiBmaW5kIG91
dCB0aGVyZSBpcyBtb3JlIHRoYW4gMTAKPiB5ZWFycyBvbGQuCj4KPgo+IElzbid0IHRoZXJlIGEg
Y29uY2lzZSwgZWFzeSB0byBmb2xsb3cgc3RlcC1ieS1zdGVwIGd1aWRlIG91dCB0aGVyZSBzb21l
IHdhcmU/Cj4KPgo+IEknZCB0aGluayB0aG9zZSwgc28gcGFzc2lvbmF0ZSBhYm91dCB0aGVpciBj
aG9zZW4gY2hvaWNlIHdvdWxkIG1ha2UgaXQKPiBwb3NzaWJsZSBmb3IgdGhlIG5ld2JpZSB0byBs
ZWFybiwgR2VudG9vIGFuZCBBcmNoIGRpZCBpdCwgd2h5IG5vdCBFbWFjcyBhbmQKPiBFbWFjc3Nw
ZWFrPwo+Cj4KPiBXYXJtIHJlZ2FyZHMsCj4KPiBCcmFuZHQgU3RlZW5rYW1wCj4KPiBTZW50IGZy
b20gdGhlIEZlZG9yYSBtYWNoaW5lLCB1c2luZyBUaHVuZGVyYmlyZAo+Cj4gT24gMjAyMS8xMS8z
MCAxOTo0NSwgTGludXggZm9yIGJsaW5kIGdlbmVyYWwgZGlzY3Vzc2lvbiB3cm90ZToKPiA+IElu
dGVyZXN0aW5nLiBUaGUgcHJvYmxlbSBpcyB0aGF0IGVtYWlsIGl0c2VsZiBoYXMgc2V2ZXJhbCBj
b21wb25lbnRzIHRoYXQKPiA+IGRvbid0IGZpdCB3ZWxsIGludG8gYW4gZWRpdG9yIHdpbmRvdy4g
UmVhZGluZyBhbmQgd3JpdGluZyBlbWFpbHMgZm9yIGV4YW1wbGUKPiA+IGZpdHMgaW50byBhbiBl
ZGl0b3Igc3R5bGUgd2luZG93IGp1c3QgZmluZSwgYnV0IHNldHRpbmcgdXAgZW1haWwgYWNjb3Vu
dHMsCj4gPiBtb3ZpbmcgdGhyb3VnaCBmb2xkZXJzIGFuZCBsaXN0cyBvZiBtZXNzYWdlcywgZXhw
YW5kaW5nIGFuZCBjb2xsYXBzaW5nCj4gPiB0aHJlYWRzLCBldGMganVzdCBkb24ndCBmaXQgaW50
byB0aGF0IGJveCB2ZXJ5IHdlbGwuCj4gPgo+ID4gSSBhbHNvIGhhZCBhIGxvb2sgYXQgb25lIHBv
aW50IGF0IHRoZSBzaGVsbCB0ZXJtaW5hbC4gV2hlcmVhcyBpdCdzIGdvb2QgdG8KPiA+IGJlIGFi
bGUgdG8gZWRpdCB0aGUgY3VycmVudCBjb21tYW5kIGxpbmUsIEkgZm91bmQgdGhhdCBwcmVzc2lu
ZyB0aGUgdXAgYXJyb3cKPiA+IGtleSB0byBwdXQgdGhlIHByZXZpb3VzIGNvbW1hbmQgYmFjayBv
biB0aGUgc2NyZWVuIHRvIGVpdGhlciByZXBlYXQgb3IKPiA+IG1vZGlmeSBkaWRuJ3QgYnJpbmcg
dXAgdGhlIHByZXZpb3VzIGNvbW1hbmQsIGJ1dCBpbnN0ZWFkIHB1dCBteSBjdXJzb3Igb24KPiA+
IHRoZSBsYXN0IGxpbmUgb2YgdGhlIHByZXZpb3VzIGNvbW1hbmQncyBvdXRwdXQuIFNoZWxscyBu
ZWVkIHRvIGJlIGxpbmUKPiA+IGVkaXRlZCwgbm90IHNjcmVlbiBlZGl0ZWQsIGFuZCB0aGF0J3Mg
d2hlcmUgdGhlIHdob2xlIHRoaW5nIGZlbGwgZmxhdCwKPiA+IGVzcGVjaWFsbHkgc2luY2UgYXMg
SSByZWNhbGwsIEkgd2FzIGV2ZW4gYWJsZSB0byBhY2NpZGVudGFsbHkgb3ZlcndyaXRlCj4gPiBj
b21tYW5kIG91dHB1dCBiZWNhdXNlIHRoZSB3aG9sZSBzY3JlZW4gaXMgaW4gYW4gZWRpdGFibGUg
Li4uIGJ1ZmZlciBJIHRoaW5rCj4gPiB0aGV5IGNhbGwgaXQuCj4gPgo+ID4gUmVnYXJkaW5nIHRo
ZSBrZXkgc2VxdWVuY2VzLCB4IGlzIGEgd2F5IHRvIGNyb3NzIHNvbWV0aGluZyBvdXQsIHggaXQg
b3V0LAo+ID4gY3V0IGl0LiBDIHN0YW5kcyBmb3IgY29weSwgYW5kIEkgZ3Vlc3MgdiBnb3QgaXRz
IHBhc3RlIGZ1bmN0aW9uYWxpdHkgYmVjYXVzZQo+ID4gaXQncyByaWdodCBuZXh0IHRvIGN1dCBh
bmQgY29weS4gTm90IHN1cmUgYWJvdXQgdGhhdCBvbmUuIFN0aWxsLCBpdCdzIGJldHRlcgo+ID4g
dGhhbiBzb21lIG9mIHRoZSBrZXkgY29tYmluYXRpb25zIEkgZmluZCBldmVuIGluIG5hbm8sIGNv
bnRyb2wrdyB0byBmaW5kCj4gPiBzb21ldGhpbmcgZm9yIGV4YW1wbGUsIG9yIGV2ZW4gYmV0dGVy
IGlzIGNvbnRyb2wrcSwgd2hpY2ggaXMgc3VwcG9zZWQgdG8KPiA+IHF1aXQsIGJ1dCBpbnN0ZWFk
IHBlcmZvcm1zIGEgYmFja3dhcmQgc2VhcmNoLiBXaGF0IHRoZSAuLi4/IEVtYWNzIGtleXMgYXJl
Cj4gPiBldmVuIHdvcnNlLCBzaW5jZSBhcyBJIHJlY2FsbCwgZmluZGluZyBzb21ldGhpbmcgcmVx
dWlyZXMgdHdvIGtleQo+ID4gY29tYmluYXRpb25zLCBhbmQgaWYgSSByZW1lbWJlciBjb3JyZWN0
bHksIG5laXRoZXIgaW5jbHVkZXMgYW4gZiBmb3IgZmluZCBvcgo+ID4gZXZlbiBhbiBzIGZvciBz
ZWFyY2guIEVtYWNzIHB1dHMgbWUgaW4gbWluZCBvZiB0aGUgb2xkIGRheXMgb2YgYSBsaXR0bGUK
PiA+IHByb2dyYW0gSSB1c2VkIGluIHNjaG9vbCBjYWxsZWQgVHVyYm8gUGFzY2FsLiBUaGF0IGhv
cnJpYmxlIHRoaW5nIC4uLiBpZiBJCj4gPiB3YW50ZWQgdG8gY29tcGlsZSB0aGUgcHJvZ3JhbSBJ
IGhhZCBqdXN0IHdyaXR0ZW4sLcKgIEkgc3RpbGwgcmVtZW1iZXIgaXQgLSBJCj4gPiBoYWQgdG8g
cHJlc3MgY29udHJvbCtrIGFuZCB0aGVuIGQuIEFnYWluLCB3aGF0IHRoZSAuLi4/IEkgZG9uJ3Qg
a25vdyAuLi4gSQo+ID4ganVzdCBkaWQgaXQgLi4uIGJlY2F1c2UgdGhhdCdzIHdoYXQgdGhlIHRl
YWNoZXIgdG9sZCBtZSBJIGhhZCB0byBkbyBpbiBvcmRlcgo+ID4gdG8gY29tcGlsZSBteSBwcm9n
cmFtLiBOb3RoaW5nIGluIHRoYXQga2V5IHNlcXVlbmNlIGNvdWxkIGJlIHRob3VnaHQgb2YgYXMK
PiA+IGNvbXBpbGUgb3IgZXZlbiBidWlsZCwgd2VsbCwgbWF5YmUgdGhlIGQgb24gdGhlIGVuZCBv
ZiBidWlsZC4gQnV0IHRoYXQgc3VyZQo+ID4gd2FzIGEgbmlnaHRtYXJlIHRvIGhhdmUgdG8gcmVt
ZW1iZXIgdGhhdCB0aGF0J3Mgd2hhdCB0aGF0IGNyYXp5IGNvbWJpbmF0aW9uCj4gPiBvZiBrZXlz
IGRpZC4gSSBjYW4gb25seSBpbWFnaW5lIGV2ZXJ5dGhpbmcgd29ya2luZyB0aGF0IHdheSwgd2hp
Y2ggd2FzIHRoZQo+ID4gZXhwZXJpZW5jZSBJIGhhZCB3aGVuIEkgbG9va2VkIGF0IHNvbWUgRW1h
Y3MgZG9jdW1lbnRhdGlvbi4gQnV0IHRoZW4gSSBjb3VsZAo+ID4gYmUgd3JvbmcsIHNpbmNlIHRo
ZSBsYXN0IHRpbWUgSSBldmVuIG9wZW5lZCB0aGUgYXBwbGljYXRpb24gd2FzIHByb2JhYmx5IDE1
Cj4gPiB5ZWFycyBhZ28sIGFuZCBJIGRpZG4ndCBldmVuIHNlZSB0aGUgbmljZSBsaXR0bGUgaGVs
cCB0aGluZ3kgYXQgdGhlIGJvdHRvbQo+ID4gb2YgdGhlIHNjcmVlbiBsaWtlIHdoYXQgSSBnb3Qg
ZnJvbSBOYW5vIGFuZCBQaWNvIHRoYXQgSSBoYWQgdXNlZCBiZWZvcmUgaXQuCj4gPiBBdCBsZWFz
dCBpbiB2aW0gSSB3YXMgYWJsZSB0byB1c2UgdGhlIDpoZWxwIGNvbW1hbmQgdG8gZ2V0IG1lIHN0
YXJ0ZWQsIGJ1dAo+ID4gZXZlbiB0aGF0IHdhcyBtdWNoIG1vcmUgY29tcGxpY2F0ZWQgdGhhbiBp
dCBuZWVkZWQgdG8gYmUsIGVzcGVjaWFsbHkgd2hlbiBJCj4gPiBqdXN0IHdhbnRlZCB0byBjdXQg
c29tZXRoaW5nIGFuZCBwYXN0ZSBpdCBzb21ld2hlcmUgZWxzZSBpbiB0aGUgc2FtZSBmaWxlLiBJ
Cj4gPiBkbyBsaWtlIGl0cyBzZWFyY2ggYW5kIHJlcGxhY2UgZnVuY3Rpb25hbGl0eSB0aG91Z2gu
ICVzL3NvbWV0aGluZy9lbHNlL2cgaWYKPiA+IEkgcmVtZW1iZXIgY29ycmVjdGx5LCBqdXN0IGxp
a2UgaW4gdGhlIHNlZCBjb21tYW5kLCB3aWxsIHJlcGxhY2UgZXZlcnkKPiA+IG9jY3VycmVuY2Ug
b2Ygc29tZXRoaW5nIHdpdGggZWxzZS4gVGhhdCBzYWlkLCBJIGNhbiBqdXN0IGFzIGVhc2lseSBy
dW4gYQo+ID4gZmluZCBhbmQgcmVwbGFjZSwgcHV0IHNvbWV0aGluZyBpbiB0aGUgc2VhcmNoIGZp
ZWxkIGFuZCBlbHNlIGluIHRoZSByZXBsYWNlCj4gPiBmaWVsZCwgdGhlbiB0aWNrIHRoZSBib3gg
dGhhdCBzYXlzIHJlcGxhY2UgYWxsLCBhbmQgaXQncyBqdXN0IGFzIGdvb2QsIGFuZAo+ID4gZG9l
c24ndCBldmVuIHVzZSBtb3JlIGZpbmdlcnMsIHNpbmNlIHRoZSB0YWIga2V5IGlzIHJlcGxhY2lu
ZyB0aGUgLyBrZXkgaW4KPiA+IHRoaXMgdXNlIGNhc2UuCj4gPgo+ID4gX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KPiA+IEJsaW51eC1saXN0IG1haWxpbmcg
bGlzdAo+ID4gQmxpbnV4LWxpc3RAcmVkaGF0LmNvbQo+ID4gaHR0cHM6Ly9saXN0bWFuLnJlZGhh
dC5jb20vbWFpbG1hbi9saXN0aW5mby9ibGludXgtbGlzdAo+Cj4gX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KPiBCbGludXgtbGlzdCBtYWlsaW5nIGxpc3QK
PiBCbGludXgtbGlzdEByZWRoYXQuY29tCj4gaHR0cHM6Ly9saXN0bWFuLnJlZGhhdC5jb20vbWFp
bG1hbi9saXN0aW5mby9ibGludXgtbGlzdAo+CgoKX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18KQmxpbnV4LWxpc3QgbWFpbGluZyBsaXN0CkJsaW51eC1saXN0
QHJlZGhhdC5jb20KaHR0cHM6Ly9saXN0bWFuLnJlZGhhdC5jb20vbWFpbG1hbi9saXN0aW5mby9i
bGludXgtbGlzdA==

