Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [63.128.21.124])
	by mail.lfdr.de (Postfix) with ESMTP id 5D24431E31D
	for <lists+blinux-list@lfdr.de>; Thu, 18 Feb 2021 00:41:32 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1613605291;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=R+Nr59Vq3zdQZhY1Vf22GZ7H86pbZNcEh/nj/yeo5k4=;
	b=VF2euj+4wq0oM4X3ji47u5gPhbHT7X5/q1LbVyoIkGICmRP54vX4nuKFaIqvw0xgqvwYsR
	wCHEdFnvZSWb9imkHHRaJUjVVIIcW5SWOTzVAnaynhcU+/L6TLU4UtV9RNGazYuZcah4sZ
	F/iJU9Sqmh6GDx3T4Ls3uQv8o31blII=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-490-bvn42Lr5NMugaVbW0pOgBw-1; Wed, 17 Feb 2021 18:41:28 -0500
X-MC-Unique: bvn42Lr5NMugaVbW0pOgBw-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.12])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 8DF30107ACF8;
	Wed, 17 Feb 2021 23:41:24 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id C174260C5F;
	Wed, 17 Feb 2021 23:41:22 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 12A674EE4D;
	Wed, 17 Feb 2021 23:41:19 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.rdu2.redhat.com
	[10.11.54.5])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 11HNf9bX021512 for <blinux-list@listman.util.phx.redhat.com>;
	Wed, 17 Feb 2021 18:41:09 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 5C025BBD59; Wed, 17 Feb 2021 23:41:09 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast06.extmail.prod.ext.rdu2.redhat.com [10.11.55.22])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 56AAC10341F
	for <blinux-list@redhat.com>; Wed, 17 Feb 2021 23:41:07 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[205.139.110.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 2B292186E128
	for <blinux-list@redhat.com>; Wed, 17 Feb 2021 23:41:07 +0000 (UTC)
Received: from mail-pl1-f172.google.com (mail-pl1-f172.google.com
	[209.85.214.172]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-560-m8FqqF1IPlG7e6VbWwF51g-1; Wed, 17 Feb 2021 18:41:05 -0500
X-MC-Unique: m8FqqF1IPlG7e6VbWwF51g-1
Received: by mail-pl1-f172.google.com with SMTP id z7so202193plk.7
	for <blinux-list@redhat.com>; Wed, 17 Feb 2021 15:41:04 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:content-transfer-encoding:mime-version
	:subject:date:references:to:in-reply-to:message-id;
	bh=P2b4kp+Wyu4UcUnqUVte214aD+sWnIwP54oUiiSy1AA=;
	b=Irk0dMjAPJJeubQ/RKbGPbDw5TYmMq+W/3yqQ6OMjaEdYJTLUDfER0FPaPo9UZ8pvT
	4lZIXlr0W9FF1xR6AzFD0Q3o9IZBzKqyPQDQ16fIoPtbxm3Ms+gByvho6pSnwlAhJ7su
	XxxVi6zWTSwP2sLGE4PPNUJQ12Gwk4/zRDUeICEp3TM7IbxKPNuPYYQx/3n1vAvw7nVr
	KsP/Q4QO+I9fYCdPlluxgBpdXtih/snjF8UnpJ5sZ4j/j3X9ejspTGpNpJQE5b5x37Hb
	SEsZLe7DPVDmpovQ9A/s8sYj7N0SsajQOi2ClZ7FEVpDtJ5KRlv9gffdf1oQJ1C8GSkz
	C3ow==
X-Gm-Message-State: AOAM531RMFJjRYQQBPFzGnzev/ShpRPRPJpneUx0SPrTfEC+vflE/F1n
	E4YJWyEzgLNR6OVl9Z/gYz8C2bKJYk5PmQ==
X-Google-Smtp-Source: ABdhPJw1udc/hvHjamxOqA5WOuPdR+CPFunsDPtURe4Y5C/X2XBPufpFe7/HvOLxREdNds+hQQn2ug==
X-Received: by 2002:a17:902:9b91:b029:e3:2c9e:f511 with SMTP id
	y17-20020a1709029b91b02900e32c9ef511mr1398490plp.74.1613605263773;
	Wed, 17 Feb 2021 15:41:03 -0800 (PST)
Received: from [192.168.0.165] (wsip-24-249-254-99.tc.ph.cox.net.
	[24.249.254.99]) by smtp.gmail.com with ESMTPSA id
	w188sm3441956pfw.177.2021.02.17.15.41.03 for <blinux-list@redhat.com>
	(version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
	Wed, 17 Feb 2021 15:41:03 -0800 (PST)
Mime-Version: 1.0 (Mac OS X Mail 13.4 \(3608.120.23.2.4\))
Subject: Re: Is this possible?
Date: Wed, 17 Feb 2021 16:41:01 -0700
References: <Pine.LNX.4.64.2102170148140.1176343@server2.shellworld.net>
	<20210217103219.3da4c2ef@bigbox.attlocal.net>
	<Pine.LNX.4.64.2102171201160.1320888@server2.shellworld.net>
	<20210217135956.2621148b@bigbox.attlocal.net>
To: blinux-list@redhat.com
In-Reply-To: <20210217135956.2621148b@bigbox.attlocal.net>
Message-Id: <E7A7988B-53B9-4316-9041-31683293E31B@gmail.com>
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
	lists01.pubmisc.prod.ext.phx2.redhat.com id 11HNf9bX021512
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

QnR3LCB5b3UgY291bGQgdXNlIHRoZSBlbmxpZ2h0ZW5tZW50IHNvdW5kIGRlYW1vbiB0byBmb3J3
YXJkIHRoZSBzb3VuZCBmcm9tIHRoZSByZW1vdGUgbWFjaGluZSwgYXNzdW1pbmcgeW91IGNhbiBj
b25maWd1cmUgdGhlIFJlbW90ZSBEZXNrdG9wIG9yIHNlc3Npb24gdG8gZW5hYmxlIHRoZSBzY3Jl
ZW4gcmVhZGVyIGluIGEgdmlydHVhbCBzZXNzaW9uLiBJIGRpZCB0aGlzIG9uY2UgYSBsb25nIHRp
bWUgYWdvIHdpdGggWFZOQyBhbmQgRVNELiBIb3dldmVyLCBhIGxvdCBoYXMgY2hhbmdlZCBpbiB0
aGUgbGFzdCAxMCB5ZWFycy4KCi1FcmljCgoKPiBPbiBGZWIgMTcsIDIwMjEsIGF0IDEyOjU5IFBN
LCBMaW51eCBmb3IgYmxpbmQgZ2VuZXJhbCBkaXNjdXNzaW9uIDxibGludXgtbGlzdEByZWRoYXQu
Y29tPiB3cm90ZToKPiAKPiBUaW0gaGVyZS4gIENhbiB5b3UgcnVuIGZpcmVmb3g/IFNvcnRhLgo+
IAo+IFlvdSBjYW4gZm9yd2FyZCBGaXJlZm94IG9uIGEgcmVtb3RlIG1hY2hpbmUgc28gdGhhdCBp
dCBkaXNwbGF5cyBvbiBhCj4gbG9jYWwgbWFjaGluZSB1c2luZyB0aGUgIi1YIiBwYXJhbWV0ZXIg
dG8gc3NoOgo+IAo+ICAkIHNzaCAtWCB1c2VyQHJlbW90ZSBmaXJlZm94Cj4gCj4gVGhhdCBzYWlk
Ogo+IAo+IDEpIEkgZG9uJ3QgdGhpbmsgYSBzY3JlZW4tcmVhZGVyIHJ1bm5pbmcgbG9jYWxseSB3
b3VsZCBoYXZlIGFjY2VzcyB0bwo+IHRoZSB1bmRlcmx5aW5nIGFjY2Vzc2liaWxpdHkgaW5mb3Jt
YXRpb24gaW4gdGhlIHJlbW90ZSBwcm9ncmFtLiAgQQo+IHNjcmVlbi1yZWFkZXIgcnVubmluZyBv
biB0aGUgcmVtb3RlIG1hY2hpbmUgbWlnaHQgYmUgYWJsZSB0byBhY2Nlc3MKPiB0aGUgaW5mb3Jt
YXRpb24sIGJ1dCB5b3UnZCB0aGVuIGhhdmUgdG8gd2F5IHRvIGZvcndhcmQgdGhhdCBhMTF5Cj4g
aW5mb3JtYXRpb24gYmFjayB0byB5b3VyIGxvY2FsIG1hY2hpbmUgKHNlZSAjMyBiZWxvdykKPiAK
PiAyKSBpdCdzIGEgcmVhbGx5IHN1Y2t5IGV4cGVyaWVuY2Ugb3ZlciBhIGxvbmcgZGlzdGFuY2Uu
ICBJZiB0aGUKPiAicmVtb3RlIiBtYWNoaW5lIGlzIG9uIHlvdXIgc2FtZSBsb2NhbCBuZXR3b3Jr
LCBpdCdzIHRvbGVyYWJsZTsgaWYKPiB5b3UncmUgdHJ5aW5nIHRvIHVzZSBhIHJlbW90ZSBtYWNo
aW5lIGluIGEgZGF0YS1jZW50ZXIgaGFsZi13YXkKPiBhY3Jvc3MgdGhlIGNvbnRpbmVudCBvdmVy
IGEgbWVkaW9jcmUgYnJvYWRiYW5kIGNvbm5lY3Rpb24sIGl0J3MgYQo+IGhvcnJpYmxlIGV4cGVy
aWVuY2UuIEkndmUgdXNlZCB0aGlzIGluIGEgcGluY2ggKHJlbW90aW5nIGludG8gbXkgaG9tZQo+
IG1hY2hpbmUgZnJvbSBteSBpbi1sYXdzIGhhbGZ3YXkgYWNyb3NzIHRoZSBjb3VudHJ5IGFuZCB1
c2luZyBhIEdVSQo+IGFwcGxpY2F0aW9uKSwgYnV0IHRoZSBsYXRlbmN5IHdpbGwgZHJpdmUgeW91
IGJvbmtlcnMuCj4gCj4gMykgaXQgZG9lc24ndCBmb3J3YXJkIHZpZGVvIG9yIGF1ZGlvIHdpdGhv
dXQgYSBmZXcgZXh0cmEgdHJpY2tzLiAgQnkKPiBkZWZhdWx0LCB2aWRlbyBnZW5lcmFsbHkgcmVu
ZGVycyBkaXJlY3RseSB0byBhIHJlZ2lvbiBvZiB0aGUgbG9jYWwKPiAoYW5kIGluIHRoaXMgY29u
dGV4dCwgImxvY2FsIiBtZWFucyBsb2NhbC10by10aGUtcmVtb3RlLW1hY2hpbmUpCj4gcGxhY2Ug
d2hlcmUgZmlyZWZveCBpcyBydW5uaW5nLiAgV2hpY2ggaXNuJ3Qgd2hlcmUgeW91IGFyZSwgbWVh
bmluZwo+IGhvcnJpYmxlIHBlcmZvcm1hbmNlLiAgU2ltaWxhcmx5LCB0aGVyZSBhcmUgd2F5cyBv
ZiByb3V0aW5nIGF1ZGlvCj4gb3V0cHV0IG92ZXIgdGhlIG5ldHdvcmsgKHdoaWNoIG1pZ2h0IGV2
ZW4gbGV0IHlvdSBydW4gYSBzY3JlZW4tcmVhZGVyCj4gb24gYSByZW1vdGUgbWFjaGluZSBhbmQg
aGF2ZSBpdCByZW5kZXIgdGhlIGF1ZGlvIGxvY2FsbHk7IGlmIHlvdSB1c2UKPiBCcmFpbGxlIG91
dHB1dCwgeW91IG1pZ2h0IGhhdmUgYSBiZXR0ZXIgdGltZSBvZiBpdCkuCj4gCj4gU28gYWxsIHRo
YXQgc2FpZCwgeW91ICpjYW4qIHJ1biBGaXJlZm94IHJlbW90ZWx5LCBidXQgaXQncyBhCj4gZ2Vu
ZXJhbGx5IHVucGxlYXNhbnTigJRhbmQgcG90ZW50aWFsbHkgaW5hY2Nlc3NpYmxl4oCUZXhwZXJp
ZW5jZSBhbGwKPiAncm91bmQuCj4gCj4gSXMgdGhlcmUgYSBwYXJ0aWN1bGFyIHByb2JsZW0geW91
J3JlIHRyeWluZyB0byBzb2x2ZSB0aGF0IG1pZ2h0IGJlCj4gc29sdmVkIHVzaW5nIG1lYW5zIG90
aGVyIHRoYW4gZGlzcGxheWluZyBhIHJlbW90ZSBmaXJlZm94IHNlc3Npb24KPiBsb2NhbGx5Pwo+
IAo+IC1UaW0KPiAKPiAKPiAKPiBPbiBGZWJydWFyeSAxNywgMjAyMSwgTGludXggZm9yIGJsaW5k
IGdlbmVyYWwgZGlzY3Vzc2lvbiB3cm90ZToKPj4gQ2FuIHlvdSBydW4gRmlyZWZveD8KPj4gT3Ro
ZXJzIGhlcmUgaW5kaWNhdGUgdGhhdCB5b3UgZG8gbm90IGhhdmUgYWNjZXNzIHRvIHRoZSBncmFw
aGljYWwKPj4gZGVza3RvcCBpdHNlbGYsIGp1c3QgdGhlIHNhbWUgYmFzZWxpbmUgdG9vbHMuCj4+
IAo+PiAKPj4gCj4+IE9uIFdlZCwgMTcgRmViIDIwMjEsIExpbnV4IGZvciBibGluZCBnZW5lcmFs
IGRpc2N1c3Npb24gd3JvdGU6Cj4+IAo+Pj4gWWVzLCBJIGhhdmUgbXkgd2lmZSBzZXQgdXAgd2l0
aCBhIGdyYXBoaWNhbCBkZXNrdG9wIGVkaXRpb24gb2YKPj4+IFVidW50dSBhbmQgSSBTU0ggZnJv
bSBteSBtYWNoaW5lIGludG8gaGVyIG1hY2hpbmUgcmVndWxhcmx5IHRvCj4+PiBwZXJmb3JtIGJh
Y2t1cHMgJiB1cGdyYWRlcy4gIEFzIGxvbmcgYXMgeW91J3JlIHJ1bm5pbmcgc3NoZCBvbgo+Pj4g
dGhlIGdyYXBoaWNhbCBkZXNrdG9wIChhbmQgeW91IGhhdmVuJ3QgY29uZmlndXJlZCBhIGZpcmV3
YWxsIHRvCj4+PiBibG9jayBTU0ggYWNjZXNzKSwgaXQgc2hvdWxkIHdvcmsgZmluZS4KPj4+IAo+
Pj4gLVRpbQo+Pj4gCj4+PiBPbiBGZWJydWFyeSAxNywgMjAyMSwgTGludXggZm9yIGJsaW5kIGdl
bmVyYWwgZGlzY3Vzc2lvbiB3cm90ZTogIAo+Pj4+IEhpIGZvbGtzLAo+Pj4+IElzIGl0IHBvc3Np
YmxlIHRvIHNzaCBpbnRvIGEgZ3JhcGhpY2FsIGRlc2t0b3AgZWRpdGlvbiBvZiBMaW51eCwKPj4+
PiBVYnVudHUgZm9yIGV4YW1wbGU/Cj4+Pj4gS2FyZW4KPj4+PiAKPj4+PiAKPj4+PiBfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+Pj4+IEJsaW51eC1saXN0
IG1haWxpbmcgbGlzdAo+Pj4+IEJsaW51eC1saXN0QGxpc3RtYW4ucmVkaGF0LmNvbQo+Pj4+IGh0
dHBzOi8vbGlzdG1hbi5yZWRoYXQuY29tL21haWxtYW4vbGlzdGluZm8vYmxpbnV4LWxpc3QKPj4+
PiAKPj4+IAo+Pj4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KPj4+IEJsaW51eC1saXN0IG1haWxpbmcgbGlzdAo+Pj4gQmxpbnV4LWxpc3RAcmVkaGF0LmNv
bQo+Pj4gaHR0cHM6Ly9saXN0bWFuLnJlZGhhdC5jb20vbWFpbG1hbi9saXN0aW5mby9ibGludXgt
bGlzdAo+Pj4gCj4+PiAKPj4gCj4+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fCj4+IEJsaW51eC1saXN0IG1haWxpbmcgbGlzdAo+PiBCbGludXgtbGlzdEBy
ZWRoYXQuY29tCj4+IGh0dHBzOi8vbGlzdG1hbi5yZWRoYXQuY29tL21haWxtYW4vbGlzdGluZm8v
YmxpbnV4LWxpc3QKPj4gCj4gCj4gCj4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KPiBCbGludXgtbGlzdCBtYWlsaW5nIGxpc3QKPiBCbGludXgtbGlzdEBy
ZWRoYXQuY29tCj4gaHR0cHM6Ly9saXN0bWFuLnJlZGhhdC5jb20vbWFpbG1hbi9saXN0aW5mby9i
bGludXgtbGlzdAoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fCkJsaW51eC1saXN0IG1haWxpbmcgbGlzdApCbGludXgtbGlzdEByZWRoYXQuY29tCmh0dHBz
Oi8vbGlzdG1hbi5yZWRoYXQuY29tL21haWxtYW4vbGlzdGluZm8vYmxpbnV4LWxpc3Q=

