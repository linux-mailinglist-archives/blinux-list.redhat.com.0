Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 414574847D2
	for <lists+blinux-list@lfdr.de>; Tue,  4 Jan 2022 19:26:42 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1641320801;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=5oDSlJozTdjwPBN0G2dU1dfbiTnudbQxh9u1XAOxM8s=;
	b=fKOOAmxLqEM3al9+va6Z4UbGaERojTSb/xeyDEvgD+dWXWvGmObRbqecumGosdBgM/CzMo
	sLuLxmPHKqAa7b5hyNVAedUQfCwfYydbwraLXswZxJhtOOkLb4thMOgFNN158dmM6PKv0F
	zFJkfM4ZXbaclHjHbd/ikJJiVZ5RbB4=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-408-FZeJRd_zO7WGZ3fcq9FaxA-1; Tue, 04 Jan 2022 13:26:37 -0500
X-MC-Unique: FZeJRd_zO7WGZ3fcq9FaxA-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com [10.5.11.15])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id DF9EB5A07E;
	Tue,  4 Jan 2022 18:26:33 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 6FEC4782CE;
	Tue,  4 Jan 2022 18:26:32 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 354C64BB7C;
	Tue,  4 Jan 2022 18:26:23 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.rdu2.redhat.com
	[10.11.54.5])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 204IQFon011480 for <blinux-list@listman.util.phx.redhat.com>;
	Tue, 4 Jan 2022 13:26:15 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 1107C53CA; Tue,  4 Jan 2022 18:26:15 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast01.extmail.prod.ext.rdu2.redhat.com [10.11.55.17])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 0B54E53C9
	for <blinux-list@redhat.com>; Tue,  4 Jan 2022 18:26:12 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[207.211.31.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 2AA5285A5A8
	for <blinux-list@redhat.com>; Tue,  4 Jan 2022 18:26:12 +0000 (UTC)
Received: from smtp.outgoing.loopia.se (smtp.outgoing.loopia.se
	[93.188.3.37]) by relay.mimecast.com with ESMTP with STARTTLS
	(version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-263-7KafeALNPTyaitvsrFC9rA-1; Tue, 04 Jan 2022 13:26:01 -0500
X-MC-Unique: 7KafeALNPTyaitvsrFC9rA-1
Received: from s807.loopia.se (localhost [127.0.0.1])
	by s807.loopia.se (Postfix) with ESMTP id 78DF22F0FE44
	for <blinux-list@redhat.com>; Tue,  4 Jan 2022 19:25:58 +0100 (CET)
Received: from s934.loopia.se (unknown [172.22.191.5])
	by s807.loopia.se (Postfix) with ESMTP id 6A563308C12E
	for <blinux-list@redhat.com>; Tue,  4 Jan 2022 19:25:58 +0100 (CET)
Received: from s474.loopia.se (unknown [172.22.191.5])
	by s934.loopia.se (Postfix) with ESMTP id 6334A7EAF21
	for <blinux-list@redhat.com>; Tue,  4 Jan 2022 19:25:58 +0100 (CET)
X-Virus-Scanned: amavisd-new at amavis.loopia.se
X-Spam-Flag: NO
X-Spam-Score: -1
X-Spam-Level: 
X-Spam-Status: No, score=-1 tagged_above=-999 required=6.2
	tests=[ALL_TRUSTED=-1] autolearn=disabled
Received: from s499.loopia.se ([172.22.191.6])
	by s474.loopia.se (s474.loopia.se [172.22.190.14]) (amavisd-new,
	port 10024) with LMTP id ty0v-Zb7ewDk for <blinux-list@redhat.com>;
	Tue,  4 Jan 2022 19:25:54 +0100 (CET)
X-Loopia-Auth: user
X-Loopia-User: anders@pipkrokodil.se
X-Loopia-Originating-IP: 91.132.138.158
Received: from smtpclient.apple (unknown [91.132.138.158])
	(Authenticated sender: anders@pipkrokodil.se)
	by s499.loopia.se (Postfix) with ESMTPSA id 6EA101CE5401
	for <blinux-list@redhat.com>; Tue,  4 Jan 2022 19:25:54 +0100 (CET)
Mime-Version: 1.0 (Mac OS X Mail 15.0 \(3693.40.0.1.81\))
Subject: Re: Ubuntu 20.04 settings.
Date: Tue, 4 Jan 2022 19:25:54 +0100
References: <2D360D45-88B2-4856-955A-9387ABC9085A@pipkrokodil.se>
	<CAMuGJSk3s4O7_8e6SO_dcFBntphcBfMMxQNx8EghWttJoLKGrw@mail.gmail.com>
To: blinux-list@redhat.com
In-Reply-To: <CAMuGJSk3s4O7_8e6SO_dcFBntphcBfMMxQNx8EghWttJoLKGrw@mail.gmail.com>
Message-Id: <EFDC4C8C-F5BC-4F3C-8120-2C03427DD9D0@pipkrokodil.se>
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
	lists01.pubmisc.prod.ext.phx2.redhat.com id 204IQFon011480
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SGkhCk5vdyB0aGFua3MgZm9yIHRoYXQgb25lLgpCdXQgaG93IGRpZCB5b3UgaW5zdGFsbCB0aGUg
VWJ1bnR1IG9udG8geW91ciBNYWM/CkNhbiB5b3UgZHVhbCBib290IHRoZSBNYWMgd2hlbiB5b3Ug
bmVlZCBvciBpZiB5b3UgbmVlZD8KTXkgd2lzaCBpcyB0byBtYWtlIGEgZHVhbCBib290IG1hY2hp
bmUgd2l0aCBib3RoIE1hYyBhbmQgbGludXggYnV0IEkgYW0gbm90IHN1cmUgaWYgaXQgY2FuIGJl
IGRvbmUgcHJvcGVybHkuCi9BCgo+IDMgamFuLiAyMDIyIGtsLiAyMzoyNiBza3JldiBMaW51eCBm
b3IgYmxpbmQgZ2VuZXJhbCBkaXNjdXNzaW9uIDxibGludXgtbGlzdEByZWRoYXQuY29tPjoKPiAK
PiBJIGFtIHVzaW5nIFVidW50dSAyMC4wNCwgaW5zdGFsbGVkIG9uIHRoZSBtYWNoaW5lLCBub3Qg
aW4gYSBWTS4gT25jZSBsb2dnZWQKPiBpbiwgSSBjYW4gdXNlIHRoZSBzdXBlciBrZXkgKCJXaW5k
b3dzIiBrZXk7IGxlZnQgc2lkZSBvZiBrZXlib2FyZCBiZXR3ZWVuCj4gQ3RybCBhbmQgQWx0KSB0
byBvcGVuIHRoZSBzZWFyY2ggYm94LCB0aGVuIHR5cGUgInNldHRpbmdzIi4KPiAKPiBUaGF0IGFj
Y291bnQgc2V0dXAgdGhpbmcgbWlnaHQgYmUgcGFydCBvZiB0aGUgaW5pdGlhbCBsb2dpbiB3aGVy
ZSwgYXMgYQo+ICJjb252ZW5pZW5jZSIsIHlvdSBhcmUgYXNrZWQgdG8gbG9nIGludG8gR29vZ2xl
LCBGYWNlYm9vaywgd2hhdGV2ZXIgLi4uSQo+IGp1c3QgaWdub3JlZCB0aG9zZSAoaGl0IEVzYyBv
ciBBbHQrRjQgdW50aWwgaXQgZ29lcyBhd2F5KS4KPiAKPiAtLQo+IEthcmwgV2lsYnVyCj4gNTEz
LTMyMi0yNDgxCj4ga2FybEBrYXJsd2lsYnVyLm5ldAo+IAo+IAo+IE9uIE1vbiwgSmFuIDMsIDIw
MjIgYXQgNToxNiBQTSBMaW51eCBmb3IgYmxpbmQgZ2VuZXJhbCBkaXNjdXNzaW9uIDwKPiBibGlu
dXgtbGlzdEByZWRoYXQuY29tPiB3cm90ZToKPiAKPj4gSGkhCj4+IEkgaGF2ZSBpbnN0YWxsZWQg
VWJ1bnR1IDIwLjA0IG9uIGEgdmlydHVhbCBtYWNoaW5lIGluIFZNd2FyZSBGdXNpb24gb24gbXkK
Pj4gTWFjLiBFdmVyeXRoaW5nIGdvZXMgd2VsbCB1bnRpbCBJIGFtIGxvZ2dlZCBpbi4KPj4gQnV0
IEkgaGF2ZSBmb3Jnb3R0ZW4gdGhlIGtleXN0cm9rZSB0byBnbyB0byBzZXR0aW5ncyB3aXRoIE9y
Y2EuCj4+IFRoZSBvbmx5IHRoaW5nIHRoYXQgY29tZXMgdXAgaXMgc29tZSBndWlkZSB0aGF0IHdh
bnRzIG1lIHRvIHNldCB1cCBzZXZlcmFsCj4+IGFjY291bnRzLgo+PiBJIGp1c3QgZG9u4oCZdCB3
YW50IHRoYXQgYnV0IGl0IHNlZW1zIEkgY2Fu4oCZdCBnZXQgaXQgYXdheS4KPj4gQW55IGhlbHAg
SXMgYXBwcmVjaWF0ZWQuCj4+IC9BCj4+IAo+PiAKPj4gX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KPj4gQmxpbnV4LWxpc3QgbWFpbGluZyBsaXN0Cj4+IEJs
aW51eC1saXN0QHJlZGhhdC5jb20KPj4gaHR0cHM6Ly9saXN0bWFuLnJlZGhhdC5jb20vbWFpbG1h
bi9saXN0aW5mby9ibGludXgtbGlzdAo+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCj4gQmxpbnV4LWxpc3QgbWFpbGluZyBsaXN0Cj4gQmxpbnV4LWxpc3RA
cmVkaGF0LmNvbQo+IGh0dHBzOi8vbGlzdG1hbi5yZWRoYXQuY29tL21haWxtYW4vbGlzdGluZm8v
YmxpbnV4LWxpc3QKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwpCbGludXgtbGlzdCBtYWlsaW5nIGxpc3QKQmxpbnV4LWxpc3RAcmVkaGF0LmNvbQpodHRw
czovL2xpc3RtYW4ucmVkaGF0LmNvbS9tYWlsbWFuL2xpc3RpbmZvL2JsaW51eC1saXN0

