Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTP id 529CC3BEDB8
	for <lists+blinux-list@lfdr.de>; Wed,  7 Jul 2021 20:09:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1625681346;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=6iyJpev7FGRfJy9fthqMNZfb9vEqBdPjlDHoafgjC20=;
	b=YFc7RfZeTWtSv9SzrdU/D/HVJX69nSlQVljk0m6al+EYE+WfEHp7mNyniq94ZZjH4Gcuq4
	ap4Kw5nWE4rDzU62tBMU+EL0RjUnrHrYcE3MpF4w6rqjIDp0Lran5wFYrP/0qGLEUhMbyZ
	wsMdpVbpHQe/dFmS1ugdpli0hHgpXN4=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-30-E5cB4WaENnqL44ue6JXoDw-1; Wed, 07 Jul 2021 14:09:04 -0400
X-MC-Unique: E5cB4WaENnqL44ue6JXoDw-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com [10.5.11.23])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 2E0775074C;
	Wed,  7 Jul 2021 18:09:01 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id B8FDC19C66;
	Wed,  7 Jul 2021 18:08:59 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 81E554EA2A;
	Wed,  7 Jul 2021 18:08:57 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.rdu2.redhat.com
	[10.11.54.3])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 167I8mo5003516 for <blinux-list@listman.util.phx.redhat.com>;
	Wed, 7 Jul 2021 14:08:48 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 21D6011558BC; Wed,  7 Jul 2021 18:08:48 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast06.extmail.prod.ext.rdu2.redhat.com [10.11.55.22])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 1CE3710145F7
	for <blinux-list@redhat.com>; Wed,  7 Jul 2021 18:08:44 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[207.211.31.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 7F7FC18A01A9
	for <blinux-list@redhat.com>; Wed,  7 Jul 2021 18:08:44 +0000 (UTC)
Received: from darkstar.slint.fr (darkstar.slint.fr [172.105.89.79]) by
	relay.mimecast.com with ESMTP id us-mta-189-bzx17OghMiWR15qO9DOwsg-1;
	Wed, 07 Jul 2021 14:08:42 -0400
X-MC-Unique: bzx17OghMiWR15qO9DOwsg-1
Received: from ici.slint.fr (sfa89-1-78-208-157-71.fbx.proxad.net
	[78.208.157.71])
	by darkstar.slint.fr (Postfix) with ESMTPSA id E0D43A427A
	for <blinux-list@redhat.com>; Wed,  7 Jul 2021 19:08:11 +0200 (CEST)
Subject: Re: Suggestions for Linux laptop
To: blinux-list@redhat.com
References: <dcbcae66a3cb50071a927295f3101d54@ijn2.net>
	<68C10B8D-4F85-4F62-8B59-62E026900427@yahoo.com>
Message-ID: <4142e4ea-2386-8386-5c6b-e12d341477f5@slint.fr>
Date: Wed, 7 Jul 2021 20:08:35 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
	Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <68C10B8D-4F85-4F62-8B59-62E026900427@yahoo.com>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.3
X-MIME-Autoconverted: from quoted-printable to 8bit by
	lists01.pubmisc.prod.ext.phx2.redhat.com id 167I8mo5003516
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
Content-Language: en-US
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"

SSB0aGluayB5b3UgbWVhbnQgR2FsYWdvIFBybywgSm9uZXN5LgoKSXQncyBhbHNvIHNvbGQgYnkg
U3lzdGVtNzY6Cmh0dHBzOi8vc3lzdGVtNzYuY29tL2xhcHRvcHMvZ2FsYWdvCgpUaGlzIGJlaW5n
IHNhaWQsIEkgaGF2ZSBhbHdheXMgYmVlbiBzYXN0aWZpZWQgYnkgbXkgTGVub3ZvIFRoaW5rcGFk
cy4KCkkgaGF2ZSBhIHJlZnVyYmlzaGVkIG9uZSBmcm9tIDIwMTMgYW5kIG5ldmVyIGhhZCBhbiBp
c3N1ZSB3aXRoIGl0LgpCZXR0ZXIgc28gYXMgSSBtYWludGFpbiBTbGludCB3aXRoIGl0IDxzbWls
ZT4KCkNoZWVycywKRGlkaWVyCi0tCkRpZGllciBTcGFpZXIKCgpMZSAwNy8wNy8yMDIxIMOgIDE5
OjUwLCBMaW51eCBmb3IgYmxpbmQgZ2VuZXJhbCBkaXNjdXNzaW9uIGEgw6ljcml0wqA6Cj4gSSBo
YXZlIGEgR2FsZWdvIFBybyA2NEdiIFJBTSB3LyBhbiBJbnRlbCBpNyAtMTE2NUc3OiBJIGhpZ2hs
eSByZWNvbW1lbmQuIEkgcHV0IFVidW50dSBOYXRlIG9uIGFuZCB3b3JrcyBncmVhdCEKPiAKPiDi
gJwgTmV2ZXIgYmVuZCB5b3VyIGhlYWQuIEFsd2F5cyBob2xkIGl0IGhpZ2guIExvb2sgdGhlIHdv
cmxkIHN0cmFpZ2h0IGluIHRoZSBleWUu4oCdCj4gfiBIZWxlbiBLZWxsZXIKPiAKPj4gT24gSnVs
IDcsIDIwMjEsIGF0IDU6MjIgQU0sIExpbnV4IGZvciBibGluZCBnZW5lcmFsIGRpc2N1c3Npb24g
PGJsaW51eC1saXN0QHJlZGhhdC5jb20+IHdyb3RlOgo+Pgo+PiDvu79PbiAyMDIxLTA3LTA3IDA1
OjQ3LCBMaW51eCBmb3IgYmxpbmQgZ2VuZXJhbCBkaXNjdXNzaW9uIHdyb3RlOgo+Pj4gSSB3aWxs
IGJlIHRha2luZyBhIExpbnV4IGFkbWluaXN0cmF0aW9uIGNsYXNzIGluIHRoZSBmYWxsLiBJIHdh
bnRlZCB0bwo+Pj4gZ2V0IGEgbmV3IGxhcHRvcCB0aGF0IEkgaG9wZSB0byB1c2UgZm9yIHRoYXQg
Y2xhc3MuIERvZXMgYW55b25lIGhhdmUKPj4+IHN1Z2dlc3Rpb25zPwo+Pgo+PiBCZWluZyBhbiBp
bnN0cnVjdG9yIG15c2VsZiBJIHdvdWxkIHdhcm1seSBzdWdnZXN0IHB1cmNoYXNpbmcgYSBMZW5v
dm8gVGhpbmtwYWQgc2VyaWVzIGxhcHRvcCBmb3IgeW91ciB1cGNvbWluZyBMaW51eCBjbGFzcy4K
Pj4gSSBhbHNvIHN1Z2dlc3QgdGhhdCB5b3UgY29udGFjdCB0aGUgdHJhaW5pbmcgcHJvdmlkZXIg
d2VsbCBpbiBhZHZhbmNlIGluIG9yZGVyIHRvIGhhdmUgc3VmZmljaWVudCBhY2NvbW1vZGF0aW9u
cyBmb3IgeW91ciBjbGFzcy4gSWYgeW91IGNvbnNpZGVyIHRha2luZyBhIGNlcnRpZmljYXRpb24g
ZXhhbSBhZnRlcndhcmRzIHRoZW4gSSByZWNvbW1lbmQgdG8gY29udGFjdCB0aGUgY2VydGlmaWNh
dGlvbiBib2R5IHRvIGhhdmUgc3VmZmljaWVudCBhY2NvbW1vZGF0aW9ucyBmb3IgeW91ciBleGFt
IHNlc3Npb24uCj4+Cj4+IExlbm92byBUaGlua3BhZHMgYXJlIGFsc28gYXZhaWxhYmxlIHByZWxv
YWRlZCB3aXRoIEZlZG9yYSBmbGF2b3Igb2YgTGludXggZGlyZWN0bHkgZnJvbSBMZW5vdm8uIEkg
c3VnZ2VzdCB5b3UgY2FsbCBMZW5vdm8gc2FsZXMgcGhvbmUgc2luY2UgdGhlIHN5c3RlbXMgbWln
aHQgbm90IGJlIGF2YWlsYWJsZSBvbmxpbmUgb24gd3d3Lmxlbm92by5jb20gb24gYWxsIHJlZ2lv
bnMuCj4+Cj4+IFJlZ2FyZHMsCj4+IEJpcmRpZQoKCl9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCkJsaW51eC1saXN0IG1haWxpbmcgbGlzdApCbGludXgtbGlz
dEByZWRoYXQuY29tCmh0dHBzOi8vbGlzdG1hbi5yZWRoYXQuY29tL21haWxtYW4vbGlzdGluZm8v
YmxpbnV4LWxpc3Q=

