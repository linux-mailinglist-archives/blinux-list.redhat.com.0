Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D386447549
	for <lists+blinux-list@lfdr.de>; Sun,  7 Nov 2021 20:38:43 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1636313922;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=qPdxM2paaHA7LGoEMqg0VVC4lOsMbdT4T6H63PrM5wE=;
	b=Svlz/RIGA5OrMn8XwxuOfr2XgVk8eUdcgTg2+gxpkV6dR0xz+7PbScZ/NXG21vR9WZHFOJ
	A6KBb+ftea+Mf6a9mH7Les6QVlRv588OCAp0TpTXIlzXm/QUpYGurGqzXieAfqVGnlcxN0
	T2W7d1wJHuObH6teQbmq9vhePvaH7Z0=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-376-77IgHHuaPFG3w1HPri5PlQ-1; Sun, 07 Nov 2021 14:38:39 -0500
X-MC-Unique: 77IgHHuaPFG3w1HPri5PlQ-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com [10.5.11.23])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 128E0107B0F0;
	Sun,  7 Nov 2021 19:38:35 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 581C419730;
	Sun,  7 Nov 2021 19:38:34 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id C14A04A703;
	Sun,  7 Nov 2021 19:38:30 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.rdu2.redhat.com
	[10.11.54.5])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 1A7JcO5I032521 for <blinux-list@listman.util.phx.redhat.com>;
	Sun, 7 Nov 2021 14:38:24 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 6048551DD; Sun,  7 Nov 2021 19:38:24 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast04.extmail.prod.ext.rdu2.redhat.com [10.11.55.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 5AB1C51DC
	for <blinux-list@redhat.com>; Sun,  7 Nov 2021 19:38:21 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [205.139.110.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 7F4611066559
	for <blinux-list@redhat.com>; Sun,  7 Nov 2021 19:38:21 +0000 (UTC)
Received: from mail.schoeppi.net (mail.schoeppi.net [193.41.226.221]) (Using
	TLS) by relay.mimecast.com with ESMTP id
	us-mta-452-SUcQp2iQPyiK8Lt9OwAKew-1; Sun, 07 Nov 2021 14:38:19 -0500
X-MC-Unique: SUcQp2iQPyiK8Lt9OwAKew-1
Received: from smtpclient.apple (pc19f8d35.dip0.t-ipconnect.de
	[193.159.141.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(Client did not present a certificate)
	by mail.schoeppi.net (Postfix) with ESMTPSA id D84672ADB22;
	Sun,  7 Nov 2021 20:28:23 +0100 (CET)
Mime-Version: 1.0 (Mac OS X Mail 15.0 \(3693.20.0.1.32\))
Subject: Re: [Mailman-Users] customized From handling?
In-Reply-To: <13EE48EB-C14E-4201-BA39-FC0D73C8A7F7@cfcl.com>
Date: Sun, 7 Nov 2021 20:28:19 +0100
Message-Id: <5E1B4465-9691-403D-A62B-90F2FA3C07BB@schoeppi.net>
References: <m24k8oqwkn.fsf@sk.tsukuba.ac.jp>
	<13EE48EB-C14E-4201-BA39-FC0D73C8A7F7@cfcl.com>
To: blinux-list@redhat.com
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.79 on 10.11.54.5
X-MIME-Autoconverted: from quoted-printable to 8bit by
	lists01.pubmisc.prod.ext.phx2.redhat.com id 1A7JcO5I032521
X-loop: blinux-list@redhat.com
Cc: "Stephen J. Turnbull" <stephenjturnbull@gmail.com>
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

SGksCgo+IEFtIDA3LjExLjIwMjEgdW0gMTk6NTcgc2NocmllYiBMaW51eCBmb3IgYmxpbmQgZ2Vu
ZXJhbCBkaXNjdXNzaW9uIDxibGludXgtbGlzdEByZWRoYXQuY29tPjoKPiBIZSBhbHNvIHRvbGQg
bWUsIG9mZi1saXN0LCB0aGF0IHRoZSBNYWlsbWFuIDMgZm9sa3MgYXJlIHNlcmlvdXNseSBpbnRl
cmVzdGVkIGluIGltcHJvdmluZyBpdHMgYWNjZXNzaWJpbGl0eS4gIElmIGFueW9uZSBoZXJlIGlz
IGludGVyZXN0ZWQgaW4gcGFydGljaXBhdGluZyBpbiB0aGlzIGVmZm9ydCAoYW5kIGhhcyB0aGUg
bmVlZGVkIHRpbWUgYW5kIHNraWxscyksIHBsZWFzZSBjb25zaWRlciB3cml0aW5nIHRvIFN0ZXBo
ZW4uICAoSW5jbHVkZSBhIHN1bW1hcnkgb2YgeW91ciBhY2Nlc3NpYmlsaXR5IGFuZC9vciBzb2Z0
d2FyZSBkZXZlbG9wbWVudCBjaG9wcy4pCgpJ4oCZdmUgaW5zdGFsbGVkIG1haWxtYW4gMyBhIGZl
dyBtb250aHMgYWdvIGJlY2F1c2UgSSBhbSBob3N0aW5nIHNvbWUgbWFpbGluZ2xpc3Qgc2VydmVy
cyBmb3IgYSBHZXJtYW4gY29tbXVuaXR5IGZvciBibGluZCBwZW9wbGUgYW5kIHdlIGhhdmUgdG8g
bWlncmF0ZSBmcm9tIG1haWxtYW4gMiB0byBtYWlsbWFuIDMgc29tZXdoZW4gaW4gdGhlIG5lYXIg
ZnV0dXJlLgoKSW4gZ2VuZXJhbCBtYWlsbWFuIDMgaXMgdmVyeSBhY2Nlc3NpYmxlIHdpdGggbW9k
ZXJuIGJyb3dzZXJzIGFuZCBhbHNvIHdpdGggdGV4dGJhc2VkIGJyb3dzZXJzIG1vc3QgYWRtaW5p
c3RyYXRpdmUgdGFza3MgY2FuIGJlIGRvbmUgdmVyeSB3ZWxsLiBXZSB3b3VsZCBoYXZlIG11Y2gg
bGVzcyBwcm9ibGVtcyBpZiBvdGhlciBzb2Z0d2FyZSBpcyB0aGF0IGdvb2QgcmVnYXJkaW5nIGFj
Y2Vzc2liaWxpdHkuCgpJIGNhbiBvbmx5IHJlbWVtYmVyIHNvbWUgc21hbGwgYWNjZXNzaWJpbGl0
eSBpc3N1ZXMgd2hlbiB0aGUgd2ViaW50ZXJmYWNlIGlzIHVzZWQgdG8gYnJvd3MgYW5kIGNyZWF0
ZSBvciByZXBseSB0byBwb3N0cywgYnV0IEkgaGF2ZSB0byB0YWtlIGEgY2xvc2VyIGxvb2sgYW5k
IGlmIHRoZXJlIGlzIHNvbWV0aGluZyBJIGNhbiBvcGVuIGFuIGlzc3VlIG9uIGdpdGh1YiB3aGVy
ZSB0aGUgbWFpbG1hbiAzIHNvdXJjZXMgYXJlIGhvc3RlZC4KClJlZ2FyZGluZyB0aGVlIHByb2Js
ZW0gd2l0aCB0aGUgYW5vbnltb3VzIHBvc3RpbmdzIG9uIHRoaXMgbGlzdHMgSSB0aGluayB0aGVy
ZSBhcmUgcG9zc2liaWxpdGllcyB0byByZWNvbmZpZ3VyZSB0aGUgbGlzdCB3aGljaCBpcyBydW5u
aW5nIG9uIG1haWxtYW4gMi4gV2UgaGF2ZSBodW5kcmV0cyBvZiBsaXN0cyBydW5uaW5nIG93aXRo
IG1haWxtYW4gMi4xLjI5IGFuZCB3ZSBkbyBub3QgaGF2ZSBhbnkgc3BhbSBwcm9ibGVtIGFuZCB3
ZSBkbyBub3QgbmVlZCB0byBjb25maWd1cmUgdGhlIGxpc3RzIHRvIGJlIGFub255bW91cy4gSSBh
bSBub3Qgc3VyZSBpZiBtYWlsbWFuIHZlcnNpb24gZm9yIHRoaXMgbGlzdCBpcyB0byBvbGQgdG8g
cmVjb25maWd1cmUgdGhlIGxpc3RzIHByb3Blcmx5IGFuZCBJIGRvIGFsc28gbm90IGtub3cgaWYg
dGhlIG1haWxtYW4gdmVyc2lvbiBjYW4gYmUgdXBkYXRlZCBlLmcuIHRvIDIuMS4yOSwgYnV0IEkg
Y2FuIHNheSBmb3Igc3VyZSB0aGF0IG5vIHVwZGF0ZSB0byBtYWlsbWFuIDMgaXMgbmVlZGVkIGJl
Y2F1c2Ugb2Ygc3BhbSBwcm9ibGVtcy4gVGhvc2Uga2luZCBvZiBwcm9ibGVtcyBjYW4gYmUgcmVz
b2x2ZWQgd2l0aCBtYWlsbWFuIDIgdG9vIGFuZCB1cGRhdGluZyBmcm9tIDIuMS54IHRvIGUuZy4g
Mi4xLjI5IG9yIDIuMS4zNiBzaG91bGQgYmUgbm8gYmlnIHRoaW5nLgoKQ2hlZXJzLAoKICBTY2hv
ZXBwCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KQmxp
bnV4LWxpc3QgbWFpbGluZyBsaXN0CkJsaW51eC1saXN0QHJlZGhhdC5jb20KaHR0cHM6Ly9saXN0
bWFuLnJlZGhhdC5jb20vbWFpbG1hbi9saXN0aW5mby9ibGludXgtbGlzdA==

