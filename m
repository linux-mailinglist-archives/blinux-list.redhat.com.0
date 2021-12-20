Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 5EBB647B20A
	for <lists+blinux-list@lfdr.de>; Mon, 20 Dec 2021 18:23:53 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1640021032;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=pp/fDC2k8TyWPJi/MQ1QGbX40VBrG3LiohEt3POKkYU=;
	b=hj+ZF6hXVBzTbX8ggOCgLj8OBAw+csMtcQYhzhL27LVy9HZsyH2J7S3OeqhXGWIMXZ/Z5B
	9sMU5vDyAYhhHGRkkr1iz95IW4SpaVl7DW5CHgD4mMq8g1PQVukBBpyGTjLJom8yZmzueb
	GFc+Y181R92W19vy2ngmC3K89idqmmU=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-88-VI0gTWlQP02Y_jFDMSOkAA-1; Mon, 20 Dec 2021 12:23:44 -0500
X-MC-Unique: VI0gTWlQP02Y_jFDMSOkAA-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com [10.5.11.13])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 4CBC51006AA6;
	Mon, 20 Dec 2021 17:23:40 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 478F64E2DD;
	Mon, 20 Dec 2021 17:23:39 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 586BA18095C9;
	Mon, 20 Dec 2021 17:23:38 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.rdu2.redhat.com
	[10.11.54.4])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 1BKHMu9Z011459 for <blinux-list@listman.util.phx.redhat.com>;
	Mon, 20 Dec 2021 12:22:57 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 9A3CE2026D5D; Mon, 20 Dec 2021 17:22:56 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast01.extmail.prod.ext.rdu2.redhat.com [10.11.55.17])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 9606B2026D4D
	for <blinux-list@redhat.com>; Mon, 20 Dec 2021 17:22:53 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [207.211.31.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
	bits)) (No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id BCE4B85A5AA
	for <blinux-list@redhat.com>; Mon, 20 Dec 2021 17:22:53 +0000 (UTC)
Received: from darkstar.slint.fr (darkstar.slint.fr [172.105.89.79]) by
	relay.mimecast.com with ESMTP id us-mta-257-cGeQRlU1PP-FHq99FoaUHg-1;
	Mon, 20 Dec 2021 12:22:46 -0500
X-MC-Unique: cGeQRlU1PP-FHq99FoaUHg-1
Received: from [192.168.1.37] (men75-h08-176-172-247-100.dsl.sta.abo.bbox.fr
	[176.172.247.100])
	by darkstar.slint.fr (Postfix) with ESMTPSA id 6FEC2A3A3C
	for <blinux-list@redhat.com>; Mon, 20 Dec 2021 17:22:40 +0100 (CET)
Message-ID: <ca66c525-77b5-b9ae-0d93-e80a436acdeb@slint.fr>
Date: Mon, 20 Dec 2021 18:22:45 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
	Thunderbird/91.4.0
Subject: Re: How can I add Arabic as a recognition language to Lios?
To: blinux-list@redhat.com
References: <2c0ff675-6551-c3d4-f381-69a1abd2746a@slint.fr>
	<6101C118-6497-4838-8184-BE24701F388E@gmail.com>
In-Reply-To: <6101C118-6497-4838-8184-BE24701F388E@gmail.com>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.4
X-MIME-Autoconverted: from quoted-printable to 8bit by
	lists01.pubmisc.prod.ext.phx2.redhat.com id 1BKHMu9Z011459
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

SGkgSWJyYWhpbSwKClRoYXQgaXMgaXMgd2hhdCBJIHVuZGVyc3Rvb2QsIGJ1dCBJIHdvdWxkIGxp
a2UgdG8ga25vdyBpZiB0aGUgc2FtZSBpc3N1ZSBvY2N1cnMKd2l0aCBhIFBERiBmaWxlLCBoZW5j
ZSBteSByZXF1ZXN0cyB0aGF0IHdlIGJvdGggdGVzdCB3aXRoIHRoZSBzYW1lIFBERiBmaWxlLgpF
dmVuIG1vcmUgc28gYXMgSSBkbyBub3QgaGF2ZSBhIHNjYW5uZXIgYXQgaGFuZCByaWdodCBub3cg
dG8gcmVwcm9kdWNlIHRoZSB0ZXN0CnlvdSBkaWQuCgpDaGVlcnMsCkRpZGllcgoKTGUgMjAvMTIv
MjAyMSDDoCAxODoxMiwgTGludXggZm9yIGJsaW5kIGdlbmVyYWwgZGlzY3Vzc2lvbiBhIMOpY3Jp
dMKgOgo+IEhpIERpZGllciwKPiBJIGRpZCBub3QgZG8gdGhlIHRlc3Rpbmcgb24gYSBQREYgZmls
ZS4gSSBkaWQgdGhlIHRlc3RpbmcgaW4gZGlyZWN0IHNjYW4uIEkgcHV0IHRoZSBwYWdlIG9uIGEg
ZmxhdGJlZCBzY2FubmVyIGFuZCBoaXQgdGhlIHNjYW4gYW5kIHJlY29nbml6ZSBtZW51IGl0ZW0g
aW4gTGlvcy4KPiBDaGVlcnMsCj4gSWJyYWhpbQo+IAo+IFNlbnQgZnJvbSBteSBpUGhvbmUKPiAK
Pj4gT24gRGVjIDIwLCAyMDIxLCBhdCAxMjowNCBQTSwgTGludXggZm9yIGJsaW5kIGdlbmVyYWwg
ZGlzY3Vzc2lvbiA8YmxpbnV4LWxpc3RAcmVkaGF0LmNvbT4gd3JvdGU6Cj4+Cj4+IO+7v0hpIEli
cmFoaW0sCj4+Cj4+IE5vdCBzdXJlIHdoZXJlIHRoZSBpc3N1ZSBpcy4KPj4KPj4gVG8gaW52ZXN0
aWdhdGUsIGNvdWxkIHlvdSBwbGVhc2Ugc2VuZCBwcm92aWRlIGEgbGluayB0byBhIHBkZiBpbiBB
cmFiaWMgKG9yIHNlbmQKPj4gbWUgcHJpdmF0ZWx5IHRoZSBwZGYgaXRzZWxmKSB0aGF0IHdlIGNv
dWxkIGJvdGggdHJ5Pwo+Pgo+PiBUaGFua3MKPj4KPj4gQ2hlZXJzLAo+PiBEaWRpZXIKPj4KPj4+
IExlIDIwLzEyLzIwMjEgw6AgMDU6MDksIExpbnV4IGZvciBibGluZCBnZW5lcmFsIGRpc2N1c3Np
b24gYSDDqWNyaXQgOgo+Pj4gVGhhbmtzIERpZGllciwKPj4+Cj4+PiBVbmZvcnR1bmF0ZWx5LCBJ
IHRyaWVkIHlvdXIgc3VnZ2VzdGlvbiBhbmQgc3RpbGwgZ290IHplcm8gYWNjdXJhY3kgb2YgT0NS
IG9mCj4+PiBBcmFiaWMgbGV0dGVycy4gSSB0eXBlZCBhIFBhcmFncmFwaCBvZiBBcmFiaWMgYW5k
IHByaW50ZWQgYW5kIHRoZW4gc2Nhbm5lZCwgYnV0Cj4+PiB0aGUgb3V0Y29tZSB3YXMgZ2liYmly
aXNoLCBhbGwgaW4gbGF0aW4gY2hhcmFjdGVycy4gSSB0eXBlZCBhIHBhcmFncmFwaCBpbgo+Pj4g
RW5nbGlzaCBhbmQgcHJpbnRlZCBpdCBvdXQsIHdoZW4gSSBzY2FubmVkLCB0aGUgT0NSIGFjY3Vy
YWN5IHdhcyBleGNlbGxlbnQuICBTbywKPj4+IHRoZXIgaXMgc29tZSBwcm9ibGVtIHdpdGggdGhl
IEFyYWJpYyByZWNvZ25pdGlvbi4gIEl0IHNlZW1zIHRvIG1lIHRoYXQgYWx0aG91Z2gKPj4+IEFy
YWJpYyBpcyBsaXN0ZWQsIHRoZSBPQ1IgZW5naW5lIGlzIG5vdCBhY3R1YWxseSB0cnlpbmcgdG8g
cmVjb2duaXplIEFyYWJpYy4KPj4+Cj4+PiBDaGVlcnMsCj4+Pgo+Pj4gSWJyYWhpbQo+Pj4KPj4+
PiBPbiAxMi8xNy8yMSA2OjQ4IFBNLCBMaW51eCBmb3IgYmxpbmQgZ2VuZXJhbCBkaXNjdXNzaW9u
IHdyb3RlOgo+Pj4+IEhpIElicmFoaW0sCj4+Pj4KPj4+PiBZb3UgZG8gbm90IG5lZWQgdG8gYWRk
IGFueXRoaW5nIHNwZWNpYWwsIHRoZSBmaWxlcwo+Pj4+IC91c3Ivc2hhcmUvdGVzc2RhdGEvQXJh
YmljLnRyYWluZWRkYXRhIGJlaW5nIGluY2x1ZGVkIGluIHRoZSBwYWNrYWdlCj4+Pj4gdGVzc2Vy
YWN0LWRhdGEgaW4gU2xpbnQuCj4+Pj4KPj4+PiBKdXRzIG9wZW4gbGlvcywgdGhlbiBpbiBtZW51
IHNlbGVjdCBQcmVmZXJlbmNlcyB0aGVuIFByZWZlcmVuY2VzIHJlY29nbml0aW9uIGFuZAo+Pj4+
IHNlbGVjdDoKPj4+PiBFbmdpbmU6IFRlc3NlcmFjdAo+Pj4+IExhbmd1YWdlOiBBcmFiaWMKPj4+
Pgo+Pj4+IEkgZG9uJ3QgaGF2ZSBhIHNjYW5uZXIgYXQgaGFuZCBidXQgZG93bmxvYWRlZCB0aGlz
IGZpbGU6Cj4+Pj4gaHR0cHM6Ly9mYWRhLmJpcnplaXQuZWR1L2JpdHN0cmVhbS8yMC41MDAuMTE4
ODkvNjkxMC8xL21raGFsZGklMjBTYWhhciUyMFJlc2VhcmNoLnBkZgo+Pj4+Cj4+Pj4gdGhlbiBJ
IG9wZW5lZCBpdCBpbiBMaW9zIChtZW51IEZpbGUgdGhlbiBPcGVuKS4KPj4+Pgo+Pj4+IFRoZSBm
aWxlIHdhcyByZWNvZ25pemVkIGFuZCB0aGUgdGV4dCBwcm9wZXJseSBleHRyYWN0ZWQuCj4+Pj4K
Pj4+PiBDb3B5aW5nIGEgcGFyYWdyYXBoIG9mIHRoZSBleHRyYWN0ZWQgdGV4dCBhbmQgcGFzdGlu
ZyBpdCBpbiB0cmFuc2xhdGUuZ29vZ2xlLmZyCj4+Pj4gYWxsb3dlZCBtZSB0byByZWFkIGl0IGlu
IEZyZW5jaCA8c21pbGU+Cj4+Pj4KPj4+PiBDaGVlcnMsCj4+Pj4KPj4+PiBEaWRpZXIKPj4+Pgo+
Pj4+IExlIDE4LzEyLzIwMjEgw6AgMDA6MTAsIExpbnV4IGZvciBibGluZCBnZW5lcmFsIGRpc2N1
c3Npb24gYSDDqWNyaXQgOgo+Pj4+PiBIaSBBbGwsCj4+Pj4+Cj4+Pj4+IFRoaXMgcXVlc3Rpb24g
aXMgcHJpbWFyaWx5IHRvIERpZGllcjoKPj4+Pj4KPj4+Pj4gSG93IGNhbiBJIGFkZCBBcmFiaWMg
ZGljdGlvbmFyeSB0byBMaW9zIHNvIHRoYXQgSSBjYW4gdXNlIG15IHNjYW5uZXIgdG8gc2Nhbgo+
Pj4+PiBBcmFiaWMgdGV4dD8gSSBhc3N1bWUgSSB3aWxsIGFsc28gYmUgYWJsZSB0byBydW4gQXJh
YmljLnBkZiBmaWxlcyB0aHJvdWdoIExpb3MKPj4+Pj4gYW5kIGFzIHN1Y2ggSSB3aWxsIGhhdmUg
YWNjZXNzIHRvIGEgbG90IG9mIEFyYWJpYyBib29rcyBhdmFpbGFibGUgb24gdGhlIG5ldC4KPj4+
Pj4KPj4+Pj4gQ2hlZXJzLAo+Pj4+Pgo+Pj4+PiBJYnJhaGltCj4+Cj4+Cj4+IF9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCj4+IEJsaW51eC1saXN0IG1haWxp
bmcgbGlzdAo+PiBCbGludXgtbGlzdEByZWRoYXQuY29tCj4+IGh0dHBzOi8vbGlzdG1hbi5yZWRo
YXQuY29tL21haWxtYW4vbGlzdGluZm8vYmxpbnV4LWxpc3QKPiBfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+IEJsaW51eC1saXN0IG1haWxpbmcgbGlzdAo+
IEJsaW51eC1saXN0QHJlZGhhdC5jb20KPiBodHRwczovL2xpc3RtYW4ucmVkaGF0LmNvbS9tYWls
bWFuL2xpc3RpbmZvL2JsaW51eC1saXN0CgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KQmxpbnV4LWxpc3QgbWFpbGluZyBsaXN0CkJsaW51eC1saXN0QHJl
ZGhhdC5jb20KaHR0cHM6Ly9saXN0bWFuLnJlZGhhdC5jb20vbWFpbG1hbi9saXN0aW5mby9ibGlu
dXgtbGlzdA==

