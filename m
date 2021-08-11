Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTP id A59233E8887
	for <lists+blinux-list@lfdr.de>; Wed, 11 Aug 2021 05:02:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1628650921;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=aOZ1a2SbwOc4gzSZtNi4mSp+ov4g4IoKEF6M0a2YPr4=;
	b=GiC5FRfiN9G9BvOCotVSdPuqik43+P53AqMa6Jmsdx/P7YFLqOGxWfer9uF70WgfzM1mlk
	d2BzJDnEklTmixGHVst2tUg9TVZQ1up4hPrpi6dnq/Ty+qSENrJrULVfDLKCdBuIaekSpW
	7TkN1wqe0D4wIRbXGm3yRXkGaJVdDsk=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-18-_KEadzfyMc2r42Yo1n4ZiA-1; Tue, 10 Aug 2021 23:01:59 -0400
X-MC-Unique: _KEadzfyMc2r42Yo1n4ZiA-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.11])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 20BB387D543;
	Wed, 11 Aug 2021 03:01:56 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 0B146421F;
	Wed, 11 Aug 2021 03:01:56 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 85350181A0F2;
	Wed, 11 Aug 2021 03:01:55 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.rdu2.redhat.com
	[10.11.54.5])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 17B31pLl018416 for <blinux-list@listman.util.phx.redhat.com>;
	Tue, 10 Aug 2021 23:01:51 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 0B98EF559F; Wed, 11 Aug 2021 03:01:51 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast02.extmail.prod.ext.rdu2.redhat.com [10.11.55.18])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 064BE47CF1
	for <blinux-list@redhat.com>; Wed, 11 Aug 2021 03:01:48 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [205.139.110.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id E250A96B054
	for <blinux-list@redhat.com>; Wed, 11 Aug 2021 03:01:47 +0000 (UTC)
Received: from mail-ot1-f47.google.com (mail-ot1-f47.google.com
	[209.85.210.47]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-418-PdxO4MO1MIiB5igDrhreyA-1; Tue, 10 Aug 2021 23:01:45 -0400
X-MC-Unique: PdxO4MO1MIiB5igDrhreyA-1
Received: by mail-ot1-f47.google.com with SMTP id
	c23-20020a0568301af7b029050cd611fb72so1699777otd.3
	for <blinux-list@redhat.com>; Tue, 10 Aug 2021 20:01:45 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:references:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-language;
	bh=GlDenykh1qKLEFe7C7T0jZGCLumOTbiVIZvmcHDeKvs=;
	b=KhprUe9rROOnZ5I7SHb4X7W3tTY+C2f6adnqoofBGRhE2uWmPAUv4SMIHjU5cP3qhV
	HvvDygDu3oY1Mo5GsDWhXYvo7tFGoZp9YUR1OL36jrKcCY7Jm/M5pTrX5nBjCVxxTZwH
	CRcTUHC0Q1AxCX7NF4agJ6+Ply4yj1M/FhQDcA648C9Q+0wIhPxZYxdayPDAyWwU4p25
	acTw8ngOE3jB3x1KMaFYid8yZp7JhZS2+o2TQY7JKOVnjsnaAHmlideljp5C4sFOHW3i
	M3pKCfiI8HCFML11XfpQk9vCKnnplpumtbhqtF0Tk8zMjR1r3Yr7Yv4vciQyKlE6f50k
	Z3lA==
X-Gm-Message-State: AOAM5326y3+mcqFt6YTreOjc6s+qub0RrhS1AGr4l8K7bcKJNjHWaS6k
	ohctBz7VpiLSuJipGW0fKtMYjlVTIJvOKQ==
X-Google-Smtp-Source: ABdhPJwKLsi8Dca7NNLQUFnibBjKuf1TP9tnHv/f73lbbm4EPUmUQu51cpQ7iXjnmRp9WuKYUg4YLg==
X-Received: by 2002:a9d:63d6:: with SMTP id e22mr12942459otl.169.1628650904510;
	Tue, 10 Aug 2021 20:01:44 -0700 (PDT)
Received: from ?IPv6:2601:501:100:cb70:4d42:6605:2d23:1f1c?
	([2601:501:100:cb70:4d42:6605:2d23:1f1c])
	by smtp.gmail.com with ESMTPSA id
	m15sm2002112otj.47.2021.08.10.20.01.43 for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Tue, 10 Aug 2021 20:01:44 -0700 (PDT)
Subject: Re: Help, I need a Windows VM for my work
To: Linux for blind general discussion <blinux-list@redhat.com>
References: <3d854105-bb2b-5501-235f-eb05dc13f1f4@gmail.com>
	<6b512da3-e808-5c33-b0d3-700b55397580@slint.fr>
	<64366d3c-fdd0-3b9a-b771-7dbc6d720f4e@slint.fr>
Message-ID: <b21c8fab-5ae0-1f94-a086-4da048cede41@gmail.com>
Date: Tue, 10 Aug 2021 20:01:44 -0700
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
X-Scanned-By: MIMEDefang 2.79 on 10.11.54.5
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.11
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"

YWxzbyBJIGRpZG4ndCBzZWUgdGhlIHNjcmlwdCBhdHRhY2hlZCBjYW4geW91IHJlc2VuZCBpdCB0
byBtZSBwbGVhc2U/Ck9uIDgvMTAvMjAyMSA2OjU5IEFNLCBMaW51eCBmb3IgYmxpbmQgZ2VuZXJh
bCBkaXNjdXNzaW9uIHdyb3RlOgo+IEhpIGFnYWluIEJyYW5kdCwKPgo+IFRoZSBzY3JpcHQgaXMg
YXR0YWNoZWQKPgo+IEludHJ1Y3Rpb25zIGZvciB1c2U6Cj4gMS4gQ3JlYXRlIGEgZGlyZWN0b3J5
IH4vcWVtdQo+IEFzc3VtaW5nIHRoYXQgeW91ciB1c2VybmFtZSBpcyBicmFuZHQ7IGh1c3QgdHlw
ZSB0byBkbyB0aGF0Ogo+IG1rZGlyIC9ob21lL2JyYW5kdC9xZW11Cj4gb3IganVzdDoKPiBta2Rp
ciB+L3FlbXUKPiBBcyBhIHJlbWluZGVyLCB+IHN0YW5kcyBmb3IgL2hvbWUvPHVzZXJuYW1lPgo+
IEluIG15IGNhc2UgL3Vzci9kaWRpZXIsIGluIHlvdXJzIEkgYXNzdW1lIC9ob21lL2JyYW5kdAo+
IGJ1dCBhbnl3YXkgdGhlIG91dHB1dCBvZiB0aGlzIGNvbW1hbmQgd2lsbCB0ZWxsIHlvdToKPiBl
Y2hvIH4KPgo+IDIuIG1vdmUgdGhlIFdpbmRvd3MgSVNPIGZpbGUgaW4gfi9xZW11LMKgIHJlbmFt
ZWQgfi9xZW11L3dpbiB3aW5kb3dzLmlzbwo+IEZvciBpbnN0YW5jZSBoZXIgSSBkaWQgdGhpczoK
Pgo+IC9kYXRhL2ltYWdlc19JU08vV2luZG93czEwX0luc2lkZXJQcmV2aWV3X0NsaWVudF94NjRf
ZnItZnJfMjEzNTQuaXNvCj4KPiAzLiBEb3dubG9hZCB0aGUgc2NyaXB0IHdpbmRvd3Muc2ggYW5k
IHN0b3JlIGl0IHNvbWV3aGVyZQo+IENoYW5nZSB0byB0aGUgZGlyZWN0b3J5IHdoZXJlIGl0IGlz
IGluc3RhbGxlZCBhbmQgcnVuIGl0IGxpa2UgdGhpczoKPiBzaCB3aW5kb3dzLnNoCj4gVGhlbiBw
cmVzcyBFbnRlci4KPiBQcmVzc8KgIEVudGVyIGFnYWluIGFmdGVyIDUgc2Vjb25kcyB0byBtYWtl
IHN1cmUgaXQgc3RhcnRzIHRoZSBXaW5kb3dzCj4gV2FpdCBwYXRpZW50bHkgdW50aWwgdGhlIGlu
c3RhbGxlciBkaXNwbGF5cyBpdHMgZmlyc3Qgc2NyZWVuIGluIHRoZSBWTS4KPgo+IE5vdGVzOgo+
IFlvdSBuZWVkIHRvIGJlIGluIGEgZ3JhcGhpY2FsIGVudmlyb25tZW50IGxpa2UgTWF0ZS4KPiBJ
ZiB0aGUgVk0gc3RlYWxzIHRoZSBmb2N1cywgdHlwZSBDdHJsK0FsdCtHIHRvIGdldCBpdCBiYWNr
IG9uIHRoZSBob3N0Lgo+Cj4gQWZ0ZXIgV2luZG93cyBpbnN0YWxsYXRpb24sIHJ1bm5pbmcgdGhl
IHNjcmlwdCBzaG91bGQgc3RhcnQgV2luZG93cyAKPiBkaXJlY3RseSBpbgo+IHRoZSBWTS4KPgo+
IENoZWVycywKPiBEaWRpZXIKPgo+Cj4gTGUgMTAvMDgvMjAyMSDDoCAxNTowNiwgTGludXggZm9y
IGJsaW5kIGdlbmVyYWwgZGlzY3Vzc2lvbiBhIMOpY3JpdMKgOgo+PiBIaSBCcmFuZHQsCj4+Cj4+
IEkgd2lsbCBhdHRhY2ggdG8gbXkgbmV4dCBtZXNzYWdlIGEgc2NyaXB0IHRoYXQgc2V0cyB1cCBh
IHFlbXUgVk0KPj4gYWxsb3dpbmcgdG8gaW5zdGFsbCB0aGVuIHJ1biBXaW5kb3dzIGxhdGVyIHRv
ZGF5IGFmdGVyIG1vcmUgdGVzdGluZy4KPj4KPj4gSXQgc2hvdWxkIGJlIHVzYWJsZSBpbiBhbnkg
TGludXggZGlzdHJpYnV0aW9uIHdpdGggYSByZWNlbnQgcWVtdSAKPj4gaW5zdGFsbGVkLgo+Pgo+
PiBDaGVlcnMsCj4+Cj4+IERpZGllcgo+Pgo+Pgo+PiBMZSAxMC8wOC8yMDIxIMOgIDEyOjU1LCBM
aW51eCBmb3IgYmxpbmQgZ2VuZXJhbCBkaXNjdXNzaW9uIGEgw6ljcml0wqA6Cj4+PiBIaSBhbGws
Cj4+Pgo+Pj4KPj4+IEFzIEkgc3RhdGVkIGJlZm9yZSwgSSBhbSBydW5uaW5nIFNsaW50IG9uIHRo
ZSBiYXJlIG1ldGFsLCBob3dldmVyIG15IAo+Pj4gd29yayBlbnRhaWxzIHRlYWNoaW5nIE5WREEg
dG8gY2xpZW50cywgb2J2aW91c2x5IHJ1bm5pbmcgV2luZG93cy4KPj4+Cj4+Pgo+Pj4gVGhlcmVm
b3IgSSBkZXNwZXJhdGVseSBuZWVkIGEgV2luZG93cyBWTSwgc28gSSBjYW4gbWFrZSBhIGxpdmlu
Zy4gSSAKPj4+IGNhbm5vdCBmaWd1cmUgcWVtdSwgdmlydHVhbC1ib3gsIEkgaGF2ZSBubyBpZGVh
LCBhbmQgVk1XYXJlIAo+Pj4gV29ya3N0YXRpb24gUGxheWVyIGRvZXNuJ3Qgd2FudCB0byBpbnN0
YWxsIHVuZGVyIFNsaW50Lgo+Pj4KPj4+Cj4+PiBDb3VsZCBzb21lb25lIHBsZWFzZSwgcGxlYXNl
LCBnaXZlIG1lIGNvbmNpc2UgaW5zdHJ1Y3Rpb25zIGZvciAKPj4+IHNldHRpbmcgdXAgYSBWTSB1
c2luZyBxZW11IGluIFNsaW50Pwo+Pj4KPj4+Cj4+PiBXYXJtIHJlZ2FyZHMsCj4+Pgo+Pj4KPj4+
IEJyYW5kdCBTdGVlbmthbXAKPj4+Cj4+Pgo+Pj4gU2VudCBmcm9tIG15IGdhc3MgcG93ZXJlZCBT
bGludCBoYWlyIGRyeWVyLgo+Cj4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18KPiBCbGludXgtbGlzdCBtYWlsaW5nIGxpc3QKPiBCbGludXgtbGlzdEByZWRo
YXQuY29tCj4gaHR0cHM6Ly9saXN0bWFuLnJlZGhhdC5jb20vbWFpbG1hbi9saXN0aW5mby9ibGlu
dXgtbGlzdApfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpC
bGludXgtbGlzdCBtYWlsaW5nIGxpc3QKQmxpbnV4LWxpc3RAcmVkaGF0LmNvbQpodHRwczovL2xp
c3RtYW4ucmVkaGF0LmNvbS9tYWlsbWFuL2xpc3RpbmZvL2JsaW51eC1saXN0

