Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com [205.139.110.120])
	by mail.lfdr.de (Postfix) with ESMTP id 16FCD24EF02
	for <lists+blinux-list@lfdr.de>; Sun, 23 Aug 2020 19:21:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1598203306;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=DehZPRFE+OrPfdCCEoKm65Rv/GWB5IYOqa7fXq267Y0=;
	b=YheqqsBxGPOYUZRzuHrWqKRBqEhIhoFmmthxjioFaRxawOj0cE+ZMJSklvHjvCpWTziYxz
	ZJVYDvV1Ax4029N36Vq4gt/rUCSsGog5XbV+7O/amYYPIbLP+TTxLXFhnVRGEoANTDh2bx
	t6xZd34cQZ6n5Gm2kf1wV5VDqsjGfJ8=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-146-cD8qKWmTMqmxKrUMyfVZCg-1; Sun, 23 Aug 2020 13:21:43 -0400
X-MC-Unique: cD8qKWmTMqmxKrUMyfVZCg-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.12])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id B1B405200;
	Sun, 23 Aug 2020 17:21:38 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 7523A60C47;
	Sun, 23 Aug 2020 17:21:36 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 5C0E560370;
	Sun, 23 Aug 2020 17:21:32 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.rdu2.redhat.com
	[10.11.54.3])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 07NHLNUu003994 for <blinux-list@listman.util.phx.redhat.com>;
	Sun, 23 Aug 2020 13:21:23 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 6C2C41110295; Sun, 23 Aug 2020 17:21:23 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast02.extmail.prod.ext.rdu2.redhat.com [10.11.55.18])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 6883E1110293
	for <blinux-list@redhat.com>; Sun, 23 Aug 2020 17:21:20 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [205.139.110.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 69C408007D9
	for <blinux-list@redhat.com>; Sun, 23 Aug 2020 17:21:20 +0000 (UTC)
Received: from mailbackend.panix.com (mailbackend.panix.com [166.84.1.89])
	(Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-12-0V9Z4Ao4N4W-uNdHTTBR4w-1; Sun, 23 Aug 2020 13:21:18 -0400
X-MC-Unique: 0V9Z4Ao4N4W-uNdHTTBR4w-1
Received: from panix1.panix.com (panix1.panix.com [166.84.1.1])
	by mailbackend.panix.com (Postfix) with ESMTP id 4BZMVP490zz1fx2
	for <blinux-list@redhat.com>; Sun, 23 Aug 2020 13:21:17 -0400 (EDT)
Received: by panix1.panix.com (Postfix, from userid 20712)
	id 4BZMVP3DNSzcbY; Sun, 23 Aug 2020 13:21:17 -0400 (EDT)
Received: from localhost (localhost [127.0.0.1])
	by panix1.panix.com (Postfix) with ESMTP id 4BZMVP2pTnzcbV
	for <blinux-list@redhat.com>; Sun, 23 Aug 2020 13:21:17 -0400 (EDT)
Date: Sun, 23 Aug 2020 13:21:17 -0400
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: Accessible Distros for a beginner?
In-Reply-To: <f03d577f-f905-d7cc-78db-d7e125fe1cde@slint.fr>
Message-ID: <alpine.NEB.2.23.451.2008231319160.21497@panix1.panix.com>
References: <MFBaDor--3-2@tutanota.com>
	<alpine.NEB.2.23.451.2008201242490.28820@panix1.panix.com>
	<CAO2sX31nhBAtXumURx=+8qkJ1muWGyzauovLL-dK_wTMxfKPeQ@mail.gmail.com>
	<d875a786-aee9-42ba-204b-72f0b32da766@gmail.com>
	<MFMbMot--3-2@tutanota.com>
	<f03d577f-f905-d7cc-78db-d7e125fe1cde@slint.fr>
MIME-Version: 1.0
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false;
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.3
X-MIME-Autoconverted: from quoted-printable to 8bit by
	lists01.pubmisc.prod.ext.phx2.redhat.com id 07NHLNUu003994
X-loop: blinux-list@redhat.com
From: Linux for blind general discussion <blinux-list@redhat.com>
X-BeenThere: blinux-list@redhat.com
X-Mailman-Version: 2.1.12
Precedence: junk
Reply-To: blinux-list@redhat.com
List-Id: Linux for blind general discussion <blinux-list.redhat.com>
List-Unsubscribe: <https://www.redhat.com/mailman/options/blinux-list>,
	<mailto:blinux-list-request@redhat.com?subject=unsubscribe>
List-Archive: <https://www.redhat.com/archives/blinux-list>
List-Post: <mailto:blinux-list@redhat.com>
List-Help: <mailto:blinux-list-request@redhat.com?subject=help>
List-Subscribe: <https://www.redhat.com/mailman/listinfo/blinux-list>,
	<mailto:blinux-list-request@redhat.com?subject=subscribe>
Sender: blinux-list-bounces@redhat.com
Errors-To: blinux-list-bounces@redhat.com
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.12
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0.002
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

Q291bGQgYmUgbWluaS1zbGludCBjb3VsZCBydW4gb24gdGhhdCByYXNwYmVycnkgcGkuICBJIGRv
bid0IGhhdmUgb25lCnlldCBzbyBoYXZlbid0IHRyaWVkIHRoYXQgb25lIHlldC4gIFRoZSBtaW5p
LXNsaW50IGlzIGEgY29tbWFuZCBsaW5lCmVudmlyb25tZW50IHRoZSB3YXkgaXQgc3RhcnRzIG91
dCBhZnRlciBpbnN0YWxsYXRpb24uCgpPbiBTYXQsIDIyIEF1ZyAyMDIwLCBMaW51eCBmb3IgYmxp
bmQgZ2VuZXJhbCBkaXNjdXNzaW9uIHdyb3RlOgoKPiBEYXRlOiBTYXQsIDIyIEF1ZyAyMDIwIDE2
OjQ5OjUxCj4gRnJvbTogTGludXggZm9yIGJsaW5kIGdlbmVyYWwgZGlzY3Vzc2lvbiA8YmxpbnV4
LWxpc3RAcmVkaGF0LmNvbT4KPiBUbzogYmxpbnV4LWxpc3RAcmVkaGF0LmNvbQo+IFN1YmplY3Q6
IFJlOiBBY2Nlc3NpYmxlIERpc3Ryb3MgZm9yIGEgYmVnaW5uZXI/Cj4KPiBIZWxsbywKPgo+IEkg
YW5zd2VyIGlubGluZSB0byB0aGUgcGFydHMgb2YgeW91ciBtZXNzYWdlIHF1b3RlZCBiZWxvdzoK
Pgo+IExlIDIyLzA4LzIwMjAgPyAyMToyMCwgU0wgIGEgP2NyaXTCoDoKPiA+IEkgZG9uJ3Qga25v
dyBpZiBJIHdvdWxkIGFsc28gbmVlZCB0byBjb21waWxlIHNvdXJjZSBmaWxlcyBmb3IgU2xpbnQg
d2hlbiBJJ20gZ2V0dGluZyBzdGFydGVkIHdpdGggdGhlIE9TPwo+Cj4gTm8gbmVlZCB0byBkbyB0
aGF0LiBZb3UgZ2V0IGEgbG90IG9mIHNvZnR3YXJlIG91dCBvZiB0aGUgYm94ZXMsIGFuZCBjYW4g
Z2V0IG1vcmUganVzdCB0eXBpbmcgYSBmZXcgY29tbWFuZHMsIGFzIHdpdGggbWFueSBvdGhlciBM
aW51eCBkaXN0cmlidXRpb25zLCBlaXRoZXIgcHJlLWJ1aWx0IG9yIGNvbXBpbGVkIGFuZCBpbnN0
YWxsZWQgdHlwaW5nIGp1c3Qgb25lIGNvbW1hbmQuCj4KPiA+IEJ1dCBpZiBTbGludCBzdGFydHMg
c3BlYWtpbmcgb3V0IG9mIHRoZSBib3ggbW9yZSBvciBsZXNzLCBtYXliZSBJIHdvdWxkIHN0YXJ0
IHdpdGggdGhhdC4KPiBTbGludCBzdGFydHMgc3BlYWtpbmcgZnJvbSB0aGUgdmVyeSBiZWdpbm5p
bmcgb2YgaW5zdGFsbGF0aW9uIGFuZCBzcGVha3MgaW4gYWxsIGNvbnRleHRzOyBjb25zb2xlIGFz
IGdyYXBoaWNhbCBlbnZpcm9ubWVudHMgaW5jbHVkaW5nIE1hdGUsIHRoZSBkZWZhdWx0Lgo+Cj4g
SWYgeW91IGhhdmUgYSBoYXJkIHN5bnRoZXNpemVyIHlvdSBjYW4gdXNlIGl0IGFzIHdlbGwuIFNs
aW50IGNhbiBwcmVzZXJ2ZSBhbmQgcmVzdG9yZSBzcGVjaWZpYyBzZXR0aW5ncyBmb3IgZWFjaCBz
eW50aGVzaXplciBpZiB5b3UgdXNlIHNldmVyYWwuCj4KPiBPcmNhIGlzIGluZGVlZCBhdmFpbGFi
bGUgaW4gZ3JhcGhpY2FsIGVudmlyb25tZW50cyBhbmQgeW91IGNhbiB1c2UgKGFuZCBzd2l0Y2gg
YmV0d2VlbikgY29uc29sZSBzY3JlZW4gcmVhZGVyczogZXNwZWFrdXAsIHNwZWVjaGQtdXAgYW5k
IGZlbnJpci4KPgo+IEluZGVlZCBicmFpbGxlIGlzIGVuYWJsZWQgYXMgd2VsbCBmcm9tIHRoZSB2
ZXJ5IGJlZ2lubmluZyBvZiBpbnN0YWxsYXRpb24uCj4KPiA+IEkgbGlrZSBob3cgbWFueSBhY2Nl
c3NpYmlsaXR5IGZlYXR1cmVzIFNsaW50IGhhcy4KPiBXZSB0cnkgaGFyZCB0byBwcm92aWRlIGFz
IG1hbnkgYXMgcG9zc2libGUuCj4KPiA+IEFuZCBpZiBJIHdvdWxkbid0IG5lZWQgdG8gY29tcGls
ZSBhIGxvdCBvZiBzb3VyY2UgZmlsZXMsIG1heWJlIFNsaW50IHdvdWxkIGJlIGEgZ29vZCBjaG9p
Y2UuCj4gSW5kZWVkIDxzbWlsZT4KPgo+IEFib3V0IHN1cHBvcnQ6IHdlIGFuc3dlciBhbGwgcXVl
c3Rpb25zIGluIHRoZSBTbGludCBtYWlsaW5nIGxpc3QsIGFuZCBiZWdpbm5lcnMgYXJlIHdlbGNv
bWUgdGhlcmUuCj4KPiBTbyBJIHRoaW5rIHRoYXQgU2xpbnQgaXMgYSBnb29kIGNob2ljZSBmb3Ig
YSBsYXB0b3AgaW4geW91ciBzaXR1YXRpb24uCj4KPiBTbGludCBkb24ndCBzdXBwb3J0IHJhc3Bi
ZXJyeSBQaSwgYnV0IGZvciB0aGF0IFN0b3JtdXggaXMgYSBnb29kIGNob2ljZS4KPgo+IFN0b3Jt
IERyYWdvbiwgaXRzIG1haW50YWluZXIsIGlzIGEgZnJpZW5kIGFuZCB3ZSBkbyBjb29wZXJhdGUg
Zm9yIHRoZSBiZW5lZml0IG9mIG91ciB1c2Vycy4KPgo+IERpZGllcgo+IGRpZGllckBzbGludC5m
cgo+Cj4KPiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+
IEJsaW51eC1saXN0IG1haWxpbmcgbGlzdAo+IEJsaW51eC1saXN0QHJlZGhhdC5jb20KPiBodHRw
czovL3d3dy5yZWRoYXQuY29tL21haWxtYW4vbGlzdGluZm8vYmxpbnV4LWxpc3QKCi0tIAoKCl9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkJsaW51eC1saXN0
IG1haWxpbmcgbGlzdApCbGludXgtbGlzdEByZWRoYXQuY29tCmh0dHBzOi8vd3d3LnJlZGhhdC5j
b20vbWFpbG1hbi9saXN0aW5mby9ibGludXgtbGlzdA==

