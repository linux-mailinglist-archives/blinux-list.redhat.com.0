Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [63.128.21.124])
	by mail.lfdr.de (Postfix) with ESMTP id 8CDAC31E0D8
	for <lists+blinux-list@lfdr.de>; Wed, 17 Feb 2021 21:54:07 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1613595246;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=j+AZOQTg0ns0m3Z98jUlxd3sq220e+RxUTEsY9ts7Zg=;
	b=EDNwAQlx9nUbVMHbROWE8ofAziRO8z7TutLn3vQaa1rZrrTwEP8C56jtk/GPzAdzwxqegA
	JIC57cFkHE4nXO6qNYqGisxAgc0OpLqQnhyZD+UUqpn6lDCIUmRUyC/FPKTshqntB4q4XT
	amelj/81xwlNDtGrySWTYquHQ0Qi2oI=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-574-DcfRthNXNSmYPe5yOqmkHQ-1; Wed, 17 Feb 2021 15:54:04 -0500
X-MC-Unique: DcfRthNXNSmYPe5yOqmkHQ-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com [10.5.11.23])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id AFAAD1E564;
	Wed, 17 Feb 2021 20:53:59 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 3FAC719C46;
	Wed, 17 Feb 2021 20:53:58 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 43F404E58E;
	Wed, 17 Feb 2021 20:53:54 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.rdu2.redhat.com
	[10.11.54.3])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 11HKlnDY001396 for <blinux-list@listman.util.phx.redhat.com>;
	Wed, 17 Feb 2021 15:47:49 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 42583106D44D; Wed, 17 Feb 2021 20:47:49 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast03.extmail.prod.ext.rdu2.redhat.com [10.11.55.19])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 3DEA8106569A
	for <blinux-list@redhat.com>; Wed, 17 Feb 2021 20:47:46 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [207.211.31.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 0E31992B001
	for <blinux-list@redhat.com>; Wed, 17 Feb 2021 20:47:46 +0000 (UTC)
Received: from gateway10.unifiedlayer.com (gateway10.unifiedlayer.com
	[69.89.30.52]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-253-mChG5GzoPUKli1ZbD4mrqQ-1; Wed, 17 Feb 2021 15:47:42 -0500
X-MC-Unique: mChG5GzoPUKli1ZbD4mrqQ-1
Received: from cm6.websitewelcome.com (unknown [108.167.139.19])
	by gateway10.unifiedlayer.com (Postfix) with ESMTP id 0DBDA20094907
	for <blinux-list@redhat.com>; Wed, 17 Feb 2021 13:59:58 -0600 (CST)
Received: from uscentral455.accountservergroup.com ([174.136.13.174])
	by cmsmtp with ESMTP
	id CSzNldfsIaJ23CSzNlaunC; Wed, 17 Feb 2021 13:59:57 -0600
X-Authority-Reason: nr=8
Received: from 172-0-250-193.lightspeed.rcsntx.sbcglobal.net
	([172.0.250.193]:48247 helo=bigbox.attlocal.net)
	by uscentral455.accountservergroup.com with esmtpsa
	(TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.91)
	(envelope-from <blinux.list@thechases.com>) id 1lCSzN-0025qw-KE
	for blinux-list@redhat.com; Wed, 17 Feb 2021 13:59:57 -0600
Date: Wed, 17 Feb 2021 13:59:56 -0600
To: blinux-list@redhat.com
Subject: Re: Is this possible?
Message-ID: <20210217135956.2621148b@bigbox.attlocal.net>
In-Reply-To: <Pine.LNX.4.64.2102171201160.1320888@server2.shellworld.net>
References: <Pine.LNX.4.64.2102170148140.1176343@server2.shellworld.net>
	<20210217103219.3da4c2ef@bigbox.attlocal.net>
	<Pine.LNX.4.64.2102171201160.1320888@server2.shellworld.net>
MIME-Version: 1.0
X-AntiAbuse: This header was added to track abuse,
	please include it with any abuse report
X-AntiAbuse: Primary Hostname - uscentral455.accountservergroup.com
X-AntiAbuse: Original Domain - redhat.com
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - thechases.com
X-BWhitelist: no
X-Source-IP: 172.0.250.193
X-Source-L: No
X-Exim-ID: 1lCSzN-0025qw-KE
X-Source: 
X-Source-Args: 
X-Source-Dir: 
X-Source-Sender: 172-0-250-193.lightspeed.rcsntx.sbcglobal.net
	(bigbox.attlocal.net) [172.0.250.193]:48247
X-Source-Auth: tim@thechases.com
X-Email-Count: 1
X-Source-Cap: dGhlY2hhc2U7dGhlY2hhc2U7dXNjZW50cmFsNDU1LmFjY291bnRzZXJ2ZXJncm91cC5jb20=
X-Local-Domain: yes
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Mimecast-Spam-Signature: yes
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.3
X-MIME-Autoconverted: from quoted-printable to 8bit by
	lists01.pubmisc.prod.ext.phx2.redhat.com id 11HKlnDY001396
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
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

VGltIGhlcmUuICBDYW4geW91IHJ1biBmaXJlZm94PyBTb3J0YS4KCllvdSBjYW4gZm9yd2FyZCBG
aXJlZm94IG9uIGEgcmVtb3RlIG1hY2hpbmUgc28gdGhhdCBpdCBkaXNwbGF5cyBvbiBhCmxvY2Fs
IG1hY2hpbmUgdXNpbmcgdGhlICItWCIgcGFyYW1ldGVyIHRvIHNzaDoKCiAgJCBzc2ggLVggdXNl
ckByZW1vdGUgZmlyZWZveAoKVGhhdCBzYWlkOgoKMSkgSSBkb24ndCB0aGluayBhIHNjcmVlbi1y
ZWFkZXIgcnVubmluZyBsb2NhbGx5IHdvdWxkIGhhdmUgYWNjZXNzIHRvCnRoZSB1bmRlcmx5aW5n
IGFjY2Vzc2liaWxpdHkgaW5mb3JtYXRpb24gaW4gdGhlIHJlbW90ZSBwcm9ncmFtLiAgQQpzY3Jl
ZW4tcmVhZGVyIHJ1bm5pbmcgb24gdGhlIHJlbW90ZSBtYWNoaW5lIG1pZ2h0IGJlIGFibGUgdG8g
YWNjZXNzCnRoZSBpbmZvcm1hdGlvbiwgYnV0IHlvdSdkIHRoZW4gaGF2ZSB0byB3YXkgdG8gZm9y
d2FyZCB0aGF0IGExMXkKaW5mb3JtYXRpb24gYmFjayB0byB5b3VyIGxvY2FsIG1hY2hpbmUgKHNl
ZSAjMyBiZWxvdykKCjIpIGl0J3MgYSByZWFsbHkgc3Vja3kgZXhwZXJpZW5jZSBvdmVyIGEgbG9u
ZyBkaXN0YW5jZS4gIElmIHRoZQoicmVtb3RlIiBtYWNoaW5lIGlzIG9uIHlvdXIgc2FtZSBsb2Nh
bCBuZXR3b3JrLCBpdCdzIHRvbGVyYWJsZTsgaWYKeW91J3JlIHRyeWluZyB0byB1c2UgYSByZW1v
dGUgbWFjaGluZSBpbiBhIGRhdGEtY2VudGVyIGhhbGYtd2F5CmFjcm9zcyB0aGUgY29udGluZW50
IG92ZXIgYSBtZWRpb2NyZSBicm9hZGJhbmQgY29ubmVjdGlvbiwgaXQncyBhCmhvcnJpYmxlIGV4
cGVyaWVuY2UuIEkndmUgdXNlZCB0aGlzIGluIGEgcGluY2ggKHJlbW90aW5nIGludG8gbXkgaG9t
ZQptYWNoaW5lIGZyb20gbXkgaW4tbGF3cyBoYWxmd2F5IGFjcm9zcyB0aGUgY291bnRyeSBhbmQg
dXNpbmcgYSBHVUkKYXBwbGljYXRpb24pLCBidXQgdGhlIGxhdGVuY3kgd2lsbCBkcml2ZSB5b3Ug
Ym9ua2Vycy4KCjMpIGl0IGRvZXNuJ3QgZm9yd2FyZCB2aWRlbyBvciBhdWRpbyB3aXRob3V0IGEg
ZmV3IGV4dHJhIHRyaWNrcy4gIEJ5CmRlZmF1bHQsIHZpZGVvIGdlbmVyYWxseSByZW5kZXJzIGRp
cmVjdGx5IHRvIGEgcmVnaW9uIG9mIHRoZSBsb2NhbAooYW5kIGluIHRoaXMgY29udGV4dCwgImxv
Y2FsIiBtZWFucyBsb2NhbC10by10aGUtcmVtb3RlLW1hY2hpbmUpCnBsYWNlIHdoZXJlIGZpcmVm
b3ggaXMgcnVubmluZy4gIFdoaWNoIGlzbid0IHdoZXJlIHlvdSBhcmUsIG1lYW5pbmcKaG9ycmli
bGUgcGVyZm9ybWFuY2UuICBTaW1pbGFybHksIHRoZXJlIGFyZSB3YXlzIG9mIHJvdXRpbmcgYXVk
aW8Kb3V0cHV0IG92ZXIgdGhlIG5ldHdvcmsgKHdoaWNoIG1pZ2h0IGV2ZW4gbGV0IHlvdSBydW4g
YSBzY3JlZW4tcmVhZGVyCm9uIGEgcmVtb3RlIG1hY2hpbmUgYW5kIGhhdmUgaXQgcmVuZGVyIHRo
ZSBhdWRpbyBsb2NhbGx5OyBpZiB5b3UgdXNlCkJyYWlsbGUgb3V0cHV0LCB5b3UgbWlnaHQgaGF2
ZSBhIGJldHRlciB0aW1lIG9mIGl0KS4KClNvIGFsbCB0aGF0IHNhaWQsIHlvdSAqY2FuKiBydW4g
RmlyZWZveCByZW1vdGVseSwgYnV0IGl0J3MgYQpnZW5lcmFsbHkgdW5wbGVhc2FudOKAlGFuZCBw
b3RlbnRpYWxseSBpbmFjY2Vzc2libGXigJRleHBlcmllbmNlIGFsbAoncm91bmQuCgpJcyB0aGVy
ZSBhIHBhcnRpY3VsYXIgcHJvYmxlbSB5b3UncmUgdHJ5aW5nIHRvIHNvbHZlIHRoYXQgbWlnaHQg
YmUKc29sdmVkIHVzaW5nIG1lYW5zIG90aGVyIHRoYW4gZGlzcGxheWluZyBhIHJlbW90ZSBmaXJl
Zm94IHNlc3Npb24KbG9jYWxseT8KCi1UaW0KCgoKT24gRmVicnVhcnkgMTcsIDIwMjEsIExpbnV4
IGZvciBibGluZCBnZW5lcmFsIGRpc2N1c3Npb24gd3JvdGU6Cj4gQ2FuIHlvdSBydW4gRmlyZWZv
eD8KPiBPdGhlcnMgaGVyZSBpbmRpY2F0ZSB0aGF0IHlvdSBkbyBub3QgaGF2ZSBhY2Nlc3MgdG8g
dGhlIGdyYXBoaWNhbAo+IGRlc2t0b3AgaXRzZWxmLCBqdXN0IHRoZSBzYW1lIGJhc2VsaW5lIHRv
b2xzLgo+IAo+IAo+IAo+IE9uIFdlZCwgMTcgRmViIDIwMjEsIExpbnV4IGZvciBibGluZCBnZW5l
cmFsIGRpc2N1c3Npb24gd3JvdGU6Cj4gCj4gPiBZZXMsIEkgaGF2ZSBteSB3aWZlIHNldCB1cCB3
aXRoIGEgZ3JhcGhpY2FsIGRlc2t0b3AgZWRpdGlvbiBvZgo+ID4gVWJ1bnR1IGFuZCBJIFNTSCBm
cm9tIG15IG1hY2hpbmUgaW50byBoZXIgbWFjaGluZSByZWd1bGFybHkgdG8KPiA+IHBlcmZvcm0g
YmFja3VwcyAmIHVwZ3JhZGVzLiAgQXMgbG9uZyBhcyB5b3UncmUgcnVubmluZyBzc2hkIG9uCj4g
PiB0aGUgZ3JhcGhpY2FsIGRlc2t0b3AgKGFuZCB5b3UgaGF2ZW4ndCBjb25maWd1cmVkIGEgZmly
ZXdhbGwgdG8KPiA+IGJsb2NrIFNTSCBhY2Nlc3MpLCBpdCBzaG91bGQgd29yayBmaW5lLgo+ID4K
PiA+IC1UaW0KPiA+Cj4gPiBPbiBGZWJydWFyeSAxNywgMjAyMSwgTGludXggZm9yIGJsaW5kIGdl
bmVyYWwgZGlzY3Vzc2lvbiB3cm90ZTogIAo+ID4+IEhpIGZvbGtzLAo+ID4+IElzIGl0IHBvc3Np
YmxlIHRvIHNzaCBpbnRvIGEgZ3JhcGhpY2FsIGRlc2t0b3AgZWRpdGlvbiBvZiBMaW51eCwKPiA+
PiBVYnVudHUgZm9yIGV4YW1wbGU/Cj4gPj4gS2FyZW4KPiA+Pgo+ID4+Cj4gPj4gX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KPiA+PiBCbGludXgtbGlzdCBt
YWlsaW5nIGxpc3QKPiA+PiBCbGludXgtbGlzdEBsaXN0bWFuLnJlZGhhdC5jb20KPiA+PiBodHRw
czovL2xpc3RtYW4ucmVkaGF0LmNvbS9tYWlsbWFuL2xpc3RpbmZvL2JsaW51eC1saXN0Cj4gPj4g
IAo+ID4KPiA+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
Cj4gPiBCbGludXgtbGlzdCBtYWlsaW5nIGxpc3QKPiA+IEJsaW51eC1saXN0QHJlZGhhdC5jb20K
PiA+IGh0dHBzOi8vbGlzdG1hbi5yZWRoYXQuY29tL21haWxtYW4vbGlzdGluZm8vYmxpbnV4LWxp
c3QKPiA+Cj4gPiAgCj4gCj4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KPiBCbGludXgtbGlzdCBtYWlsaW5nIGxpc3QKPiBCbGludXgtbGlzdEByZWRoYXQu
Y29tCj4gaHR0cHM6Ly9saXN0bWFuLnJlZGhhdC5jb20vbWFpbG1hbi9saXN0aW5mby9ibGludXgt
bGlzdAo+IAoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
CkJsaW51eC1saXN0IG1haWxpbmcgbGlzdApCbGludXgtbGlzdEByZWRoYXQuY29tCmh0dHBzOi8v
bGlzdG1hbi5yZWRoYXQuY29tL21haWxtYW4vbGlzdGluZm8vYmxpbnV4LWxpc3Q=

