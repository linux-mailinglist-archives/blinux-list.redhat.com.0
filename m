Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTP id BB3523DD4CC
	for <lists+blinux-list@lfdr.de>; Mon,  2 Aug 2021 13:39:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1627904362;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=eajTzs74MySb5HLc+N0bJ9TNQnIa4l7lh8qiDToSe1E=;
	b=Qmy9/W8wjp+CdpUhqLUijoFk21buAtnirI8cDrabOrR78iay6yIsDv6WMh4aDb+jiIGglh
	d6dLfjEGOY5udQLFX22PmUDhQwPPP4/G5QE4pezT/metgBBv0JKHm2FVK8sodqWUjHOaxH
	blzrwVi8U/vfNIfJ4eNErFJcoMGyQ00=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-238-rjtiHD24O9KDCyF068cOLg-1; Mon, 02 Aug 2021 07:39:21 -0400
X-MC-Unique: rjtiHD24O9KDCyF068cOLg-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com [10.5.11.16])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 6E0D21006C84;
	Mon,  2 Aug 2021 11:39:17 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 3BEB85C25A;
	Mon,  2 Aug 2021 11:39:14 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id C5D8C4BB7C;
	Mon,  2 Aug 2021 11:39:11 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.rdu2.redhat.com
	[10.11.54.6])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 172BUL83016537 for <blinux-list@listman.util.phx.redhat.com>;
	Mon, 2 Aug 2021 07:30:21 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id AEE15215CDD7; Mon,  2 Aug 2021 11:30:21 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast03.extmail.prod.ext.rdu2.redhat.com [10.11.55.19])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id A9B7B21602BD
	for <blinux-list@redhat.com>; Mon,  2 Aug 2021 11:30:19 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [205.139.110.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 404A48CA946
	for <blinux-list@redhat.com>; Mon,  2 Aug 2021 11:30:19 +0000 (UTC)
Received: from mail-oi1-f177.google.com (mail-oi1-f177.google.com
	[209.85.167.177]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-332-YDJhuy_WNGCwCAx3F-8ZPw-1; Mon, 02 Aug 2021 07:30:17 -0400
X-MC-Unique: YDJhuy_WNGCwCAx3F-8ZPw-1
Received: by mail-oi1-f177.google.com with SMTP id w6so23735876oiv.11
	for <blinux-list@redhat.com>; Mon, 02 Aug 2021 04:30:17 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:content-transfer-encoding:mime-version
	:subject:date:references:to:in-reply-to:message-id;
	bh=RvZo/TPRFdNZwzpW6eCmcpMU6wojm4EmCrZtyLqUeZo=;
	b=myAhLt9/CJ3IckER4v+k3unjlSkttGLD/Ju5qJhXIf0ZG2go7ypC1XmijeAH4dcGyL
	dEE/xwoAFki//3akBCr2QezCU4z4m1sQH40SXsFINO0bLrtRMxib0WBKiR3j/x8vKHOo
	bYeWebT0QHSSFxnlGjYhylbbHyhwxmjae7/zVrcJnPH8UZreFUh+UGUhc+bGdD98NDmY
	amMEMN94FICICHC/ofPV8KcekXhWGh1F+CE8CpLzQdOY1jBSKL+7b0wYDyqoDX/26oAA
	2M4TQIe4fMlwtTMjYXXw1FQ1wLPG2nG2riqnGbfHnzZVIZh0I2B/OxpkICo2rcKcf8sg
	/T+g==
X-Gm-Message-State: AOAM531LlvoRBqxcoxmP2ies0dMY30fFVE2nfnXCoBUHXeyj1LPMxw7g
	o5ROpQvxbgBMgcEC/sbd3VYZGvu4h9c=
X-Google-Smtp-Source: ABdhPJy12VMhkEodHYSGqJ+7d2HpS3JWHJlfOFVrF0d9BRWtmJPsQGhSy3SN3tYK6pSUZrSxbE5Fqw==
X-Received: by 2002:aca:f54e:: with SMTP id t75mr9914576oih.142.1627903816441; 
	Mon, 02 Aug 2021 04:30:16 -0700 (PDT)
Received: from smtpclient.apple ([2601:3c2:8200:9360:188d:361b:5b0c:187])
	by smtp.gmail.com with ESMTPSA id
	l29sm1632335ooh.44.2021.08.02.04.30.15 for <blinux-list@redhat.com>
	(version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
	Mon, 02 Aug 2021 04:30:16 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 14.0 \(3654.100.0.2.22\))
Subject: Re: Solus DE observations
Date: Mon, 2 Aug 2021 06:30:12 -0500
References: <3c0f9041-d6e9-5fb5-2e9c-a96dc59bd86c@gmail.com>
	<7b4a0e8e-f7b2-af91-975c-d3ca3a3cbdcf@gmail.com>
To: Linux for blind general discussion <blinux-list@redhat.com>
In-Reply-To: <7b4a0e8e-f7b2-af91-975c-d3ca3a3cbdcf@gmail.com>
Message-Id: <76FFA217-1F68-444A-8DB7-C465759CD123@gmail.com>
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
	lists01.pubmisc.prod.ext.phx2.redhat.com id 172BUL83016537
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SSBoYXZlIGhlYXJkIG9mIEJ1ZGdpZS4KU2luY2UgYSB0b3RhbGx5IGJsaW5kIHVzZXIgd291bGQg
bm90IGNhcmUgYWJvdXQgYSBkZXNrdG9w4oCZcyBhcHBlYXJhbmNlLCB3aGF0IG1pZ2h0IGJlIGFk
dmFudGFnZXMgb2YgQnVkZ2llIGluIG15IGNhc2U/CkkgaGFkIG5ldmVyIGNvbnNpZGVyZWQgU29s
dXMgYmVmb3JlLgpBcyB0byBwcm9ibGVtcyB3aXRoIGRlc2t0b3BzIHdoZW4gaW5zdGFsbGluZywg
SSBhcHByZWNpYXRlIGtub3dpbmcgb2YgdGhlbS4KCj4gT24gQXVnIDEsIDIwMjEsIGF0IDEwOjUw
IEFNLCBMaW51eCBmb3IgYmxpbmQgZ2VuZXJhbCBkaXNjdXNzaW9uIDxibGludXgtbGlzdEByZWRo
YXQuY29tPiB3cm90ZToKPiAKPiBNYXR0aGV3Cj4gCj4gCj4gCj4gV2hhdCBpcyBzb2x1cyBleGFj
dGx5PyAgaXMgdGhpcyBhIGZsYXZlciBvZiB1YnVudHUgbWVlaW5nIGJhc2VkIG9mZiBvZiBpdCBv
ciBzb21lIHRoaW5nIGVsc2U/ICBIb3cgaXMgdGhlIGluc3RhbGxlci4gIFRoYW5rcy4KPiAKPiAK
PiAKPiBIaSwKPiAKPiAKPiAKPiAKPiBPbiA4LzEvMjAyMSA1OjM4IEFNLCBMaW51eCBmb3IgYmxp
bmQgZ2VuZXJhbCBkaXNjdXNzaW9uIHdyb3RlOgo+PiBTaW5jZSBTb2x1cyBjYW1lIHVwIGFnYWlu
LCBJJ2xsIHNoYXJlIG15IG9ic2VydmF0aW9ucyBvZiB0aGUgdGhyZWUgREVzIEkndmUgdXNlZC4g
SSdtIGxlYXZpbmcgUGxhc21hIG91dCBzaW5jZSBpdCBkb2Vzbid0IHdvcmsgdG9vIHdlbGwgZm9y
IG1lLCBidXQgeU1NViBvbiB0aGF0Cj4+IAo+PiAKPj4gQnVkZ2llOgo+PiBJdCdzLCBib2lsaW5n
IGl0IGRvd24uIEdub21lIHdpdGggYSBmYW5jeSBjb2F0IG9mIHBhaW50IGFuZCBpcyB0aGUgU29s
dXMgZmxhZ3NoaXAgb25lLiBJdCB3b3JrcyB3ZWxsIGVub3VnaCBnaXZlbiBpdCdzIEdub21lIDQw
IGJhc2VkIGFuZCBpcyB2ZXJ5IG11Y2ggdXNlYWJsZS4gTm93IGlmIEkgY291bGQgYXNzaWduIGtl
eWJvYXJkIHNob3J0Y3V0cywgdGhhdCdkIGJlIGhhbmR5LiBNYXliZSBJIGNhbiBhbmQgaGF2ZW4n
dCBmb3VuZCBpdCB5ZXQsIEkgZHVubm8uIE9uZSBub3RlIEkgZG8gaGF2ZSBpcyB0aGF0IExpZ2h0
RE0gaXMgdGhlIGxvZ2luIG1hbmFnZXIgYW5kIGlzIGluc2FuZWx5IC9sb3VkLyBvbiBzdGFydHVw
IG9uY2UgeW91IGVuYWJsZSBPcmNhIHdpdGggdGhlIHVzdWFsIHNob3J0Y3V0LiBTbyBqdXN0IGhh
dmUgYSBsb25nLCBsb25nIGtleWJvYXJkIGNhYmxlLCBhbmQgQnVkZ2llL0dub21lIGhhdmUgYSBu
aWNlIHN0YXJ0dXAgc291bmQgd2hlbiB5b3UgbG9nIGluLCB3aGljaCBpcyBhbHdheXMgYSBuaWNl
IHRvdWNoLiBUaGUgU29sdXMgdGVhbSBoYXZlIHB1dCBhIGxvdCBvZiBjYXJlIGludG8gdGhlIERF
IGZyb20gd2hhdCBJJ3ZlIGZvdW5kLgo+PiAKPj4gR25vbWU6Cj4+IAo+PiBJdCdzIEdub21lLiBJ
dCdzIEdub21lIDQwLiBOZWVkIEkgc2F5IG1vcmU/IE9uZSBub3RlIGlzIEkgY291bGRuJ3QgZ2V0
IHNwZWVjaCBhdCBhIGxvZ2luIG1hbmFnZXIgb24gbXkgc3lzdGVtLiBJdCBkb2VzIGhhdmUgYSBu
aWNlIHN0YXJ0dXAgc291bmQgdG8gYSBsYSBCdWRnaWUuCj4+IAo+PiAKPj4gTWF0ZToKPj4gCj4+
IE9oIHRoaXMgaXMgZ29pbmcgdG8gYmUgZGlzYXBwb2ludGluZy4gVGhlcmUncyBhIGZldyBpc3N1
ZXMgd2l0aCBNYXRlIGFzIGZhciBhcyBTb2x1cyBnb2VzLgo+PiAKPj4gCj4+IDEuIFRoZSBPcmNh
IHNob3J0Y3V0IGlzbid0IHNldC4gV2hpY2ggaXNuJ3QgYSBiaWcgZGVhbCBzaW5jZSBhbHQrZjIg
YW5kIG9yY2Egc29ydHMgdGhhdCB0aGVuIHdoZW4geW91IGdldCB0aGUgc3lzdGVtIGluc3RhbGxl
ZCBpdCdzIHR3byBzZWNvbmRzIHdvcmsgdG8gc2V0IHRoZSBzaG9ydGN1dCBhbmQgc2V0IE9yY2Eg
dG8gYXV0b3N0YXJ0Lgo+PiAKPj4gCj4+IDIuIFRIZSBtdWNoLCBtdWNoLCBNVUNIIGJpZ2dlciBp
c3N1ZSBpcyB0aGUgZGVza3RvcCBsb3NlcyBmb2N1cyBhbmQgcmVxdWlyZXMgYSBHVEsgZGlhbG9n
IHRvIGJlIGxvYWRlZC4gUXVpdCBDaHJvbWl1bT8gWWVhaCBPcmNhK0gsIEYyLCBhbmQgdGhlbiBr
ZWVwIGdvaW5nLiBOb3cuIElmIHRoZXJlJ3MgYSBjb21weXogc2V0dGluZyBJJ3ZlIG92ZXJsb29r
ZWQgdG8gZml4IHRoaXMuLi50aGVuIHN1cmUsIEknbGwgZ2l2ZSBpdCBhbm90aGVyIHNob3QuIERv
bid0IGdldCBtZSB3cm9uZy4gTWF0ZSBpcyBmYW50YXN0aWMgd2hlbiBpdCB3b3Jrcy4gSXQncyBq
dXN0Li4uLndoZW4gaXQgYnJlYWtzIG9uIFNvbHVzIGFuZCBuZWVkcyB3b3JrYXJvdW5kcywgaXQn
cyBraW5kIG9mIGEgYnVnYmVhciBmb3IgbWUsIGFzIHdlbGwgYXMgdGhlIGJvdHRvbSBwYW5lbCBi
ZWluZyB1bmxhYmVsZWQsIGJ1dCB5b3UgY2FuIGdldCBhcm91bmQgbW9zdCBvZiB0aGF0IEFzIHdp
dGggQnVkZ2llIGl0IHVzZXMgTGlnaHRETSBzbyB5b3UgZ2V0IE9yY2Egd29ya2luZyBvbiB0aGUg
bG9naW4gc2NyZWVuLCBhZ2Fpbiwgc3R1cGlkbHkgbG91ZC4gSWYgdGhlIGZvY3VzIGxvc3MgaXNz
dWUgY2FuIGJlIGZpeGVkLCB0aGVuIEknbSBsaWFibGUgdG8gc3dpdGNoIGJhY2sgdG8gTWF0ZSBm
dWxsIHRpbWUgaW5zdGVhZCBvZiBCdWRnaWUuCj4+IAo+PiBBbmQsIHRoZXJlJ3Mgbm8gc3RhcnR1
cCBzb3VuZCBlaXRoZXIgd2hpY2gsIHJlYWxseSwgZGlzYXBwb2ludGluZyBnaXZlbiB0aGUgb3Ro
ZXIgdHdvIGhhdmUgb25lIGFuZCBJIGRvbid0IGtub3cgYm91dCBQbGFzbWEsIGJ1dCBpdCBmZWVs
cyB0byBtZSBsaWtlIHRoZSBNYXRlIG9uZSBpc24ndCBmdWxseSBmaW5pc2hlZCB1cCB2cyB0aGUg
b3RoZXIgREUuCj4+IAo+PiAKPj4gQW5kIHJlbGF0ZWQgbm90ZSwgSSdtIGh1bnRpbmcgZG93biBh
biBubXR1aSB3aGljaCBkb2Vzbid0IHNlZW0gdG8gYmUgc2hpcHBlZCB3aXRoIFNvbHVzLiBJIG1h
eSBqdXN0IHJlcXVlc3QgaXQgb3IgYXNrIG9uIHRoZWlyIGZvcnVtcyBpZiBvbmUncyBpbiBhbmQg
SSdtIHVzaW5nIHRoZSB3cm9uZyBuYW1lLgo+PiAKPj4gCj4+IFJlbGF0ZWQgbm90ZSAjMjoKPj4g
Cj4+IFNvbWVob3cgaXQncyBtb3JlIHN0YWJsZSBmb3IgbWUgdGhhbiBVYnVudHUsIHdoaWNoIEkg
ZGlkbid0IHRoaW5rIHBvc3NpYmxlLgo+PiAKPj4gCj4+IEZvciBpbnN0YWxsZWQgdGhpbmdzPwo+
PiAKPj4gTWF0ZSBkaWRuJ3QgY29tZSB3aXRoIGEgbWFpbCBjbGllbnQgYW5kIGNhbWUgd2l0aCBG
aXJlZm94IHdoaWNoIEkndmUgcmVwbGFjZWQgd2l0aCBCcmF2ZSwgYW5kIGluc3RhbGxlZCBUaHVu
ZGVyYmlyZC4gRWFjaCBkaXN0cm8gc2hpcHMgd2l0aCBPcmNhIDQwLjAsIGJ1dCBJJ3ZlIG5vdCB0
cmllZCBidWlsZGluZyBPcmNhIGZyb20gZ2l0IHlldCwgSSdtIHdhcnkgb2YgaW5zdGFsbGluZyB0
aGUgYnVpbGQgZGVwcyBvbiBhbiBhbHJlYWR5IHdvcmtpbmcgc3lzdGVtCj4+IAo+PiBfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+PiBCbGludXgtbGlzdCBt
YWlsaW5nIGxpc3QKPj4gQmxpbnV4LWxpc3RAcmVkaGF0LmNvbQo+PiBodHRwczovL2xpc3RtYW4u
cmVkaGF0LmNvbS9tYWlsbWFuL2xpc3RpbmZvL2JsaW51eC1saXN0Cj4+IAo+IAo+IF9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCj4gQmxpbnV4LWxpc3QgbWFp
bGluZyBsaXN0Cj4gQmxpbnV4LWxpc3RAcmVkaGF0LmNvbQo+IGh0dHBzOi8vbGlzdG1hbi5yZWRo
YXQuY29tL21haWxtYW4vbGlzdGluZm8vYmxpbnV4LWxpc3QKCgpfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwpCbGludXgtbGlzdCBtYWlsaW5nIGxpc3QKQmxp
bnV4LWxpc3RAcmVkaGF0LmNvbQpodHRwczovL2xpc3RtYW4ucmVkaGF0LmNvbS9tYWlsbWFuL2xp
c3RpbmZvL2JsaW51eC1saXN0

