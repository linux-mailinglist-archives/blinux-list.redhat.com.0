Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTP id C8D033E8884
	for <lists+blinux-list@lfdr.de>; Wed, 11 Aug 2021 05:01:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1628650890;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=NzpZj9KaAYWJA578pXbrfRJ9i9VnQ5eT+6derO7P3V8=;
	b=YVLb5takYna9FQP98aJIZwgDcWwXn657Cp67OYQ0tiYbo5DxIRI/qIjy9YXTQVGLsGWzJR
	BpFEflRFZIzkld43BP40BfOZcMnnG/9nNUr1XgoOhKwW9Qft7rq0kucqkSPJF9XcVS9U05
	azSif1NTDkRmchpErEhcF2TRheoxCUg=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-204-mJU4wLHhPli_vJQvjc-VJA-1; Tue, 10 Aug 2021 23:01:29 -0400
X-MC-Unique: mJU4wLHhPli_vJQvjc-VJA-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com [10.5.11.16])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 855B71018F87;
	Wed, 11 Aug 2021 03:01:25 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 9FDBB5C1A1;
	Wed, 11 Aug 2021 03:01:22 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 09BA04BB7C;
	Wed, 11 Aug 2021 03:01:17 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.rdu2.redhat.com
	[10.11.54.3])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 17B318J6018373 for <blinux-list@listman.util.phx.redhat.com>;
	Tue, 10 Aug 2021 23:01:08 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 6F57E1013131; Wed, 11 Aug 2021 03:01:08 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast03.extmail.prod.ext.rdu2.redhat.com [10.11.55.19])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 6A847101312D
	for <blinux-list@redhat.com>; Wed, 11 Aug 2021 03:01:05 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [207.211.31.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
	bits)) (No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 0471C8CA942
	for <blinux-list@redhat.com>; Wed, 11 Aug 2021 03:01:05 +0000 (UTC)
Received: from mail-ot1-f44.google.com (mail-ot1-f44.google.com
	[209.85.210.44]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-133-qse9ZEjjPCijogZ_-c0Qvg-1; Tue, 10 Aug 2021 23:01:02 -0400
X-MC-Unique: qse9ZEjjPCijogZ_-c0Qvg-1
Received: by mail-ot1-f44.google.com with SMTP id
	h63-20020a9d14450000b02904ce97efee36so1671393oth.7
	for <blinux-list@redhat.com>; Tue, 10 Aug 2021 20:01:02 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:references:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-language;
	bh=41t6+poEYJJr0toyJErlDsYz4UG/1B1S8TDmxvqzQZY=;
	b=dJPqV/ibeo+CFqNiI+JlKDfRtaiNqaRM0FS1wfK4lDP5EMMq5WCN3/RZPuL+ndLDZM
	j8CjkYvL4nEvsgNuMnj4U8owVLemL7fid0Zqhfc0/P7egR9KvHDxwZLD/nnimp+6C/7X
	OpoEAT1Svg21qPiQcTeRRJ2lOY1uta/55a5XdYrA7uptLk3tqzNDFEkU6hk1R7mOZTrS
	F/Nz6gj5KZoaV/S1ZcrWwmhzSldD1SSTAITmNUio1brazOcFYIeAchuVH+yUgoNGwIyT
	6f9SvWxTjkzz0IWGy22msaTMfzDEKgEK8zDURsTDsL0K6F3vPlikFlkshGZdmjadPHZ0
	9v6Q==
X-Gm-Message-State: AOAM533gR+qTw53jJqbAH2dczKAv1qK7ZjUo5HiYTYDtusj6wOO5vDkk
	J+RycN+VQOLe/j1U0XQ/VvcX+melVJWktA==
X-Google-Smtp-Source: ABdhPJyxs4/FeVNlG4JV37HMQA82HWVZdmXXpOeJxZK9VNVfYam06tX2VJyCnbZ4lKKxK2Qo0QDohw==
X-Received: by 2002:a9d:206a:: with SMTP id n97mr2664016ota.247.1628650861098; 
	Tue, 10 Aug 2021 20:01:01 -0700 (PDT)
Received: from ?IPv6:2601:501:100:cb70:4d42:6605:2d23:1f1c?
	([2601:501:100:cb70:4d42:6605:2d23:1f1c])
	by smtp.gmail.com with ESMTPSA id
	q186sm4479214oib.31.2021.08.10.20.01.00 for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Tue, 10 Aug 2021 20:01:00 -0700 (PDT)
Subject: Re: Help, I need a Windows VM for my work
To: Linux for blind general discussion <blinux-list@redhat.com>
References: <3d854105-bb2b-5501-235f-eb05dc13f1f4@gmail.com>
	<6b512da3-e808-5c33-b0d3-700b55397580@slint.fr>
	<64366d3c-fdd0-3b9a-b771-7dbc6d720f4e@slint.fr>
Message-ID: <f791451d-27c3-b6df-2294-4346caed0107@gmail.com>
Date: Tue, 10 Aug 2021 20:01:00 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
	Thunderbird/78.13.0
MIME-Version: 1.0
In-Reply-To: <64366d3c-fdd0-3b9a-b771-7dbc6d720f4e@slint.fr>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.3
X-loop: blinux-list@redhat.com
X-Content-Filtered-By: Mailman/MimeDel 2.1.12
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"

aG93IGRvIHlvdSBnZXQgY29udHJvbCB0byB0aGUgdm0gZnJvbSB0aGUgaG9zdD8KCk9uIDgvMTAv
MjAyMSA2OjU5IEFNLCBMaW51eCBmb3IgYmxpbmQgZ2VuZXJhbCBkaXNjdXNzaW9uIHdyb3RlOgo+
IEhpIGFnYWluIEJyYW5kdCwKPgo+IFRoZSBzY3JpcHQgaXMgYXR0YWNoZWQKPgo+IEludHJ1Y3Rp
b25zIGZvciB1c2U6Cj4gMS4gQ3JlYXRlIGEgZGlyZWN0b3J5IH4vcWVtdQo+IEFzc3VtaW5nIHRo
YXQgeW91ciB1c2VybmFtZSBpcyBicmFuZHQ7IGh1c3QgdHlwZSB0byBkbyB0aGF0Ogo+IG1rZGly
IC9ob21lL2JyYW5kdC9xZW11Cj4gb3IganVzdDoKPiBta2RpciB+L3FlbXUKPiBBcyBhIHJlbWlu
ZGVyLCB+IHN0YW5kcyBmb3IgL2hvbWUvPHVzZXJuYW1lPgo+IEluIG15IGNhc2UgL3Vzci9kaWRp
ZXIsIGluIHlvdXJzIEkgYXNzdW1lIC9ob21lL2JyYW5kdAo+IGJ1dCBhbnl3YXkgdGhlIG91dHB1
dCBvZiB0aGlzIGNvbW1hbmQgd2lsbCB0ZWxsIHlvdToKPiBlY2hvIH4KPgo+IDIuIG1vdmUgdGhl
IFdpbmRvd3MgSVNPIGZpbGUgaW4gfi9xZW11LMKgIHJlbmFtZWQgfi9xZW11L3dpbiB3aW5kb3dz
Lmlzbwo+IEZvciBpbnN0YW5jZSBoZXIgSSBkaWQgdGhpczoKPgo+IC9kYXRhL2ltYWdlc19JU08v
V2luZG93czEwX0luc2lkZXJQcmV2aWV3X0NsaWVudF94NjRfZnItZnJfMjEzNTQuaXNvCj4KPiAz
LiBEb3dubG9hZCB0aGUgc2NyaXB0IHdpbmRvd3Muc2ggYW5kIHN0b3JlIGl0IHNvbWV3aGVyZQo+
IENoYW5nZSB0byB0aGUgZGlyZWN0b3J5IHdoZXJlIGl0IGlzIGluc3RhbGxlZCBhbmQgcnVuIGl0
IGxpa2UgdGhpczoKPiBzaCB3aW5kb3dzLnNoCj4gVGhlbiBwcmVzcyBFbnRlci4KPiBQcmVzc8Kg
IEVudGVyIGFnYWluIGFmdGVyIDUgc2Vjb25kcyB0byBtYWtlIHN1cmUgaXQgc3RhcnRzIHRoZSBX
aW5kb3dzCj4gV2FpdCBwYXRpZW50bHkgdW50aWwgdGhlIGluc3RhbGxlciBkaXNwbGF5cyBpdHMg
Zmlyc3Qgc2NyZWVuIGluIHRoZSBWTS4KPgo+IE5vdGVzOgo+IFlvdSBuZWVkIHRvIGJlIGluIGEg
Z3JhcGhpY2FsIGVudmlyb25tZW50IGxpa2UgTWF0ZS4KPiBJZiB0aGUgVk0gc3RlYWxzIHRoZSBm
b2N1cywgdHlwZSBDdHJsK0FsdCtHIHRvIGdldCBpdCBiYWNrIG9uIHRoZSBob3N0Lgo+Cj4gQWZ0
ZXIgV2luZG93cyBpbnN0YWxsYXRpb24sIHJ1bm5pbmcgdGhlIHNjcmlwdCBzaG91bGQgc3RhcnQg
V2luZG93cyAKPiBkaXJlY3RseSBpbgo+IHRoZSBWTS4KPgo+IENoZWVycywKPiBEaWRpZXIKPgo+
Cj4gTGUgMTAvMDgvMjAyMSDDoCAxNTowNiwgTGludXggZm9yIGJsaW5kIGdlbmVyYWwgZGlzY3Vz
c2lvbiBhIMOpY3JpdMKgOgo+PiBIaSBCcmFuZHQsCj4+Cj4+IEkgd2lsbCBhdHRhY2ggdG8gbXkg
bmV4dCBtZXNzYWdlIGEgc2NyaXB0IHRoYXQgc2V0cyB1cCBhIHFlbXUgVk0KPj4gYWxsb3dpbmcg
dG8gaW5zdGFsbCB0aGVuIHJ1biBXaW5kb3dzIGxhdGVyIHRvZGF5IGFmdGVyIG1vcmUgdGVzdGlu
Zy4KPj4KPj4gSXQgc2hvdWxkIGJlIHVzYWJsZSBpbiBhbnkgTGludXggZGlzdHJpYnV0aW9uIHdp
dGggYSByZWNlbnQgcWVtdSAKPj4gaW5zdGFsbGVkLgo+Pgo+PiBDaGVlcnMsCj4+Cj4+IERpZGll
cgo+Pgo+Pgo+PiBMZSAxMC8wOC8yMDIxIMOgIDEyOjU1LCBMaW51eCBmb3IgYmxpbmQgZ2VuZXJh
bCBkaXNjdXNzaW9uIGEgw6ljcml0wqA6Cj4+PiBIaSBhbGwsCj4+Pgo+Pj4KPj4+IEFzIEkgc3Rh
dGVkIGJlZm9yZSwgSSBhbSBydW5uaW5nIFNsaW50IG9uIHRoZSBiYXJlIG1ldGFsLCBob3dldmVy
IG15IAo+Pj4gd29yayBlbnRhaWxzIHRlYWNoaW5nIE5WREEgdG8gY2xpZW50cywgb2J2aW91c2x5
IHJ1bm5pbmcgV2luZG93cy4KPj4+Cj4+Pgo+Pj4gVGhlcmVmb3IgSSBkZXNwZXJhdGVseSBuZWVk
IGEgV2luZG93cyBWTSwgc28gSSBjYW4gbWFrZSBhIGxpdmluZy4gSSAKPj4+IGNhbm5vdCBmaWd1
cmUgcWVtdSwgdmlydHVhbC1ib3gsIEkgaGF2ZSBubyBpZGVhLCBhbmQgVk1XYXJlIAo+Pj4gV29y
a3N0YXRpb24gUGxheWVyIGRvZXNuJ3Qgd2FudCB0byBpbnN0YWxsIHVuZGVyIFNsaW50Lgo+Pj4K
Pj4+Cj4+PiBDb3VsZCBzb21lb25lIHBsZWFzZSwgcGxlYXNlLCBnaXZlIG1lIGNvbmNpc2UgaW5z
dHJ1Y3Rpb25zIGZvciAKPj4+IHNldHRpbmcgdXAgYSBWTSB1c2luZyBxZW11IGluIFNsaW50Pwo+
Pj4KPj4+Cj4+PiBXYXJtIHJlZ2FyZHMsCj4+Pgo+Pj4KPj4+IEJyYW5kdCBTdGVlbmthbXAKPj4+
Cj4+Pgo+Pj4gU2VudCBmcm9tIG15IGdhc3MgcG93ZXJlZCBTbGludCBoYWlyIGRyeWVyLgo+Cj4g
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KPiBCbGludXgt
bGlzdCBtYWlsaW5nIGxpc3QKPiBCbGludXgtbGlzdEByZWRoYXQuY29tCj4gaHR0cHM6Ly9saXN0
bWFuLnJlZGhhdC5jb20vbWFpbG1hbi9saXN0aW5mby9ibGludXgtbGlzdApfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpCbGludXgtbGlzdCBtYWlsaW5nIGxp
c3QKQmxpbnV4LWxpc3RAcmVkaGF0LmNvbQpodHRwczovL2xpc3RtYW4ucmVkaGF0LmNvbS9tYWls
bWFuL2xpc3RpbmZvL2JsaW51eC1saXN0

