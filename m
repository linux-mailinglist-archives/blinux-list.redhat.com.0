Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [216.205.24.124])
	by mail.lfdr.de (Postfix) with ESMTP id B582B3D7339
	for <lists+blinux-list@lfdr.de>; Tue, 27 Jul 2021 12:29:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1627381774;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=vStbAWUOu/FxAJiMzGnbrKwJgXm6myeGvEomZ8c3ANc=;
	b=U03NgRJgxoyF4042VhNVt8G8utkYodsxl2pACEddZI53l8Qpbq+JJy9aZHO48bLdXMMitU
	nFRDLI1mFrr5BVGDkfRYHpDAvuJ44HUZc9B69Xw2pB85dZVqqrim9n9UdQNDUE4miW20Xc
	zwmJVEOE7gLqTfkiEGqtpQw3yTb1YZo=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-51-69ivo1QEOPyLm2n2gRVNoA-1; Tue, 27 Jul 2021 06:29:33 -0400
X-MC-Unique: 69ivo1QEOPyLm2n2gRVNoA-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.11])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id B76E5107ACF5;
	Tue, 27 Jul 2021 10:29:25 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id A8851179B3;
	Tue, 27 Jul 2021 10:29:24 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 9E6A44BB7B;
	Tue, 27 Jul 2021 10:29:21 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.rdu2.redhat.com
	[10.11.54.4])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 16RAIY8L003620 for <blinux-list@listman.util.phx.redhat.com>;
	Tue, 27 Jul 2021 06:18:34 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 83AF82039D23; Tue, 27 Jul 2021 10:18:34 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast04.extmail.prod.ext.rdu2.redhat.com [10.11.55.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 7B0332039D2B
	for <blinux-list@redhat.com>; Tue, 27 Jul 2021 10:18:30 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[207.211.31.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 3BD5A1066684
	for <blinux-list@redhat.com>; Tue, 27 Jul 2021 10:18:30 +0000 (UTC)
Received: from mail-qk1-f172.google.com (mail-qk1-f172.google.com
	[209.85.222.172]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-423-7DRM6ldXOtOwv4CtT4yYxg-1; Tue, 27 Jul 2021 06:18:27 -0400
X-MC-Unique: 7DRM6ldXOtOwv4CtT4yYxg-1
Received: by mail-qk1-f172.google.com with SMTP id c18so11799442qke.2
	for <blinux-list@redhat.com>; Tue, 27 Jul 2021 03:18:27 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to;
	bh=4PK8dTm6O8iXBT3fnwe725Q95d3QoVFnbZQ18ZbA/IY=;
	b=rcRV0O5ja52yE//kjiFkpKEoNKeavBUlLLu8XgLQclZsRqMIUljLX6JrcaFH9VhbI/
	MN8apTU//o0EvKPA/PqRjm++fy6coeG+vFWCn2h1JfPMfvgERTAfOS/RRBD45NG9Rc/Y
	b+2YPbSxelTfCiYZiuIsqf4A9D8uy3SefAq/E0l0I3fb8f7k+925NlhVOsD6mIsqlc+w
	aJYgAWQjzbi4xTJ4bujNLCreRd2PDI40LECIVSSDGEtUJtZPRUqsJFrugSlk5V2lCRa5
	+itwoq4FX0fgjzZj1uSKrXEta0a91esLViHvFl7+8K85Y0ly1Wzb+jOvmZywuAZXoTGV
	Po7A==
X-Gm-Message-State: AOAM531pxJsTy8K2unZKGQRPjAGNw6yMEGVaJ1RTGCtmJ0uIYEwLRcon
	YHw7rfQ9T7X3P9NDcJfVzlRYKNL4nlhlPyxybKai1BNzKGE=
X-Google-Smtp-Source: ABdhPJx5eGQ0K/EE2V+rY6LWLZ/14PAXeEOYP1B8xa6dTWxflw9u6IkVNE+W8wbjfqWGojWse0jee/kk6cfTf9zZUVg=
X-Received: by 2002:a37:87c5:: with SMTP id
	j188mr20563326qkd.317.1627381106727; 
	Tue, 27 Jul 2021 03:18:26 -0700 (PDT)
MIME-Version: 1.0
References: <CAD_4ddR69ScTQ-vSeHDKi+zsFsMgU7WuV37otQQcw1ObGC9wNg@mail.gmail.com>
	<0B5B1D7B-CDA1-4A04-9BC9-0AEF80D6EA74@linux-a11y.org>
In-Reply-To: <0B5B1D7B-CDA1-4A04-9BC9-0AEF80D6EA74@linux-a11y.org>
Date: Tue, 27 Jul 2021 06:17:59 -0400
Message-ID: <CAD_4ddS20gMoDDxspfdKDxrm=U7qxFNd+yWL=3gT3gk4cd+YmQ@mail.gmail.com>
Subject: Re: A question about adding keyboard shortcuts in mate
To: Linux for blind general discussion <blinux-list@redhat.com>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.4
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.11
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SGVsbG8gdGhlcmUsCgpUaGUgdHJpY2sgd2l0aCB0aGUgcnVuIGRpYWxvZyB3b3JrcywgSSBkaWRu
J3QgcmVhbGx5IHRoaW5rIGFib3V0IGl0LCBzaW5jZQpJIHJhcmVseSB1c2UgaXQuIEluIGZhY3Qs
IHRoZSBvbmx5IHNjZW5hcmlvIGluIHdoaWNoIEkgaGF2ZSB1c2VkIGl0IGlzIHRvCmlzc3VlIGFu
IG9yY2EgLXIgY29tbWFuZC4KVGhhbmtzIHNvIG11Y2ghCkJlc3QgcmVnYXJkcy4KRnJhbmNpc2Nv
LgoKT24gVHVlLCBKdWwgMjcsIDIwMjEgYXQgNToxNCBBTSBMaW51eCBmb3IgYmxpbmQgZ2VuZXJh
bCBkaXNjdXNzaW9uIDwKYmxpbnV4LWxpc3RAcmVkaGF0LmNvbT4gd3JvdGU6Cgo+IEhvd2R5LAo+
Cj4gSSBkb250IHVzZSBNYXRlIGJ1dCBpIGtub3cgdGhlcmUgaXMgc29tZXRoaW5nIHRvIGJpbmQg
c2hvcnRjdXRzLiBXaGF0Cj4gaGFwcGVucyBpZiB5b3UgcnVuIGl0IGZyb20gdGVybWluYWw6Cj4K
PiBtYXRlLWtleWJpbmRpbmctcHJvcGVydGllcwo+Cj4gVGhlcmUgaXMgYWxzbyB4YmluZGtleXMK
Pgo+IGh0dHBzOi8vd2lraS5hcmNobGludXgub3JnL3RpdGxlL1hiaW5ka2V5cwo+Cj4gPiBJZiBJ
IGNhbid0IGRvIGl0LCBob3cgYW0gSSBzdXBwb3NlZCB0byByZWNvZ25pemUgdGhlIGN1cnJlbnQg
d2luZG93PyBJJ2QKPiBXZWxsIHlvdSBjYW4gdHJ5IHVzaW5nIHRoZSDigJ5ydW7igJwgdXNpbmcg
IGFsdCArIGYxCj4KPiBDaGVlcnMKPgo+ID4gQW0gMjcuMDcuMjAyMSB1bSAwODo1NyBzY2hyaWVi
IExpbnV4IGZvciBibGluZCBnZW5lcmFsIGRpc2N1c3Npb24gPAo+IGJsaW51eC1saXN0QHJlZGhh
dC5jb20+Ogo+ID4KPiA+IO+7v0hlbGxvIHRoZXJlLAo+ID4KPiA+IFdoYXQgSSB3YXMgdGhpbmtp
bmcgb2YgZG9pbmcgd2FzIGFzc2lnbmluZyBhIGtleWJvYXJkIHNob3J0Y3V0IHRvCj4gPiBvY3Jk
ZXNrdG9wLCBwbHVzIG9jcmRlc2t0b3Agd2l0aCBldmVyeW9uZSBvZiBpdCdzIGZsYWdzLgo+ID4g
SSBjb3VsZCBkbyB0aGF0IGluIEdub21lLCBidXQgSSBjYW4ndCBkbyBpdCBpbiBNYXRlLCBhbmQg
SSBjYW4ndCBpbnN0YWxsCj4gPiBnbm9tZSwgYmVjYXVzZSBzb21lIGFwcHMsIExJT1MgZm9yIGV4
YW1wbGUsIGRvbid0IGxpa2UgR1RLNCBmb3Igc29tZQo+ID4gcmVhc29uLCBhbmQgdGhyb3cgZXJy
b3JzLgo+ID4gSW4gR25vbWUgSSBjb3VsZCBqdXN0IHNheSwgY3JlYXRlIGEga2V5Ym9hcmQgc2hv
cnRjdXQsIGZvciBleGFtcGxlLAo+ID4gY3RybCthbHQrc2hpZnQrMSwgd2l0aCBuYW1lLCBvY3Jk
ZXNrdG9wLCBhbmQgd2l0aCBjb21tYW5kLCBvY3JkZXNrdG9wLAo+IGFuZAo+ID4gaXQgd291bGQg
d29yaywgSSdkIGp1c3QgaGF2ZSB0byB3cml0ZSBpdCBhbGwgZG93biwgd2hpY2ggd2FzIGtvb2wu
Cj4gPiBJbiBNYXRlLCBob3dldmVyLCBJIGhhdmUgdG8gZmluZCB0aGUgYXBwLCB3aGljaCBzdWNr
cy4KPiA+IElmIEkgY2FuJ3QgZG8gaXQsIGhvdyBhbSBJIHN1cHBvc2VkIHRvIHJlY29nbml6ZSB0
aGUgY3VycmVudCB3aW5kb3c/IEknZAo+ID4gaGF2ZSB0byB0eXBlIG9jcmRlc2t0b3AgZnJvbSB0
aGUgdGVybWluYWwsIGFuZCB0aGF0IHdvdWxkIHJlY29nbml6ZSB0aGUKPiA+IGN1cnJlbnQgd2lu
ZG93LCBzbyB0aGUgdGVybWluYWwsIGFuZCBJIGRvbid0IGtub3cgaWYgdW5yZXN0cmljdGluZyB0
aGF0Cj4gPiBmdW5jdGlvbiBzbyBpdCBjYW4gcmVjb2duaXplIHRoZSBlbnRpcmUgd29ya3NwYWNl
IHdvdWxkIGRvIGl0Lgo+ID4gVGhhbmtzIGZvciBhbnkgYW5zd2VyLgo+ID4gQmVzdCByZWdhcmRz
Lgo+ID4gRnJhbmNpc2NvLgo+ID4KPiA+PiBPbiBUdWUsIEp1bCAyNywgMjAyMSBhdCAyOjE5IEFN
IExpbnV4IGZvciBibGluZCBnZW5lcmFsIGRpc2N1c3Npb24gPAo+ID4+IGJsaW51eC1saXN0QHJl
ZGhhdC5jb20+IHdyb3RlOgo+ID4+Cj4gPj4gSGV5IHRoZXJlLAo+ID4+Cj4gPj4gaG1tLCBJJ2Qg
Zmlyc3RseSBhc2ssIGRvZXMgaXQgcmVhbGx5IG1hdHRlcj8KPiA+Pgo+ID4+IEkgbWVhbiwgeW91
J3JlIG1vc3QgbGlrZWx5IGdvaW5nIHRvIGF0dGFjaCBmbGFncyB0byB0aGUgY29tbWFuZCBhbnl3
YXksCj4gPj4gc28gaXQgc2hvdWxkbid0IGJlIG11Y2ggb2YgYW4gaXNzdWUgaWYgT0NSRGVza3Rv
cCBpcyBub3QgcHJlc2VudCBhbW9uZwo+ID4+IHRoZSBpbnN0YWxsZWQgYXBwcy4KPiA+Pgo+ID4+
IEp1c3QgbWFrZSBzdXJlIGl0J3MgcHJlc2VudCBpbiBlaXRoZXIgL3Vzci9iaW4gb3IgL3Vzci9s
b2NhbC9iaW4KPiA+PiBhY2NvcmRpbmcgdG8gdGhlIHdheSB5b3UgaW5zdGFsbGVkIGl0IGFuZCBp
dCBzaG91bGQgd29yayBqdXN0IGZpbmUuCj4gPj4KPiA+Pgo+ID4+IEJlc3QgcmVnYXJkcwo+ID4+
Cj4gPj4KPiA+PiBSYXN0aXNsYXYKPiA+Pgo+ID4+Cj4gPj4gRMWIYSAyNS4gNy4gMjAyMSBvIDE3
OjU5IExpbnV4IGZvciBibGluZCBnZW5lcmFsIGRpc2N1c3Npb24gbmFww61zYWwoYSk6Cj4gPj4+
IEhlbGxvIGV2ZXJ5b25lLAo+ID4+Pgo+ID4+PiBGb3IgcmVhc29ucyBsaWtlIGVtYWNzcGVhayBu
b3QgbGlraW5nIHBpcGV3aXJlLCAgYW5kIGxpb3Mgbm90IGxpa2luZwo+ID4+IGd0azQsCj4gPj4+
IEkgZGVjaWRlZCB0byBkbyBhIGNsZWFuIGluc3RhbGwgb2YgYXJjaCB3aXRoIE1hdGUgd2l0aCBw
dWxzZWF1ZGlvICBhbmQKPiA+PiBub3cKPiA+Pj4gZXZlcnl0aGluZyB3b3JrcyBhcyBleHBlY3Rl
ZC4KPiA+Pj4gSSBhbSBoYXZpbmcgYSBwcm9ibGVtIHRob3VnaDogSSBpbnN0YWxsZWQgb2NyZGVz
a3RvcCwgYnV0IEkgY2FuJ3Qgc2VlbQo+IHRvCj4gPj4+IGZpZ3VyZSBvdXQgaG93IHRvIGJpbmQg
YSBrZXkgYmluZGluZyB0byB0aGUgY29tbWFuZCBvY3JkZXNrdG9wLgo+ID4+PiBXaGVuIEkgZ28g
aW50byB0aGUgY29udHJvbCBjZW50ZXIsIHNlbGVjdCBrZXlib2FyZCBzaG9ydGN1dHMgYW5kIGNs
aWNrCj4gb24KPiA+Pj4gYWRkLCBpdCBnaXZlcyBtZSB0aGUgbmFtZSBmaWVsZCwgd2hlcmUgSSB0
eXBlIG9jciBjdXJyZW50IHdpbmRvdywgYW5kCj4gdGhlCj4gPj4+IGNvbW1hbmQgZmllbGQsIHdo
ZXJlIEkgdHlwZSBvY3JkZXNrdG9wLgo+ID4+PiBXaGVuIEkgc2VsZWN0IGJyb3dzZSBhcHBsaWNh
dGlvbnMgdGhvdWdoLCBhbmQgZXZlbiB3aGVuIEkgY2xpY2sgb24gc2hvdwo+ID4+IGFsbAo+ID4+
PiBhcHBsaWNhdGlvbnMsIG9jcmRlc2t0b3AgZG9lc24ndCBzaG93IHVwLgo+ID4+PiBBbnkgaWRl
YSBob3cgdG8gZml4IHRoaXM/Cj4gPj4+IEJlc3QgcmVnYXJkcy4KPiA+Pj4gRnJhbmNpc2NvLgo+
ID4+PiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+ID4+
PiBCbGludXgtbGlzdCBtYWlsaW5nIGxpc3QKPiA+Pj4gQmxpbnV4LWxpc3RAcmVkaGF0LmNvbQo+
ID4+PiBodHRwczovL2xpc3RtYW4ucmVkaGF0LmNvbS9tYWlsbWFuL2xpc3RpbmZvL2JsaW51eC1s
aXN0Cj4gPj4+Cj4gPj4KPiA+Pgo+ID4+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCj4gPj4gQmxpbnV4LWxpc3QgbWFpbGluZyBsaXN0Cj4gPj4gQmxpbnV4
LWxpc3RAcmVkaGF0LmNvbQo+ID4+IGh0dHBzOi8vbGlzdG1hbi5yZWRoYXQuY29tL21haWxtYW4v
bGlzdGluZm8vYmxpbnV4LWxpc3QKPiA+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCj4gPiBCbGludXgtbGlzdCBtYWlsaW5nIGxpc3QKPiA+IEJsaW51eC1s
aXN0QHJlZGhhdC5jb20KPiA+IGh0dHBzOi8vbGlzdG1hbi5yZWRoYXQuY29tL21haWxtYW4vbGlz
dGluZm8vYmxpbnV4LWxpc3QKPiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwo+IEJsaW51eC1saXN0IG1haWxpbmcgbGlzdAo+IEJsaW51eC1saXN0QHJlZGhh
dC5jb20KPiBodHRwczovL2xpc3RtYW4ucmVkaGF0LmNvbS9tYWlsbWFuL2xpc3RpbmZvL2JsaW51
eC1saXN0Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkJs
aW51eC1saXN0IG1haWxpbmcgbGlzdApCbGludXgtbGlzdEByZWRoYXQuY29tCmh0dHBzOi8vbGlz
dG1hbi5yZWRoYXQuY29tL21haWxtYW4vbGlzdGluZm8vYmxpbnV4LWxpc3Q=

