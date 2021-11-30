Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 0546E463CDA
	for <lists+blinux-list@lfdr.de>; Tue, 30 Nov 2021 18:31:32 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1638293492;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=P6nNqAg5TO5sZzB7Dk9PfWAWbSJQWZJ1phjxGJgxO24=;
	b=fk1ybn559H3BUR817dT0Y1k5qOHyH2yWsucnECIY/ExKSlI4tizLKAXOwrH0zZTBbRBMZ3
	h+eGQiXPKb/O0sOR6430+YV8K54SwjtDIelNFl+OsgAbhoWWqVzRTHGorhEkqSbU0LlBF7
	x1ofDgwHWzPftigE66Fhi0u2SgQTAVE=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-144-jfRS1UgXOMy-Zspiumy-dg-1; Tue, 30 Nov 2021 12:31:29 -0500
X-MC-Unique: jfRS1UgXOMy-Zspiumy-dg-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com [10.5.11.23])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 0BCD710A25F1;
	Tue, 30 Nov 2021 17:30:26 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 6F5D11972D;
	Tue, 30 Nov 2021 17:30:25 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 19B394BB7B;
	Tue, 30 Nov 2021 17:30:23 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.rdu2.redhat.com
	[10.11.54.2])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 1AUHUIYd009088 for <blinux-list@listman.util.phx.redhat.com>;
	Tue, 30 Nov 2021 12:30:18 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 4B7614047279; Tue, 30 Nov 2021 17:30:18 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast01.extmail.prod.ext.rdu2.redhat.com [10.11.55.17])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 473FE4047272
	for <blinux-list@redhat.com>; Tue, 30 Nov 2021 17:30:18 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [205.139.110.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 2DF5985A5AA
	for <blinux-list@redhat.com>; Tue, 30 Nov 2021 17:30:18 +0000 (UTC)
Received: from mail-qt1-f177.google.com (mail-qt1-f177.google.com
	[209.85.160.177]) by relay.mimecast.com with ESMTP with STARTTLS
	(version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-558-H5W5Ir-oO2KE-8SQXBMdpQ-1; Tue, 30 Nov 2021 12:30:16 -0500
X-MC-Unique: H5W5Ir-oO2KE-8SQXBMdpQ-1
Received: by mail-qt1-f177.google.com with SMTP id f20so20958256qtb.4
	for <blinux-list@redhat.com>; Tue, 30 Nov 2021 09:30:15 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20210112;
	h=x-gm-message-state:subject:to:references:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-transfer-encoding
	:content-language;
	bh=UQ8qC3DiHo7kyO7j8yCklo6Y8/n4TM4M3Tx+IoepqxU=;
	b=O7D4ugyzc7/x1hMy0MxJzk6pGIlBMXvIGrVdrqYb96robzyJUnrA64q6O6BpjQkMKn
	Y4QRMlLWIAu4ACgP8WBumdMGXP88z7y+iK31bmCQ+02u5RJPIuxbMWDazgOkgeCSfWjQ
	ozjzh/vT2P9f17Pkglm/jMOuxCEnZkz+S1TnITqv31VxZ8jU3XmwhE4t8NflcbZ/q/H8
	aXPiT34ifrP+GqlFoJwA76nWxH0qlvxdIQx9bJGLoXCjgsddCL6ZAKE+/qKsEjOKCrro
	Lz4Fy6lgzGRwnd54WtlG3gphA2vm8/L/Bu43wYugDoehVOEO614+LtX+0BWGLbeiy/Ho
	VuYQ==
X-Gm-Message-State: AOAM530fNppiQIFWPFsJF9dilqNpNNi9VUj0I5vrLXn0tuyXVZmWucI2
	TxLH6heivvPYt/GeFCClG6Pq9Htlzmf8RIgz
X-Google-Smtp-Source: ABdhPJxgQ3lBsxzYTS4QmQwdVBtqknwM/bZaPznE/4pDkCSmN7pTrwBWdzRTcJtkaHIbTcSDNLkXrQ==
X-Received: by 2002:a05:622a:95:: with SMTP id
	o21mr869011qtw.386.1638293415033; 
	Tue, 30 Nov 2021 09:30:15 -0800 (PST)
Received: from darkstar.example.slint ([2601:152:4000:330:6a07:15ff:fe1b:961c])
	by smtp.gmail.com with ESMTPSA id
	g19sm11005519qtg.82.2021.11.30.09.30.14 for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Tue, 30 Nov 2021 09:30:14 -0800 (PST)
Subject: Re: What is the easiest and most accessible editor?
To: blinux-list@redhat.com
References: <a3ea6f04-d8a4-2ef4-35cc-8e91d7582ab8@gmail.com>
	<dcf188c1-db80-bf0a-e54b-474f2fddbf55@gmail.com>
	<CAO2sX30oEaotc3CObf62R5Dg_0qLiu_qB3V3JF4EUQfACdkG+A@mail.gmail.com>
	<alpine.NEB.2.23.451.2111291731190.11659@panix1.panix.com>
	<878bd3e0-d05c-4132-52b4-d29893818041@gmail.com>
	<7d174815-a616-2abd-72e9-014ac8bf2b8b@slint.fr>
	<fbe62f18-abaf-ac16-9f35-feab63c910d9@gmail.com>
	<28532cb2-efb5-ce1c-bc61-3a1dfe036744@slint.fr>
Message-ID: <03f42082-c4a3-4c8a-1402-5b2cbc36600e@gmail.com>
Date: Tue, 30 Nov 2021 12:30:13 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
	Thunderbird/68.12.0
MIME-Version: 1.0
In-Reply-To: <28532cb2-efb5-ce1c-bc61-3a1dfe036744@slint.fr>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.84 on 10.11.54.2
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

TE9sIERpZGllci4KCkkgbGlrZSB5b3VyIHRoaXJkIHBvaW50LiBoYWhhaGFoYQoKQ2hlZXJzLAoK
SWJyYWhpbQoKT24gMTEvMzAvMjEgMTI6MTYgUE0sIExpbnV4IGZvciBibGluZCBnZW5lcmFsIGRp
c2N1c3Npb24gd3JvdGU6Cj4gSSBkaWRuJ3Qgd3JvdGUgdGhlIG1lc3NhZ2UgdG8gd2hpY2ggSSBh
bnN3ZXIuCj4KPiBNYXliZSB0aGVyZSBhcmUgc2V2ZXJhbCBEaWRpZXJzPwo+Cj4gTW9yZSBzZXJp
b3VzbHk6Cj4KPiAxLiBUaGVyZSBpcyBubyBHVUkgdmVyc2lvbi4gVGhpcyBpcyBhIGNvbW1hbmQg
bGluZSBhcHAuIEJ1dCBhZnRlciBoYXZpbmcKPiBpbnN0YWxsZWQgYW4gYXBwbGljYXRpb24sIGl0
IHdpbGwgaGF2ZSBhbiBlbnRyeSBpbiB0aGUgQXBwbGljYXRpb24gCj4gbWVudS4gVG8KPiBrbm93
IG1vcmUsIGFmdGVyIGluc3RhbGxhdGlvbiB0eXBlOgo+IG1hbiBmbGF0cGFrCj4gZmxhdHBhayAt
LWhlbHAKPiB5b3UgY2FuIHJ1biBmbGF0cGFrIGFzIHJlZ3VsYXIgdXNlciwgaXQgd2lsbCBhc2sg
cm9vdCdzIHBhc3N3b3JkIGJlZm9yZQo+IGluc3RhbGxpbmcvcmVtb3Zpbmcgc3R1ZmYuCj4gMi4g
WW91ciB1bmRlcnN0YW5kaW5nIGlzIGNvcnJlY3QuCj4gMy4gSW5zdGFsbGluZyBpdCB3b24ndCBo
dXJ0LCBhcyBsb25nIGFzIHlvdSBkb24ndCB1c2UgaXQgOykKPgo+IERpZGllcgo+IC0tIAo+IERp
ZGllciBTcGFpZXIKPiBTbGludCBtYWludGFpbmVyCj4KPiBMZSAzMC8xMS8yMDIxIMOgIDE3OjUw
LCBMaW51eCBmb3IgYmxpbmQgZ2VuZXJhbCBkaXNjdXNzaW9uIGEgw6ljcml0wqA6Cj4+IFdoYXQg
d291bGQgYSBmbGF0cGFrIGRvIGZvciBtZSBhcyBhIGRlc2t0b3AgZ3VpIHVzZXI/IE15IAo+PiB1
bmRlcnN0YW5kaW5nIGlzIHRoYXQgaXMgc3VwcG9zZWQgdG8gYWxsb3cgbWUgdG8gcnVuIHBhY2th
Z2VzIHdoaWNoIAo+PiBhcmUgbm90IHBhcnQgb2YgdGhlIGRpc3RyaWJ1dGlvbiBpbiB3aGF0IGlz
IHNvIGNhbGxlZCBhIHNhbmRib3guIGJ1dCAKPj4gaWYgdGhlIGd1aSB2ZXJzaW9uIG9mIGl0IGlz
IG5vdCBhY2Nlc3NpYmxlIGl0IHdvdWxkIGJlIG9mIGxpbWl0ZWQgdXNlIAo+PiBmb3IgbWUuIEkg
d2lsbCBpbnN0YWxsIGl0IGFueXdheSBvbmNlIHlvdSBtYWtlIGl0IGF2YWlsYWJsZS4KPj4KPj4g
Q2hlZXJzLAo+Pgo+PiBEaWRpZXIKPj4KPj4gT24gMTEvMjkvMjEgNzoyMiBQTSwgTGludXggZm9y
IGJsaW5kIGdlbmVyYWwgZGlzY3Vzc2lvbiB3cm90ZToKPj4+IEhpIElicmFoaW0gYW5kIEFsbCwK
Pj4+Cj4+PiBubyBNaWNybyBpcyBub3QgcHJvdmlkZWQgYnkgU2xpbnQgKHlldCkuIEkgbGVhcm5l
ZCBpdHMgZXhpc3RlbmNlIAo+Pj4gdG9kYXkgPHNtaWxlPi4KPj4+Cj4+PiBJIGhhdmUgYnVpbHQg
ZmxhdHBhayBhbmQgcGlwZS12aWV3ZXIgYW5kIGFsc28gaXRzIEdVSSAKPj4+IGd0ay1waXBlLXZp
ZXdlciAobm90IGZ1bGx5Cj4+PiBhY2Nlc3NpYmxlLCBidXQgbmljZSkuCj4+Pgo+Pj4gSXQgdG9v
ayBtZSBtb3JlIHRpbWUgdGhhbiBhbnRpY2lwYXRlZCwgYnV0IGV4cGVjdCBhIGJpZyBiYXRjaCBv
ZiAKPj4+IHVwZGF0ZXMgZm9yCj4+PiBTbGludCB0b21vcnJvdyAoMzcgcGFja2FnZXMsIGluY2x1
ZGluZyB0aGUgbWFueSBkZXBlbmRlbmNpZXMgb2YgZmlsZSAKPj4+IHZpZXdlcikuCj4+Pgo+Pj4g
SSBkaWQgc29tZSByZWFkaW5nIGFuZCB0ZXN0cyB3aXRoIGZsYXRwYWssIGFuZCB3b3VsZG4ndCBy
ZWNvbW1lbmQgdG8gCj4+PiB1c2UgdGhhdCwKPj4+IGVzcGVjaWFsbHkgaWYgc3BhY2Ugb24gZGlz
ayBpcyBhIGNvbmNlcm4uCj4+PiBXb3J0aCByZWFkaW5nIGFib3V0IHRoYXQ6Cj4+PiBodHRwczov
L2x1ZG9jb2RlLmNvbS9ibG9nL2ZsYXRwYWstaXMtbm90LXRoZS1mdXR1cmUKPj4+IEhvd2V2ZXIs
ICJjaG9zZSBwcm9taXNlLCBjaG9zZSBkdWUiIGFzIHdlIHNheSBoZXJlLCBhIGZsYXRwYWsgCj4+
PiBwYWNrYWdlIHdpbGwgYmUKPj4+IGF2YWlsYWJsZSBmb3IgU2xpbnQgdXNlcnMgdG9tb3Jyb3cu
Cj4+Pgo+Pj4gQ2hlZXJzLAo+Pj4KPj4+IERpZGllcgo+Pj4KPj4+IExlIDMwLzExLzIwMjEgw6Ag
MDA6MzAsIExpbnV4IGZvciBibGluZCBnZW5lcmFsIGRpc2N1c3Npb24gYSDDqWNyaXTCoDoKPj4+
PiBUaGFua3MgYSBidW5kbGUgZm9yIGFsbCBvZiB5b3UgZm9sa3MuIEkgZGlkIG5vdCBrbm93IGhv
dyBtdWNoIG9mIGEgCj4+Pj4gZGlzY3Vzc2lvbiBteSBpbm5vY2VudCBhbmQgbmFpdmUgcXVlc3Rp
b24gd291bGQgZ2VuZXJhdGUuIEkgbGVhcm5lZCAKPj4+PiBhIGxvdCBmcm9tIHlvdXIgYW5zd2Vy
cy4gQWx0aG91Z2ggSSBoYXZlIG5ldmVyIG1lc3NlZCB3aXRoIAo+Pj4+IGNvbmZpZ3VyYXRpb24g
ZmlsZXMgc2luY2UgdGhlIGRheXMgb2YgdGhlIGF1dG9leGVjLmJhdCBpbiB0aGUgZGF5cyAKPj4+
PiBvZiBkb3MsIEkgdGhpbmsgSSBoYXZlIGVub3VnaCBjb3VyYWdlIHRvIHBsYXkgd2l0aCBjaGFu
Z2luZyBzb21lIAo+Pj4+IGNvbmZpZ3VyYXRpb24gc2V0dGluZ3MgdXNpbmcgc29tZSBvZiB0aGUg
ZWRpdG9ycyB5b3Ugc3VnZ2VzdGVkLgo+Pj4+Cj4+Pj4gSSBsYXVuY2hlZCBmZXcgb2YgdGhlbSBi
b3RoIGluIHRoZSBkZXNrdG9wIGFuZCBpbiB0aGUgdGVybWluYWwgYW5kIAo+Pj4+IEkgZm91bmQg
Z2VhbnkgYW5kIG5hbm8gdG8gYmUgZWFzeS4gSSBkaWQgbm90IGZpbmQgTWljcm8sIEkgZ3Vlc3Mg
aXQgCj4+Pj4gaXMgbm90IHByZWluc3RhbGxlZCBvbiBzbGludC4KPj4+Pgo+Pj4+IEkga25vdyB0
aGF0IG15IGVkaXRpbmcgbmVlZHMgd291bGQgYmUgdmVyeSBiYXNpYy4KPj4+Pgo+Pj4+IENoZWVy
cywKPj4+Pgo+Pj4+IElicmFoaW0KPj4+Cj4+Pgo+Pj4gX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KPj4+IEJsaW51eC1saXN0IG1haWxpbmcgbGlzdAo+Pj4g
QmxpbnV4LWxpc3RAcmVkaGF0LmNvbQo+Pj4gaHR0cHM6Ly9saXN0bWFuLnJlZGhhdC5jb20vbWFp
bG1hbi9saXN0aW5mby9ibGludXgtbGlzdAo+Pgo+PiBfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwo+PiBCbGludXgtbGlzdCBtYWlsaW5nIGxpc3QKPj4gQmxp
bnV4LWxpc3RAcmVkaGF0LmNvbQo+PiBodHRwczovL2xpc3RtYW4ucmVkaGF0LmNvbS9tYWlsbWFu
L2xpc3RpbmZvL2JsaW51eC1saXN0Cj4KPgo+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fCj4gQmxpbnV4LWxpc3QgbWFpbGluZyBsaXN0Cj4gQmxpbnV4LWxp
c3RAcmVkaGF0LmNvbQo+IGh0dHBzOi8vbGlzdG1hbi5yZWRoYXQuY29tL21haWxtYW4vbGlzdGlu
Zm8vYmxpbnV4LWxpc3QKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fCkJsaW51eC1saXN0IG1haWxpbmcgbGlzdApCbGludXgtbGlzdEByZWRoYXQuY29tCmh0
dHBzOi8vbGlzdG1hbi5yZWRoYXQuY29tL21haWxtYW4vbGlzdGluZm8vYmxpbnV4LWxpc3Q=

