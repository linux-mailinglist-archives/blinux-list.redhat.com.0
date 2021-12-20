Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B36F47B1CD
	for <lists+blinux-list@lfdr.de>; Mon, 20 Dec 2021 18:04:21 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1640019860;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=K/eqTEtW6bXsCsKQ1YduZR23x/bCFdn7plbyiKMEKJU=;
	b=YgjYGGnJRmckm6XUxCRv3aCtY1PrdlmcHDzlADKahaJMz8i1WQ8/0VPp/fFo74/Sw2m6zy
	iQc+o26d4s6+TQYnfHvxzsiXc46MPSNvcia8SuRIqJCpVAChPsDL+VuBWzevsa4heuI9LY
	F+JPFMW5ZZUCDWA4YShglN1nIVeqReM=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-617-CFRSHYRhMo6QgajJFjYedQ-1; Mon, 20 Dec 2021 12:04:16 -0500
X-MC-Unique: CFRSHYRhMo6QgajJFjYedQ-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.11])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id BB49318C89C4;
	Mon, 20 Dec 2021 17:04:10 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 3FB3F5BD0C;
	Mon, 20 Dec 2021 17:04:09 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 2E1F54BB7B;
	Mon, 20 Dec 2021 17:04:02 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx09.intmail.prod.int.rdu2.redhat.com
	[10.11.54.9])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 1BKH3quE009493 for <blinux-list@listman.util.phx.redhat.com>;
	Mon, 20 Dec 2021 12:03:52 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 78A55492CA7; Mon, 20 Dec 2021 17:03:52 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast01.extmail.prod.ext.rdu2.redhat.com [10.11.55.17])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 74897492CA3
	for <blinux-list@redhat.com>; Mon, 20 Dec 2021 17:03:52 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [207.211.31.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
	bits)) (No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 5AC9485A5AA
	for <blinux-list@redhat.com>; Mon, 20 Dec 2021 17:03:52 +0000 (UTC)
Received: from darkstar.slint.fr (darkstar.slint.fr [172.105.89.79]) by
	relay.mimecast.com with ESMTP id us-mta-63-5Cwyd8SSNQuNoVutUOmS8A-1;
	Mon, 20 Dec 2021 12:03:50 -0500
X-MC-Unique: 5Cwyd8SSNQuNoVutUOmS8A-1
Received: from [192.168.1.37] (men75-h08-176-172-247-100.dsl.sta.abo.bbox.fr
	[176.172.247.100])
	by darkstar.slint.fr (Postfix) with ESMTPSA id 7472FA3A37
	for <blinux-list@redhat.com>; Mon, 20 Dec 2021 17:03:43 +0100 (CET)
Message-ID: <2c0ff675-6551-c3d4-f381-69a1abd2746a@slint.fr>
Date: Mon, 20 Dec 2021 18:03:49 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
	Thunderbird/91.4.0
Subject: Re: How can I add Arabic as a recognition language to Lios?
To: blinux-list@redhat.com
References: <e9be3d82-77fd-8c95-450b-c763b7f1cdd4@gmail.com>
	<522e1729-0d1b-5c40-c783-894535a5ac54@slint.fr>
	<3f7c02c9-c6de-8cc7-6a6d-1157be73d5e2@gmail.com>
In-Reply-To: <3f7c02c9-c6de-8cc7-6a6d-1157be73d5e2@gmail.com>
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
	lists01.pubmisc.prod.ext.phx2.redhat.com id 1BKH3quE009493
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
Content-Language: en-US
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SGkgSWJyYWhpbSwKCk5vdCBzdXJlIHdoZXJlIHRoZSBpc3N1ZSBpcy4KClRvIGludmVzdGlnYXRl
LCBjb3VsZCB5b3UgcGxlYXNlIHNlbmQgcHJvdmlkZSBhIGxpbmsgdG8gYSBwZGYgaW4gQXJhYmlj
IChvciBzZW5kCm1lIHByaXZhdGVseSB0aGUgcGRmIGl0c2VsZikgdGhhdCB3ZSBjb3VsZCBib3Ro
IHRyeT8KClRoYW5rcwoKQ2hlZXJzLApEaWRpZXIKCkxlIDIwLzEyLzIwMjEgw6AgMDU6MDksIExp
bnV4IGZvciBibGluZCBnZW5lcmFsIGRpc2N1c3Npb24gYSDDqWNyaXTCoDoKPiBUaGFua3MgRGlk
aWVyLAo+IAo+IFVuZm9ydHVuYXRlbHksIEkgdHJpZWQgeW91ciBzdWdnZXN0aW9uIGFuZCBzdGls
bCBnb3QgemVybyBhY2N1cmFjeSBvZiBPQ1Igb2YKPiBBcmFiaWMgbGV0dGVycy4gSSB0eXBlZCBh
IFBhcmFncmFwaCBvZiBBcmFiaWMgYW5kIHByaW50ZWQgYW5kIHRoZW4gc2Nhbm5lZCwgYnV0Cj4g
dGhlIG91dGNvbWUgd2FzIGdpYmJpcmlzaCwgYWxsIGluIGxhdGluIGNoYXJhY3RlcnMuIEkgdHlw
ZWQgYSBwYXJhZ3JhcGggaW4KPiBFbmdsaXNoIGFuZCBwcmludGVkIGl0IG91dCwgd2hlbiBJIHNj
YW5uZWQsIHRoZSBPQ1IgYWNjdXJhY3kgd2FzIGV4Y2VsbGVudC7CoCBTbywKPiB0aGVyIGlzIHNv
bWUgcHJvYmxlbSB3aXRoIHRoZSBBcmFiaWMgcmVjb2duaXRpb24uwqAgSXQgc2VlbXMgdG8gbWUg
dGhhdCBhbHRob3VnaAo+IEFyYWJpYyBpcyBsaXN0ZWQsIHRoZSBPQ1IgZW5naW5lIGlzIG5vdCBh
Y3R1YWxseSB0cnlpbmcgdG8gcmVjb2duaXplIEFyYWJpYy4KPiAKPiBDaGVlcnMsCj4gCj4gSWJy
YWhpbQo+IAo+IE9uIDEyLzE3LzIxIDY6NDggUE0sIExpbnV4IGZvciBibGluZCBnZW5lcmFsIGRp
c2N1c3Npb24gd3JvdGU6Cj4+IEhpIElicmFoaW0sCj4+Cj4+IFlvdSBkbyBub3QgbmVlZCB0byBh
ZGQgYW55dGhpbmcgc3BlY2lhbCwgdGhlIGZpbGVzCj4+IC91c3Ivc2hhcmUvdGVzc2RhdGEvQXJh
YmljLnRyYWluZWRkYXRhIGJlaW5nIGluY2x1ZGVkIGluIHRoZSBwYWNrYWdlCj4+IHRlc3NlcmFj
dC1kYXRhIGluIFNsaW50Lgo+Pgo+PiBKdXRzIG9wZW4gbGlvcywgdGhlbiBpbiBtZW51IHNlbGVj
dCBQcmVmZXJlbmNlcyB0aGVuIFByZWZlcmVuY2VzIHJlY29nbml0aW9uIGFuZAo+PiBzZWxlY3Q6
Cj4+IEVuZ2luZTogVGVzc2VyYWN0Cj4+IExhbmd1YWdlOiBBcmFiaWMKPj4KPj4gSSBkb24ndCBo
YXZlIGEgc2Nhbm5lciBhdCBoYW5kIGJ1dCBkb3dubG9hZGVkIHRoaXMgZmlsZToKPj4gaHR0cHM6
Ly9mYWRhLmJpcnplaXQuZWR1L2JpdHN0cmVhbS8yMC41MDAuMTE4ODkvNjkxMC8xL21raGFsZGkl
MjBTYWhhciUyMFJlc2VhcmNoLnBkZgo+Pgo+PiB0aGVuIEkgb3BlbmVkIGl0IGluIExpb3MgKG1l
bnUgRmlsZSB0aGVuIE9wZW4pLgo+Pgo+PiBUaGUgZmlsZSB3YXMgcmVjb2duaXplZCBhbmQgdGhl
IHRleHQgcHJvcGVybHkgZXh0cmFjdGVkLgo+Pgo+PiBDb3B5aW5nIGEgcGFyYWdyYXBoIG9mIHRo
ZSBleHRyYWN0ZWQgdGV4dCBhbmQgcGFzdGluZyBpdCBpbiB0cmFuc2xhdGUuZ29vZ2xlLmZyCj4+
IGFsbG93ZWQgbWUgdG8gcmVhZCBpdCBpbiBGcmVuY2ggPHNtaWxlPgo+Pgo+PiBDaGVlcnMsCj4+
Cj4+IERpZGllcgo+Pgo+PiBMZSAxOC8xMi8yMDIxIMOgIDAwOjEwLCBMaW51eCBmb3IgYmxpbmQg
Z2VuZXJhbCBkaXNjdXNzaW9uIGEgw6ljcml0wqA6Cj4+PiBIaSBBbGwsCj4+Pgo+Pj4gVGhpcyBx
dWVzdGlvbiBpcyBwcmltYXJpbHkgdG8gRGlkaWVyOgo+Pj4KPj4+IEhvdyBjYW4gSSBhZGQgQXJh
YmljIGRpY3Rpb25hcnkgdG8gTGlvcyBzbyB0aGF0IEkgY2FuIHVzZSBteSBzY2FubmVyIHRvIHNj
YW4KPj4+IEFyYWJpYyB0ZXh0PyBJIGFzc3VtZSBJIHdpbGwgYWxzbyBiZSBhYmxlIHRvIHJ1biBB
cmFiaWMucGRmIGZpbGVzIHRocm91Z2ggTGlvcwo+Pj4gYW5kIGFzIHN1Y2ggSSB3aWxsIGhhdmUg
YWNjZXNzIHRvIGEgbG90IG9mIEFyYWJpYyBib29rcyBhdmFpbGFibGUgb24gdGhlIG5ldC4KPj4+
Cj4+PiBDaGVlcnMsCj4+Pgo+Pj4gSWJyYWhpbQoKCl9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCkJsaW51eC1saXN0IG1haWxpbmcgbGlzdApCbGludXgtbGlz
dEByZWRoYXQuY29tCmh0dHBzOi8vbGlzdG1hbi5yZWRoYXQuY29tL21haWxtYW4vbGlzdGluZm8v
YmxpbnV4LWxpc3Q=

