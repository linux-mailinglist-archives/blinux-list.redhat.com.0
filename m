Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 21F6046AFAE
	for <lists+blinux-list@lfdr.de>; Tue,  7 Dec 2021 02:22:27 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1638840146;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=+/HMbgv67p3gU1b9z9ngU1wYKGE9wPiEbn/HodnOLBg=;
	b=XkLJlXVT60SOUtAq/kraRObNBbM2mjUjgF/4Ep/aZ3+OEz0ze11rqpdFqFabiST53fw/XR
	YIgITBwFpPP06Q3jnWTOGnqDCSHzgTrYWZkkRzUtk5d/CpiKri5thBji+ZqQTGWxVoFOWj
	rn6hp7LruVRbFCneAANH0yrIvbn3lKs=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-388-uZkrJOHiNNqesqCJbTDddw-1; Mon, 06 Dec 2021 20:22:22 -0500
X-MC-Unique: uZkrJOHiNNqesqCJbTDddw-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.12])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id A6641802924;
	Tue,  7 Dec 2021 01:22:19 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 8DABF60C13;
	Tue,  7 Dec 2021 01:22:19 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 136151809CB8;
	Tue,  7 Dec 2021 01:22:18 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx09.intmail.prod.int.rdu2.redhat.com
	[10.11.54.9])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 1B71MEX7018001 for <blinux-list@listman.util.phx.redhat.com>;
	Mon, 6 Dec 2021 20:22:14 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 3626F492CA5; Tue,  7 Dec 2021 01:22:14 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast09.extmail.prod.ext.rdu2.redhat.com [10.11.55.25])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 314B6492CA3
	for <blinux-list@redhat.com>; Tue,  7 Dec 2021 01:22:14 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[205.139.110.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id F2D3729DD98C
	for <blinux-list@redhat.com>; Tue,  7 Dec 2021 01:22:13 +0000 (UTC)
Received: from darkstar.slint.fr (darkstar.slint.fr [172.105.89.79]) by
	relay.mimecast.com with ESMTP id us-mta-402-KtI7ZnbSP4ezur4dwsqVAQ-1;
	Mon, 06 Dec 2021 20:22:11 -0500
X-MC-Unique: KtI7ZnbSP4ezur4dwsqVAQ-1
Received: from [192.168.1.38] (men75-h08-176-172-247-100.dsl.sta.abo.bbox.fr
	[176.172.247.100])
	by darkstar.slint.fr (Postfix) with ESMTPSA id D6AFCA40F9
	for <blinux-list@redhat.com>; Tue,  7 Dec 2021 00:21:26 +0100 (CET)
Message-ID: <f329e167-e596-94f0-cd95-8f226878cfa8@slint.fr>
Date: Tue, 7 Dec 2021 02:22:10 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
	Thunderbird/91.3.1
Subject: Re: I have some questions about braille TTY, running alongside orca.
To: blinux-list@redhat.com
References: <4064d1ee-3bdb-32be-938f-cc0242974857@gmail.com>
	<70b53e38-54f8-60e5-7d23-b94d850e60dc@slint.fr>
In-Reply-To: <70b53e38-54f8-60e5-7d23-b94d850e60dc@slint.fr>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Mimecast-Bulk-Signature: yes
X-Mimecast-Spam-Signature: bulk
X-Scanned-By: MIMEDefang 2.85 on 10.11.54.9
X-MIME-Autoconverted: from quoted-printable to 8bit by
	lists01.pubmisc.prod.ext.phx2.redhat.com id 1B71MEX7018001
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"

Q29ycmVjdGlvbjogSSBtZWFudDoKZG8geW91IHdhbnQgdG8gdXNlIHlvdXIgYnJhaWxsZSBkaXNw
bGF5IGluIHRoZQpob3N0IHN5c3RlbSBvciBpbiB0aGUgVk0gb3IgYm90aD8KCkRpZGllcgoJCkxl
IDA3LzEyLzIwMjEgw6AgMDI6MTksIExpbnV4IGZvciBibGluZCBnZW5lcmFsIGRpc2N1c3Npb24g
YSDDqWNyaXTCoDoKPiBIZWxsbywKPiAKPiBJbiB0aGUgZGVza3RvcCB5b3VyIGJyYWlsbGUgZGlz
cGxheSBzaG91bGQgdXNlIHRoZSBicmFpbGxlIGZhY2lsaXR5IAo+IGJ1aWx0IGludG8KPiBvcmNh
LCBpdCB3b24odCB3b3JrIGRpcmVjdGx5IGFzIGl0IGRvZXMgaW4gY29uc29sZSBtb2RlLgo+IAo+
IEFib3V0IHRoZSByb2JvdGljIHZvaWNlOiB5b3UgbWF5IGNoYW5nZSBpdCwgaW4gdGhlIE9yY2Eg
cHJlZmVyZW5jZXMgR1VJLCAKPiBidXQKPiB5b3Ugd2lsbCBwcm9iYmFseSBuZWVkIHRvIGluc3Rh
bGwgYWRkaXRpb25hbCBvbmVzLgo+IAo+IEkgYW0gbm90IHN1cmUgdG8gdW5kZXJzdGFuZDsgZG8g
eW91IHdhbnQgdG8gdXNlIHlvdXIgYnJhaWxsZSBkaXNwbGF5IGluIHRoZQo+IGhvc3Qgc3lzdGVt
IG9yIGluIHRoZSBPciBib3RoPwo+IAo+IEFzIHN0YXRlZCBpbiB0aGlzIENoYW5nZWxvZzoKPiBo
dHRwczovL2dpdGh1Yi5jb20vYnJsdHR5L2JybHR0eS9ibG9iL21hc3Rlci9Eb2N1bWVudHMvQ2hh
bmdlTG9nCj4gVGhlIEJyYWlsbGlhbnQgNDBYIGZyb20gSHVtYW53YXJlIGlzIHN1cHBvcnRlZCBi
eSBicmx0dHksIGJ1dCBvbmx5IGluIHRoZQo+IGxhdGVzdCByZWxlYXNlIGJybHR0eSA2LjQuCj4g
Cj4gSW5zdGVhZCB0aGUgU2xpbnQgZGlzdHJpYnV0aW9uIHRoYXQgSSBtYWludGFpbiBzaGlwcyBi
cmx0dHktNi40LiBBbmQgc2hpcHMKPiBzZXZlcmFsIHZvaWNlcywgbWFueSBvdGhlciBvbmVzIGNh
biBiZSBib3VnaHQgdG8gb3JhbHV4Lm9yZzoKPiBodHRwczovL29yYWx1eC5vcmcvdm9pY2UucGhw
P215bGFuZz1lbgo+IAo+IEkgY2FuJ3QgYW5zd2VyIGFib3V0IEJsdWV0b290aCwgZm9yIHRoaXMg
cXVlc3Rpb24geW91IGNvdWxkIGFzayBvbiBvdXIgCj4gbWFpbGluZwo+IGxpc3Q6Cj4gVG8gc3Vi
c2NyaWJlIG9yIHVuc3Vic2NyaWJlLCBlbWFpbCBzbGludC1yZXF1ZXN0QGZyZWVsaXN0cy5vcmcg
d2l0aCB0aGUgCj4gc3ViamVjdAo+ICdzdWJzY3JpYmUnIG9yICd1bnN1YnNjcmliZScsIHRoZW4g
YW5zd2VyIHRoZSBlbWFpbCB5b3Ugd2lsbCByZWNlaXZlLgo+IE1vcmU6IGVtYWlsIHNsaW50LXJl
cXVlc3RAZnJlZWxpc3RzLm9yZyB3aXRoIGFzIHN1YmplY3QgJ2hlbHAnIG9yIAo+ICdjb21tYW5k
cycuCj4gCj4gQ2hlZXJzLAo+IERpZGllcgo+IC0tIAo+IERpZGllciBTcGFpZXIKPiBTbGludCBt
YWludGFpbmVyCj4gaHR0cHM6Ly9zbGludC5mci9kb2MvSGFuZEJvb2suaHRtbAo+IAo+IEJ1dCBV
YnVudHUgMjEuMTAgc2hpcHMgYnJsdHR5IDYuMyBzbyBwcm92aWRlcyBubyBzdXBwb3J0IGZvciB0
aGlzIGRldmljZQo+IExlIDA3LzEyLzIwMjEgw6AgMDE6NDksIExpbnV4IGZvciBibGluZCBnZW5l
cmFsIGRpc2N1c3Npb24gYSDDqWNyaXTCoDoKPj4gR29vZCBhZnRlcm5vb24sIG15IHN1YmplY3Qg
bGluZSBhbmQgc29tZW9uZSBzYXlzIGl0IGFsbCwgc2hvdWxkIEkgcnVuIAo+PiBicmFpbGxlIFRU
WSBhbG9uZ3NpZGUgb3JjYSwgb3Igc2hvdWxkIEkgdXNlIHRoZSBicmFpbGxlIGZhY2lsaXR5IGJ1
aWx0IAo+PiBpbnRvIG9yY2EgdG8gZHJpdmUgbXkgYnJhaWxsZSBkaXNwbGF5PyBJIGFtIHJ1bm5p
bmcgVWJ1bnR1IDIxMTAgYW5kIGEgCj4+IHZpcnR1YWwgbWFjaGluZS4gQWx0aG91Z2ggb3JjYSBp
cyBydW5uaW5nLCBJIGNhbid0IHVuZGVyc3RhbmQgdGhhdCAKPj4gcm9ib3RpYyB2b2ljZSBhbnlt
b3JlLiBUaGF0J3Mgd2h5IEkgYW0gZXh0cmVtZWx5IGludGVyZXN0ZWQgaW4gYWRkaW5nIAo+PiBz
dXBwb3J0IGZvciBteSBicmFpbGxlIGRpc3BsYXkuIFRoZSBzZWNvbmQgcXVlc3Rpb24gaXMgYmVj
YXVzZSBteSAKPj4gYnJhaWxsZSBkaXNwbGF5IGlzIG9uZSBvZiB0aGUgbGF0ZXN0LCBhbmQgZ3Jl
YXRlc3QuIElzIGl0IGV2ZW4gCj4+IHN1cHBvcnRlZD8gSSB1c2UgYSBodW1hbiB3aGVyZSBCcmFp
bGxpYW50IEJJIDQwIFggZGlzcGxheS4gSSBub3JtYWxseSAKPj4gcnVuIGl0IGluIGEgbmV3IFVT
QiBtb2RlIHdoZW4gSSBoYXZlIHRvIHVzZSBhbiBhc3Npc3RpdmUgbGlzdGVuaW5nIAo+PiBkZXZp
Y2UgZm9yIHRoZSBjb21wdXRlci4gVGhpcyBpcyBlc3BlY2lhbGx5IHRydWUgaWYgdGhlIGxpc3Rl
bmluZyAKPj4gZGV2aWNlIG11c3QgYmUgQmx1ZXRvb3RoLCBiZWNhdXNlIGluIHRoZSBob3N0IG9w
ZXJhdGluZyBzeXN0ZW0gd2hpY2ggCj4+IGlzIE1hYyBPUyBNb250ZXJleSwgaXQgYXBwZWFycyB0
aGF0IHlvdSBjYW5ub3QgcnVuIEJsdWV0b290aCBhdWRpbywgCj4+IGFuZCBCbHVldG9vdGggYnJh
aWxsZSB0b2dldGhlci4gSWYgdGhpcyBoYXBwZW5zLCBzcGVlY2ggaXMgZXh0cmVtZWx5IAo+PiBj
aG9wcHkgdG8gdW5pbnRlbGxpZ2libGUuIFVTQiBicmFpbGxlIHdoZW4gdXNpbmcgQmx1ZXRvb3Ro
IGF1ZGlvIGFuZCAKPj4gQmx1ZXRvb3RoIGJyYWlsbGUuIEkgc3VzcGVjdCB0aGF0IHRoaXMgaXMg
c29tZXRoaW5nIHRvIGRvIHdpdGggbXkgCj4+IG1hY2hpbmUuCj4+Cj4+Cj4+IFNpbmNlIHdoZW5l
dmVyIEkgdXNlIHRoZSBndWVzdCwgSSB1c2UgYnJhaWxsZSBpbiBVU0IgbW9kZSBJJ20gdGhpbmtp
bmcgCj4+IHN1cHBvcnRpbmcgdGhpcyBzaG91bGQgYmUgc3Vic3RhbnRpYWxseSBlYXNpZXIgdGhh
biBpZiBJIHdlcmUgdG8gdXNlIAo+PiBCbHVldG9vdGggZm9yIGluc3RhbmNlLiBEb2VzIGFueW9u
ZSBoYXZlIGFueSB0aG91Z2h0cywgYW5kL29yIAo+PiBzdWdnZXN0aW9ucyBvbiB0aGlzIGlzc3Vl
PyBQbGVhc2UgYmUgYXdhcmUgdGhhdCBJIGFtIGRpY3RhdGluZyB0aGlzIHRvIAo+PiB0aGUgY29t
cHV0ZXIsIHNvIHRoZXJlJ3Mgc29tZXRoaW5nIHRoYXQgSSBoYXZlIHdyaXR0ZW4gYWJvdmUsIHBs
ZWFzZSAKPj4gcmVhY2ggb3V0IHRvIG1lIGFuZCBhc2tlZCBtZSB3aGF0IEkgbWlnaHQgaGF2ZSBt
ZWFudC4gSSBsb29rIGZvcndhcmQgCj4+IHRvIGNsZWFyaW5nIHVwIGFueSBtaXN1bmRlcnN0YW5k
aW5ncyB0aGF0IG1pZ2h0IGNvbWUgdXAgYXMgYSByZXN1bHQgb2YgCj4+IHRoZSBhYm92ZSB3cml0
dGVuIHRleHQuIFRoYW5rIHlvdSBhbGwgdmVyeSBtdWNoIGZvciByZWFkaW5nIHRoaXMuCj4gCj4g
Cj4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KPiBCbGlu
dXgtbGlzdCBtYWlsaW5nIGxpc3QKPiBCbGludXgtbGlzdEByZWRoYXQuY29tCj4gaHR0cHM6Ly9s
aXN0bWFuLnJlZGhhdC5jb20vbWFpbG1hbi9saXN0aW5mby9ibGludXgtbGlzdAoKCl9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkJsaW51eC1saXN0IG1haWxp
bmcgbGlzdApCbGludXgtbGlzdEByZWRoYXQuY29tCmh0dHBzOi8vbGlzdG1hbi5yZWRoYXQuY29t
L21haWxtYW4vbGlzdGluZm8vYmxpbnV4LWxpc3Q=

