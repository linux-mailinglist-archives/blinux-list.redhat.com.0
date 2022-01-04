Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 3414A484810
	for <lists+blinux-list@lfdr.de>; Tue,  4 Jan 2022 19:48:19 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1641322099;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=XOx0/oSTJX4F0tG7HLl9i0a/+EfqXGpRkOJDUBGj4dI=;
	b=RIx0zeXB2l7Dt2vgFtlFh6rzfNJmxE4pfp9tFqzxTKeH2o2nEAZ74ii0JE39KPvH5YfNkT
	qboV3nj7T4/a3lkjNpG1q43BueMiPQRm/gjgJ0nJzN8doFTqo39stLzWRHzhck5IJL/Eug
	WlxJ9Ir9KCLB+z4lU0slQ3g42zHEvQk=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-621-wH3XDckNNTmY9wa8Nx7YtQ-1; Tue, 04 Jan 2022 13:48:15 -0500
X-MC-Unique: wH3XDckNNTmY9wa8Nx7YtQ-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com [10.5.11.14])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 8183A10151E1;
	Tue,  4 Jan 2022 18:48:11 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 390447A3F5;
	Tue,  4 Jan 2022 18:48:11 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id D78931809CB8;
	Tue,  4 Jan 2022 18:48:09 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx10.intmail.prod.int.rdu2.redhat.com
	[10.11.54.10])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 204Im43O012388 for <blinux-list@listman.util.phx.redhat.com>;
	Tue, 4 Jan 2022 13:48:04 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 3704246D1E5; Tue,  4 Jan 2022 18:48:04 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast09.extmail.prod.ext.rdu2.redhat.com [10.11.55.25])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 32FAD46D1E4
	for <blinux-list@redhat.com>; Tue,  4 Jan 2022 18:48:04 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [207.211.31.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
	bits)) (No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 1619E2B76023
	for <blinux-list@redhat.com>; Tue,  4 Jan 2022 18:48:04 +0000 (UTC)
Received: from mail-qt1-f182.google.com (mail-qt1-f182.google.com
	[209.85.160.182]) by relay.mimecast.com with ESMTP with STARTTLS
	(version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-215-VTkWnpFwPTu7KGfs34uaRA-1; Tue, 04 Jan 2022 13:48:02 -0500
X-MC-Unique: VTkWnpFwPTu7KGfs34uaRA-1
Received: by mail-qt1-f182.google.com with SMTP id v4so32450304qtk.0
	for <blinux-list@redhat.com>; Tue, 04 Jan 2022 10:48:01 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20210112;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to;
	bh=MTiDMZ0MmuPr8BltnkFEkfjz8LGtsq18W1L4SF7oYRo=;
	b=BBcIq+50Fb1FcSWrlpVGucCtF/r390+egcL/o2jSUkzijQOVITMpd0hr6b2Y4k2rTd
	8WLTVF71NUlHShP2ya0fQbVqXwhLGvGloJR1K4Hgkld3pPWH/xBhJNjmcR7mJ5k1qfPp
	uKTxPIwOkG2UsiKOfve2ObmAWEp64oQ7TyMT2BcE6eLnVKiZDtQ8BqBxft4hgsc4hmtl
	AlZavtm6SCsvTc8vTNnRgrOCWyCBmZ+GWH69VXWEwacBDBDBFwrakhAkoyjyT/NVMory
	Uz26eh93ScG7zSUa2h9tXr8PBHHNFsqxCpaRWJAg4zwja9Bl2owJ6K2C8KtW7vqwMKDM
	dbiQ==
X-Gm-Message-State: AOAM531edKdPm8zijD76GtDxKX3BxxehQTbSUICs7Kjl/eZ+FxjFccOZ
	oiQZoqJbdUA7R7Y028majASekHdyr831O4GKrRT07Hx0Z4wDBg==
X-Google-Smtp-Source: ABdhPJyoO+36THEIZ6UPnF9O3JxLoqyb9/1XwbH9MEbnIohSVlzg/rlWgMv2qkmgxxu9MTXd7JlIJLtzOSFPzyzT+Os=
X-Received: by 2002:ac8:4142:: with SMTP id e2mr45439152qtm.603.1641322081052; 
	Tue, 04 Jan 2022 10:48:01 -0800 (PST)
MIME-Version: 1.0
References: <2D360D45-88B2-4856-955A-9387ABC9085A@pipkrokodil.se>
	<CAMuGJSk3s4O7_8e6SO_dcFBntphcBfMMxQNx8EghWttJoLKGrw@mail.gmail.com>
	<EFDC4C8C-F5BC-4F3C-8120-2C03427DD9D0@pipkrokodil.se>
In-Reply-To: <EFDC4C8C-F5BC-4F3C-8120-2C03427DD9D0@pipkrokodil.se>
Date: Tue, 4 Jan 2022 13:47:49 -0500
Message-ID: <CAMuGJSkgdxyqecUX4sTqnTQXm7r_2S0X_VqRZnZ_Ge6i-aMo_w@mail.gmail.com>
Subject: Re: Ubuntu 20.04 settings.
To: Linux for blind general discussion <blinux-list@redhat.com>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.85 on 10.11.54.10
X-loop: blinux-list@redhat.com
X-Content-Filtered-By: Mailman/MimeDel 2.1.12
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

U29ycnksIEkgbXVzdCBoYXZlIG5vdCBjb21tdW5pY2F0ZWQgaXQgY2xlYXJseS4gSSBkb24ndCBo
YXZlIGl0IG9uIG15IE1hYy4KSSBpbnN0YWxsZWQgaXQgb24gc2VwYXJhdGUsIGN1c3RvbS1idWls
dCBoYXJkd2FyZS4gTXkgcG9pbnQgd2FzIHRoYXQgbXkKaW5zdGFsbGF0aW9uIGlzIG5hdGl2ZSBh
bmQgbm90IGFjY2Vzc2VkIHZpYSBhIFZNLiBJIGRvbid0IGtub3cgaWYgdGhlcmUKbWlnaHQgYmUg
YW55IGtleWJvYXJkIHNob3J0Y3V0cywgbGlrZSB0aGUgc3VwZXIga2V5LCB0aGF0IG1pZ2h0IGJl
CmludGVyY2VwdGVkIGJ5IHRoZSBob3N0IE9TIG9yIHRoZSBWTSBzb2Z0d2FyZSBhbmQgcHJldmVu
dGVkIGZyb20gcGFzc2luZwppbnRvIHRoZSBndWVzdCBPUy4KCkkgZGlkIGhvd2V2ZXIgYXR0ZW1w
dCB0byBpbnN0YWxsIFVidW50dSBvbiBteSBpTWFjLCBidXQgSSBkaWRuJ3QgZ2V0IHZlcnkKZmFy
OyBJIGNvdWxkbid0IGdldCB0aGUgaU1hYyB0byBib290IGZyb20gdGhlIFVTQiBkcml2ZSBhbmQg
ZW5kZWQgdXAganVzdAp3aXBpbmcgdGhlIE9TIGFuZCByZWluc3RhbGxpbmcgaXQgKApodHRwczov
L3N1cGVydXNlci5jb20vcXVlc3Rpb25zLzk1OTQyMi9yZWluc3RhbGwtb3MteC13aXRob3V0LWNk
LWR2ZC1vci1hcHBsZS1pZAopLgoKRldJVyBoZXJlIGFyZSBzb21lIGFydGljbGVzIHRoYXQgZGlz
Y3VzcyBpbnN0YWxsaW5nIFVidW50dSBvbiBhbiBpTWFjIHdoaWNoCmhhdmUgYmVlbiBwdWJsaXNo
ZWQgc2luY2UgbXkgZmFpbGVkIGF0dGVtcHQgdGhvc2UgbWFueSB5ZWFycyBhZ286CiogaHR0cHM6
Ly93d3cubWFjd29ybGQuY28udWsvaG93LXRvL2hvdy1pbnN0YWxsLWxpbnV4LW9uLW1hYy0zNjM3
MjY1LwoqIGh0dHBzOi8vd3d3LmxpZmV3aXJlLmNvbS9kdWFsLWJvb3QtbGludXgtYW5kLW1hYy1v
cy00MTI1NzMzCihJIGhhdmUgbm90IGF0dGVtcHRlZCB0byBmb2xsb3cgdGhlIHN0ZXBzIG91dGxp
bmVkIGluIHRoZSBhYm92ZSBhcnRpY2xlcwp0aHVzIGNhbm5vdCBiZSBjZXJ0YWluIG9mIHRoZWly
IHZhbGlkaXR5LCBidXQgdGhleSBzZWVtIGxlZ2l0KQoKLS0KS2FybCBXaWxidXIKNTEzLTMyMi0y
NDgxCmthcmxAa2FybHdpbGJ1ci5uZXQKCgpPbiBUdWUsIEphbiA0LCAyMDIyIGF0IDE6MjYgUE0g
TGludXggZm9yIGJsaW5kIGdlbmVyYWwgZGlzY3Vzc2lvbiA8CmJsaW51eC1saXN0QHJlZGhhdC5j
b20+IHdyb3RlOgoKPiBIaSEKPiBOb3cgdGhhbmtzIGZvciB0aGF0IG9uZS4KPiBCdXQgaG93IGRp
ZCB5b3UgaW5zdGFsbCB0aGUgVWJ1bnR1IG9udG8geW91ciBNYWM/Cj4gQ2FuIHlvdSBkdWFsIGJv
b3QgdGhlIE1hYyB3aGVuIHlvdSBuZWVkIG9yIGlmIHlvdSBuZWVkPwo+IE15IHdpc2ggaXMgdG8g
bWFrZSBhIGR1YWwgYm9vdCBtYWNoaW5lIHdpdGggYm90aCBNYWMgYW5kIGxpbnV4IGJ1dCBJIGFt
Cj4gbm90IHN1cmUgaWYgaXQgY2FuIGJlIGRvbmUgcHJvcGVybHkuCj4gL0EKPgo+ID4gMyBqYW4u
IDIwMjIga2wuIDIzOjI2IHNrcmV2IExpbnV4IGZvciBibGluZCBnZW5lcmFsIGRpc2N1c3Npb24g
PAo+IGJsaW51eC1saXN0QHJlZGhhdC5jb20+Ogo+ID4KPiA+IEkgYW0gdXNpbmcgVWJ1bnR1IDIw
LjA0LCBpbnN0YWxsZWQgb24gdGhlIG1hY2hpbmUsIG5vdCBpbiBhIFZNLiBPbmNlCj4gbG9nZ2Vk
Cj4gPiBpbiwgSSBjYW4gdXNlIHRoZSBzdXBlciBrZXkgKCJXaW5kb3dzIiBrZXk7IGxlZnQgc2lk
ZSBvZiBrZXlib2FyZCBiZXR3ZWVuCj4gPiBDdHJsIGFuZCBBbHQpIHRvIG9wZW4gdGhlIHNlYXJj
aCBib3gsIHRoZW4gdHlwZSAic2V0dGluZ3MiLgo+ID4KPiA+IFRoYXQgYWNjb3VudCBzZXR1cCB0
aGluZyBtaWdodCBiZSBwYXJ0IG9mIHRoZSBpbml0aWFsIGxvZ2luIHdoZXJlLCBhcyBhCj4gPiAi
Y29udmVuaWVuY2UiLCB5b3UgYXJlIGFza2VkIHRvIGxvZyBpbnRvIEdvb2dsZSwgRmFjZWJvb2ss
IHdoYXRldmVyIC4uLkkKPiA+IGp1c3QgaWdub3JlZCB0aG9zZSAoaGl0IEVzYyBvciBBbHQrRjQg
dW50aWwgaXQgZ29lcyBhd2F5KS4KPiA+Cj4gPiAtLQo+ID4gS2FybCBXaWxidXIKPiA+IDUxMy0z
MjItMjQ4MQo+ID4ga2FybEBrYXJsd2lsYnVyLm5ldAo+ID4KPiA+Cj4gPiBPbiBNb24sIEphbiAz
LCAyMDIyIGF0IDU6MTYgUE0gTGludXggZm9yIGJsaW5kIGdlbmVyYWwgZGlzY3Vzc2lvbiA8Cj4g
PiBibGludXgtbGlzdEByZWRoYXQuY29tPiB3cm90ZToKPiA+Cj4gPj4gSGkhCj4gPj4gSSBoYXZl
IGluc3RhbGxlZCBVYnVudHUgMjAuMDQgb24gYSB2aXJ0dWFsIG1hY2hpbmUgaW4gVk13YXJlIEZ1
c2lvbiBvbgo+IG15Cj4gPj4gTWFjLiBFdmVyeXRoaW5nIGdvZXMgd2VsbCB1bnRpbCBJIGFtIGxv
Z2dlZCBpbi4KPiA+PiBCdXQgSSBoYXZlIGZvcmdvdHRlbiB0aGUga2V5c3Ryb2tlIHRvIGdvIHRv
IHNldHRpbmdzIHdpdGggT3JjYS4KPiA+PiBUaGUgb25seSB0aGluZyB0aGF0IGNvbWVzIHVwIGlz
IHNvbWUgZ3VpZGUgdGhhdCB3YW50cyBtZSB0byBzZXQgdXAKPiBzZXZlcmFsCj4gPj4gYWNjb3Vu
dHMuCj4gPj4gSSBqdXN0IGRvbuKAmXQgd2FudCB0aGF0IGJ1dCBpdCBzZWVtcyBJIGNhbuKAmXQg
Z2V0IGl0IGF3YXkuCj4gPj4gQW55IGhlbHAgSXMgYXBwcmVjaWF0ZWQuCj4gPj4gL0EKPiA+Pgo+
ID4+Cj4gPj4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
PiA+PiBCbGludXgtbGlzdCBtYWlsaW5nIGxpc3QKPiA+PiBCbGludXgtbGlzdEByZWRoYXQuY29t
Cj4gPj4gaHR0cHM6Ly9saXN0bWFuLnJlZGhhdC5jb20vbWFpbG1hbi9saXN0aW5mby9ibGludXgt
bGlzdAo+ID4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
PiA+IEJsaW51eC1saXN0IG1haWxpbmcgbGlzdAo+ID4gQmxpbnV4LWxpc3RAcmVkaGF0LmNvbQo+
ID4gaHR0cHM6Ly9saXN0bWFuLnJlZGhhdC5jb20vbWFpbG1hbi9saXN0aW5mby9ibGludXgtbGlz
dAo+Cj4KPiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+
IEJsaW51eC1saXN0IG1haWxpbmcgbGlzdAo+IEJsaW51eC1saXN0QHJlZGhhdC5jb20KPiBodHRw
czovL2xpc3RtYW4ucmVkaGF0LmNvbS9tYWlsbWFuL2xpc3RpbmZvL2JsaW51eC1saXN0Cl9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkJsaW51eC1saXN0IG1h
aWxpbmcgbGlzdApCbGludXgtbGlzdEByZWRoYXQuY29tCmh0dHBzOi8vbGlzdG1hbi5yZWRoYXQu
Y29tL21haWxtYW4vbGlzdGluZm8vYmxpbnV4LWxpc3Q=

