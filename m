Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com [205.139.110.120])
	by mail.lfdr.de (Postfix) with ESMTP id 4697614FE4B
	for <lists+blinux-list@lfdr.de>; Sun,  2 Feb 2020 17:30:12 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1580661011;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=kZ3zhDLFXvwQCf4J3F1vw9wUD9Lw9HjJ/AmRiDAzDjg=;
	b=f83D9L0iZ7Z1Yv+iyQhPowu+3wKBuC5khQX+43rb/XUKirI7knTxCIwh2s5JKJgXfUeN9e
	vi7NWWe3U0GBaWzC5w5GdcGAmx3Z4/yLYgjliBxNuvUd0nFmCs0NH6UUz6Srwp1uaOtOfe
	dbBN7P1AXUMDACVeS7gFNvVjbw1PoUQ=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-366-yywYPadCN2uSy5R8vkjklA-1; Sun, 02 Feb 2020 11:30:08 -0500
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com [10.5.11.16])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 0BCE9DB21;
	Sun,  2 Feb 2020 16:30:03 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 427A55C54A;
	Sun,  2 Feb 2020 16:30:01 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id C2A3118089CD;
	Sun,  2 Feb 2020 16:29:56 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.rdu2.redhat.com
	[10.11.54.4])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 012GTlw8030221 for <blinux-list@listman.util.phx.redhat.com>;
	Sun, 2 Feb 2020 11:29:48 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 775EC2093CEF; Sun,  2 Feb 2020 16:29:47 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast05.extmail.prod.ext.rdu2.redhat.com [10.11.55.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 722CE2093CCF
	for <blinux-list@redhat.com>; Sun,  2 Feb 2020 16:29:45 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[207.211.31.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 80C8D800298
	for <blinux-list@redhat.com>; Sun,  2 Feb 2020 16:29:45 +0000 (UTC)
X-Halon-ID: 3517ef49-45d9-11ea-9d5d-005056917149
Authorized-sender: anders@pipkrokodil.se
Received: from mail-out-02.crystone.se (mail-out-02.crystone.se
	[93.90.145.12]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-15-z_VSEJc3NxGjmDfCHaWZjw-1; Sun, 02 Feb 2020 11:29:43 -0500
Received: from [10.6.0.2] (unknown [45.83.220.177])
	by mail-out-01.crystone.se (Halon) with ESMTPSA
	id 3517ef49-45d9-11ea-9d5d-005056917149;
	Sun, 02 Feb 2020 17:29:39 +0100 (CET)
Mime-Version: 1.0 (Mac OS X Mail 13.0 \(3608.60.0.2.5\))
Subject: Re: A Live Boot Image for the Mac that Talks
Date: Sun, 2 Feb 2020 17:29:42 +0100
References: <E1ixMhY-0001xB-U2@wb5agz>
	<alpine.NEB.2.21.2001310111580.13258@panix1.panix.com>
	<E1iy1ln-00062r-3h@wb5agz>
	<alpine.NEB.2.21.2002011806001.10332@panix1.panix.com>
	<d75a7b21-75c1-ee44-5d35-71129cfeea51@verizon.net>
	<10e5062a-cb11-97d5-e394-2042b9dedfaf@gmail.com>
	<E1iy5Fq-0006fl-BN@wb5agz>
	<CAO2sX32EXpxci1Y3q2Jch+Z75vdUx-cRQS2=dxdOOtBLiqY-yQ@mail.gmail.com>
To: blinux-list@redhat.com
In-Reply-To: <CAO2sX32EXpxci1Y3q2Jch+Z75vdUx-cRQS2=dxdOOtBLiqY-yQ@mail.gmail.com>
Message-Id: <D1402C8B-298B-4EFE-B8D3-92F80F1FFA67@pipkrokodil.se>
X-MC-Unique: z_VSEJc3NxGjmDfCHaWZjw-1
X-MC-Unique: yywYPadCN2uSy5R8vkjklA-1
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.4
X-MIME-Autoconverted: from quoted-printable to 8bit by
	lists01.pubmisc.prod.ext.phx2.redhat.com id 012GTlw8030221
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SGkhCk1hYyBzaG91bGQgYmUgYWJsZSB0byBib290IGZyb20gdGhlIHVzYiBzdGljay4KV2hldGhl
ciBkZCBpcyBhIGdvb2QgY29tbWFuZCBvciBub3QgaSB3b27igJl0IGRpc2N1c3MgYmVjYXVzZSBp
IGRvbuKAmXQga25vdy4KQnV0IHlvdSBzaG91bGQgYmUgYWJsZSB0byBib290IGZyb20gYSB1c2Ig
b3IgY2QuCkJ1dCBjYW7igJl0IHlvdSBqdXN0IHVzZSB0aGUgcmVjb3ZlcnkgdXRpbGl0eSBmcm9t
IHRoZSBpbnRlcm5ldC4KL0EKCj4gMiBmZWIuIDIwMjAga2wuIDA0OjA0IHNrcmV2IExpbnV4IGZv
ciBibGluZCBnZW5lcmFsIGRpc2N1c3Npb24gPGJsaW51eC1saXN0QHJlZGhhdC5jb20+Ogo+IAo+
IEkgZG9uJ3QgaGF2ZSBhbnkgZXhwZXJpZW5jZSB3aXRoIE1hY3Mgb3Igd3JpdGluZyBib290YWJs
ZSBpbWFnZXMgdG8KPiBVU0Igc3RpY2tzKEkganVzdCBidXJuIGlzb3MgdG8gRFZEIHVzaW5nIHdv
ZGltIHdoZW4gSSBuZWVkIHRvIG1ha2UgYQo+IG5ldyBMaW51eCBkaXNjKSwgYnV0IG15IGZpcnN0
IHR3byB0aG91Z2h0cyBhcmU6Cj4gCj4gMS4gUGVyaGFwcyB0aGUgTWFjJ3MgYmlvcyBpc24ndCBj
b25maWd1cmVkIHRvIGFsbG93IGJvb3RpbmcgZnJvbSBVU0IKPiBtZWRpYS4gSSBrbm93IEkndmUg
aGFkIHRvIGdldCBzaWdodGVkIGFzc2lzdGFuY2UgdG8gZml4IHRoZSBiaW9zIGJvb3QKPiBvcmRl
ciBvbiBldmVyeSBsYXB0b3AgYW5kIGRlc2t0b3AgSSd2ZSBhY3F1aXJlZCBzaW5jZSBnb2luZyBi
bGluZAo+IGJlZm9yZSBJIGNvdWxkIGJvb3QgaW5zdGFsbGF0aW9uIG1lZGlhIHRvIGluc3RhbGwg
TGludXguLi4gSSBldmVuIGhhZAo+IHRvIGRvIGl0IGZvciBhIG5ldGJvb2sgdGhhdCBjYW1lIHBy
ZS1sb2FkZWQgd2l0aCBVYnVudHUgaWYgbWVtb3J5Cj4gc2VydmVzLgo+IAo+IDIuIEkgY291bGQg
YmUgd3JvbmcsIGJ1dCBJIGJlbGlldmUgdGhlIGZpbGVzIG5lZWRlZCBmb3IgbWFraW5nIGEKPiBD
RC9EVkQgYm9vdGFibGUgYW5kIG1ha2luZyBhIFVTQiBzdGljayBib290YWJsZSBhcmUgZGlmZmVy
ZW50LiBJZiBzbywKPiBldmVuIGEgcHJvcGVybHkgd3JpdHRlbiBpc28gbWlnaHQgbm90IHJlc3Vs
dCBpbiBhIGJvb3RhYmxlIFVTQiBzdGljawo+IGlmIHRoZSBpc28gb25seSBpbmNsdWRlcyB0aGUg
ZmlsZXMgbmVlZGVkIGZvciBib290aW5nIGZyb20gQ0QvRFZELgo+IEFnYWluLCBubyBleHBlcmll
bmNlIHdpdGggbWFraW5nIGJvb3RhYmxlIFVTQiBzdGlja3MsIHNvIEkgbWlnaHQgYmUKPiBob3Jy
aWJseSBtaXN0YWtlbi4KPiAKPiAKPiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwo+IEJsaW51eC1saXN0IG1haWxpbmcgbGlzdAo+IEJsaW51eC1saXN0QHJl
ZGhhdC5jb20KPiBodHRwczovL3d3dy5yZWRoYXQuY29tL21haWxtYW4vbGlzdGluZm8vYmxpbnV4
LWxpc3QKPiAKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
XwpCbGludXgtbGlzdCBtYWlsaW5nIGxpc3QKQmxpbnV4LWxpc3RAcmVkaGF0LmNvbQpodHRwczov
L3d3dy5yZWRoYXQuY29tL21haWxtYW4vbGlzdGluZm8vYmxpbnV4LWxpc3Q=

