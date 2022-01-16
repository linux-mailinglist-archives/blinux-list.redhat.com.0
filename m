Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 456D948FE25
	for <lists+blinux-list@lfdr.de>; Sun, 16 Jan 2022 18:15:03 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1642353302;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=4VR40QxarM6EO1R2zWqrwRigr93meUwsV0/xaTH3w84=;
	b=AP7r1LM266vnwu01wSUwzBLwFUts+uW4YN4sLeLzOQH7gX0wygJqH3M7BRRuNnpuYzg+S3
	kIcVEeK8Lkvxnppk4DIAXVjFHxnF92Vd2VgDnODbSQX9++ys2SOEDTkhiRQwzgfNndw0V+
	HzEO7bZq5GIx19MypDujjU33X4gEFi8=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-451-OdV2GgYbMJq5Gd1VNUpA1g-1; Sun, 16 Jan 2022 12:14:58 -0500
X-MC-Unique: OdV2GgYbMJq5Gd1VNUpA1g-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com [10.5.11.13])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 256211898290;
	Sun, 16 Jan 2022 17:14:54 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 0927D84D18;
	Sun, 16 Jan 2022 17:14:54 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id D94FE1809CB9;
	Sun, 16 Jan 2022 17:14:53 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.rdu2.redhat.com
	[10.11.54.1])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 20GHEn5F001614 for <blinux-list@listman.util.phx.redhat.com>;
	Sun, 16 Jan 2022 12:14:50 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id DBE9940CFD17; Sun, 16 Jan 2022 17:14:49 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast08.extmail.prod.ext.rdu2.redhat.com [10.11.55.24])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id D68EA40CFD0D
	for <blinux-list@redhat.com>; Sun, 16 Jan 2022 17:14:49 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [207.211.31.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
	bits)) (No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id B6C2638025F8
	for <blinux-list@redhat.com>; Sun, 16 Jan 2022 17:14:49 +0000 (UTC)
Received: from darkstar.slint.fr (darkstar.slint.fr [172.105.89.79]) by
	relay.mimecast.com with ESMTP id us-mta-617-_rpPhyt9OFmAg10PoJNEOQ-1;
	Sun, 16 Jan 2022 12:14:46 -0500
X-MC-Unique: _rpPhyt9OFmAg10PoJNEOQ-1
Received: from [192.168.43.177] (pop.92-184-116-83.mobile.abo.orange.fr
	[92.184.116.83])
	by darkstar.slint.fr (Postfix) with ESMTPSA id ACC2220332
	for <blinux-list@redhat.com>; Sun, 16 Jan 2022 17:14:43 +0100 (CET)
Message-ID: <b46cb80c-7549-f332-9baa-a42afa678a96@slint.fr>
Date: Sun, 16 Jan 2022 18:14:42 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
	Thunderbird/91.5.0
Subject: Re: Getting Started with linux
To: blinux-list@redhat.com
References: <7d95c4a2-beae-efc3-9998-792c3a9cbdef@gmail.com>
	<b6d7e61-4ff9-dc82-a7d4-2f6ee97bf1e1@panix.com>
	<cb6c740b-5aac-6472-9419-ad31e9c25692@gmail.com>
	<CAM+Q2c5qGage2PxM7v420GHTL_RjJZU5mjB7Hq4EZR=oYpCkSw@mail.gmail.com>
	<8b1b8fcb-2513-2ac8-77db-4aa49e3c225a@gmail.com>
	<e5ad6707-835a-7827-7988-a19c05973fda@gmail.com>
In-Reply-To: <e5ad6707-835a-7827-7988-a19c05973fda@gmail.com>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.84 on 10.11.54.1
X-MIME-Autoconverted: from quoted-printable to 8bit by
	lists01.pubmisc.prod.ext.phx2.redhat.com id 20GHEn5F001614
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
Content-Language: en-US
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SGksCgpteSBmcmllbmQgS3lsZSwgSSBiZXQgdGhhdCBqdXN0IHRyeWluZyBTbGludCAobm90IFNs
YWNrd2FyZSkgY2FuIGNoYW5nZSB5b3VyCm9waW5pb24gYWJvdXQgaXQgPHNtaWxlPi4KCkl0IHlv
dSBzdWNjZWVkIGJyZWFraW5nIGl0LCBwbGVhc2UgbGV0IG1lIGtub3cgaG93LCBzbyBJIGtub3cg
d2hhdCBJIHNob3VsZAplbmhhbmNlIGFuZC9vZiBmaXghCgpDaGVlcnMsCkRpZGllcgotLQpEaWRp
ZXIgU3BhaWVyClNsaW50IG1haW50YWluZXIKCgpMZSAxNi8wMS8yMDIyIMOgIDE3OjQyLCBMaW51
eCBmb3IgYmxpbmQgZ2VuZXJhbCBkaXNjdXNzaW9uIGEgw6ljcml0wqA6Cj4gU2xpbnQgaXMgZXNz
ZW50aWFsbHkgU2xhY2t3YXJlIHdpdGggYSBmZXcgbW9kaWZpY2F0aW9ucy4gSSBicm9rZSBTbGFj
a3dhcmUKPiBzZXZlcmFsIHRpbWVzLCB3aGljaCBpcyBhY3R1YWxseSB3aHkgSSBsZWZ0IGl0IGVh
cmx5IG9uLiBJdCB3YXMgbXkgZmlyc3QKPiBleHBlcmllbmNlIHdpdGggTGludXgsIGJ1dCBJIHdv
dWxkbid0IHNheSBpdCB3YXMgbXkgbW9zdCBlbmpveWFibGUgZXhwZXJpZW5jZS4gSQo+IGV2ZW50
dWFsbHkgYnJva2UgdGhpbmdzIG9uIHB1cnBvc2UgaW4gb3RoZXIgZGlzdHJpYnV0aW9ucyBpbiBv
cmRlciB0byBsZWFybiBob3cKPiB0byBmaXggdGhlbSwgYW5kIEkgZ3Vlc3MgSSBjYW4gdGhhbmsg
U2xhY2t3YXJlIGZvciB0aGF0IExPTC4gSSBhY3R1YWxseSBmb3VuZAo+IFJlZCBIYXQsIHdoaWNo
IGJlY2FtZSBGZWRvcmEsIHRvIGJlIG9uZSBvZiB0aGUgZWFzaWVzdCB0byB1c2Ugb3V0IG9mIHRo
ZSBib3gsCj4gYW5kIGl0IGlzIGtlcHQgdXBkYXRlZCBiZXR0ZXIgdGhhbiBVYnVudHUsIHdoaWNo
IGlzIGFyZ3VhYmx5IG9uZSBvZiB0aGUgZWFzaWVzdAo+IG9mIGFsbCB0byB1c2Ugb3ZlcmFsbC4g
QWN0dWFsbHksIEFyY2ggaXMgZ3JlYXQgb25jZSB5b3UgZ2V0IGl0IGdvaW5nLCBidXQgdGhlcmUK
PiBpcyBhIGxvdCB0aGF0IGNhbiBicmVhayB3aGlsZSB5b3UncmUgaW5zdGFsbGluZywgc28gSSBk
b24ndCByZWNvbW1lbmQgaXQgZm9yCj4gcGVvcGxlIHdobyBqdXN0IHdhbnQgdG8gc2VlIHdoYXQg
dGhpbmdzIGxvb2sgbGlrZS4gTXkgcGVyc29uYWwgcmVjb21tZW5kYXRpb25zCj4gZm9yIHNlZWlu
ZyB3aGF0IHRoaW5ncyBsb29rIGxpa2UgYW5kIGhvdyB3ZWxsIHRoZXkgd29yayByaWdodCBvdXQg
b2YgdGhlIGJveAo+IHdvdWxkIGJlIGVpdGhlciBGZWRvcmEgTGl2ZSBXb3Jrc3RhdGlvbgo+IAo+
IGh0dHBzOi8vZGwuZmVkb3JhcHJvamVjdC5vcmcvcHViL2ZlZG9yYS9saW51eC9yZWxlYXNlcy8z
NS9Xb3Jrc3RhdGlvbi94ODZfNjQvaXNvL0ZlZG9yYS1Xb3Jrc3RhdGlvbi1MaXZlLXg4Nl82NC0z
NS0xLjIuaXNvCj4gCj4gCj4gb3IgdGhlIHZlcnNpb24gSSBwZXJzb25hbGx5IHVzZTogRmVkb3Jh
IE1hdGUgQ29tcGl6Cj4gCj4gaHR0cHM6Ly9kbC5mZWRvcmFwcm9qZWN0Lm9yZy9wdWIvZmVkb3Jh
L2xpbnV4L3JlbGVhc2VzLzM1L1NwaW5zL3g4Nl82NC9pc28vRmVkb3JhLU1BVEVfQ29tcGl6LUxp
dmUteDg2XzY0LTM1LTEuMi5pc28KPiAKPiAKPiBCb3RoIG9mIHRoZXNlIGluY2x1ZGUgdGhlIE9y
Y2Egc2NyZWVuIHJlYWRlciBvbiB0aGUgaXNvIGl0c2VsZi4gV29ya3N0YXRpb24KPiBhbGxvd3Mg
eW91IHRvIHByZXNzIGFsdCtzdXBlcitzIHRvIHN0YXJ0IE9yY2Egb24gdGhlIGRlc2t0b3AsIGFu
ZCBNQVRFLUNvbXBpego+IHN0YXJ0cyBpdCBieSBwcmVzc2luZyBhbHQrZjIgYW5kIGVudGVyaW5n
Cj4gCj4gb3JjYQo+IAo+IGluIHRoZSBydW4gd2luZG93IHRoYXQgcG9wcyB1cC4gRWl0aGVyIHdh
eSwgdGhlIGluc3RhbGxlciBpcyBmYWlybHkgZWFzeSB0byB1c2UsCj4gYW5kIEkgaGF2ZSBzdWNj
ZXNzZnVsbHkgaW5zdGFsbGVkIGJvdGggdG8gYSBoYXJkIGRyaXZlIGFuZCB0byBhIFVTQiB0aHVt
YiBkcml2ZQo+IHdpdGhvdXQgYnJlYWtpbmcgYW55dGhpbmcuIFlvdSBjYW4gb2YgY291cnNlICJ0
cnkgYmVmb3JlIHlvdSBidXksIiBqdXN0IGxpa2UgeW91Cj4gY2FuIHdpdGggVWJ1bnR1LCBtZWFu
aW5nIHRoYXQgeW91IGhhdmUgZnVsbCBhY2Nlc3MgdG8gdGhlIHN5c3RlbSB3aXRob3V0Cj4gaW5z
dGFsbGluZyB0byBhbnl0aGluZyBhdCBhbGwsIGFuZCB0aGVuIGlmIHlvdSBkZWNpZGUgeW91IGRv
IHdhbnQgdG8gaW5zdGFsbCwKPiB5b3UganVzdCBzdGFydCB0aGUgaW5zdGFsbGVyIGFuZCBzZXQg
aXQgdXAgYWNjb3JkaW5nIHRvIHlvdXIgbmVlZHMuCj4gCj4gCj4gVGhhdCBzYWlkLCBGZWRvcmEg
YW5kIFVidW50dSBib3RoIGhhdmUgdmVyeSBsYXJnZSBhbmQgaGVscGZ1bCB1c2VyIGJhc2VzLCBh
bmQKPiBjb21tdW5pdHkgc3VwcG9ydCBpcyBmYXIgZWFzaWVyIHRvIGdldCB3aGVuIHlvdSBuZWVk
IGhlbHAuIFVidW50dSBwcm9iYWJseSBoYXMKPiB0aGUgbGFyZ2VzdCB1c2VyIGJhc2Ugb2YgYWxs
LCBhbmQgdGhpcyBpcyBhIGdvb2QgdGhpbmcgZm9yIHRob3NlIHBlb3BsZSB3aG8gYXJlCj4gZ2V0
dGluZyBzdGFydGVkLiBJIGNhbm5vdCBvdmVyZXN0aW1hdGUgdGhlIGJlbmVmaXQgb2YgYnJvYWQg
YW5kIGRpdmVyc2UKPiBjb21tdW5pdHkgc3VwcG9ydCwgYW5kIGJvdGggRmVkb3JhIGFuZCBVYnVu
dHUgb2ZmZXIgc3VjaCBzdXBwb3J0IG93aW5nIHRvIHRoZWlyCj4gbGFyZ2UgbnVtYmVycyBvZiB1
c2VycyBhbmQgdGhlaXIgd2lsbGluZ25lc3MgdG8gaGVscCBlYWNoIG90aGVyLiBTbyBiYXNlZCBv
bgo+IHRoaXMgYWxvbmUsIEkgd291bGQgcmVjb21tZW5kIGVpdGhlciBGZWRvcmEgb3IgVWJ1bnR1
IG92ZXIganVzdCBhYm91dCBhbnl0aGluZwo+IGVsc2UsIGFuZCBGZWRvcmEgaXMgbXkgcGVyc29u
YWwgY2hvaWNlIGR1ZSB0byBpdHMgZnJlcXVlbnQgc29mdHdhcmUgdXBkYXRlcyBldmVuCj4gaW4g
YSByZWxlYXNlLgo+IAo+IH5LeWxlCj4gCj4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KPiBCbGludXgtbHNzdCBtYWlsaW5nIGxpc3QKPiBCbGludXgtbGlz
dEByZWRoYXQuY29tCj4gaHR0cHM6Ly9saXN0bWFuLnJlZGhhdC5jb20vbWFpbG1hbi9saXN0aW5m
by9ibGludXgtbGlzdAo+IAoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fCkJsaW51eC1saXN0IG1haWxpbmcgbGlzdApCbGludXgtbGlzdEByZWRoYXQuY29t
Cmh0dHBzOi8vbGlzdG1hbi5yZWRoYXQuY29tL21haWxtYW4vbGlzdGluZm8vYmxpbnV4LWxpc3Q=

