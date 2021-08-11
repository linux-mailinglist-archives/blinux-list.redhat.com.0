Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [216.205.24.124])
	by mail.lfdr.de (Postfix) with ESMTP id 80F2E3E8891
	for <lists+blinux-list@lfdr.de>; Wed, 11 Aug 2021 05:04:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1628651077;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=bXB2jm7W6G6uAsfYJ5aiD8gUY5Sieqs3il7Q4rtptRY=;
	b=I+C83/Qtf+gKK5ir24GX8ElgXyMSfqDZT9GAy5tCbpnYovKbibLfRNlQqg37iteIp8yV6b
	wlir0lV2owu35MkkPueSypNTEs6dX9kLutmjp8VyOkyWwFhvDJOBwBrL24JHqIAQ1d2JiG
	o3orXEPS/HWb6HwvCZf9ozK5WTaPoDw=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-131-hARkAxpmMbCsYEQOM16eHg-1; Tue, 10 Aug 2021 23:04:35 -0400
X-MC-Unique: hARkAxpmMbCsYEQOM16eHg-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com [10.5.11.14])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 8B4E2801FCD;
	Wed, 11 Aug 2021 03:04:31 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 71D9F5D9CA;
	Wed, 11 Aug 2021 03:04:31 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 4907F4BB7C;
	Wed, 11 Aug 2021 03:04:31 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.rdu2.redhat.com
	[10.11.54.6])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 17B34T9Q018620 for <blinux-list@listman.util.phx.redhat.com>;
	Tue, 10 Aug 2021 23:04:29 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 73F632124216; Wed, 11 Aug 2021 03:04:29 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast01.extmail.prod.ext.rdu2.redhat.com [10.11.55.17])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 6F3542124214
	for <blinux-list@redhat.com>; Wed, 11 Aug 2021 03:04:25 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [207.211.31.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
	bits)) (No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 71DD9866DF4
	for <blinux-list@redhat.com>; Wed, 11 Aug 2021 03:04:25 +0000 (UTC)
Received: from mail-oi1-f182.google.com (mail-oi1-f182.google.com
	[209.85.167.182]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-533-RgqgayCEPVKCWqxTo3XTKA-1; Tue, 10 Aug 2021 23:04:23 -0400
X-MC-Unique: RgqgayCEPVKCWqxTo3XTKA-1
Received: by mail-oi1-f182.google.com with SMTP id t35so2416309oiw.9
	for <blinux-list@redhat.com>; Tue, 10 Aug 2021 20:04:23 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:references:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-transfer-encoding
	:content-language;
	bh=kAK9o12zuIWK60AcWEQIa+0R1aoOLJiT6vJFglwey24=;
	b=g3Z5OocWPDuNQZf/WgrF5odtaNEIHw2yOdFKxk5qLywM593pZVU0DK2B7Z0nMqm0PO
	0Rt0Y+/gCYOfuw0MaWQoDmla8WlOG0oqMjEQQCLuwLk3QhWD7vDhkWpN77jNL+M8Anq2
	SyEqh9WE49JQc27d4jNJAbhYgxqaySYAE9EClpif7W0LEyYNLZ1QY6xiJl83M+NkrvxI
	uN3+y8ep6uiEmWJMFHG3tT2AzR25GZ1836JCeakvFTfd6Lg+Mn3O/gYaHaokQIRJtjS5
	WsNo5YwPCkhsqqUdzbPPK1ZNswiHSG0O9rz+Msg2ceuW4iptO3kmM3kVuR+u4WBGB0kD
	6KPA==
X-Gm-Message-State: AOAM5328CEeWmPqDt1w4s3q7MVC2w72K5TOFuvc4naEJNdFc6E7hyJpZ
	NqCiQW6kVqGDqj2RHFYBg+NNlJC5/vMHBQ==
X-Google-Smtp-Source: ABdhPJxixAE+DIPvvfEsYe6LYnuVAjbDbvRIreQOMa8NF875jHWs3U1oyhNf3J7gg9i+FEdBWxHpXw==
X-Received: by 2002:aca:4e82:: with SMTP id c124mr6044318oib.50.1628651062589; 
	Tue, 10 Aug 2021 20:04:22 -0700 (PDT)
Received: from ?IPv6:2601:501:100:cb70:4d42:6605:2d23:1f1c?
	([2601:501:100:cb70:4d42:6605:2d23:1f1c])
	by smtp.gmail.com with ESMTPSA id 95sm3096203ota.70.2021.08.10.20.04.21
	for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Tue, 10 Aug 2021 20:04:22 -0700 (PDT)
Subject: Re: Help, I need a Windows VM for my work
To: Linux for blind general discussion <blinux-list@redhat.com>
References: <3d854105-bb2b-5501-235f-eb05dc13f1f4@gmail.com>
	<6b512da3-e808-5c33-b0d3-700b55397580@slint.fr>
	<64366d3c-fdd0-3b9a-b771-7dbc6d720f4e@slint.fr>
	<20210810143027.nrhkrccb5lxpnjzm@k.n5t.de>
Message-ID: <c817c4fd-2491-9a2c-e3f2-f9e12ff738e5@gmail.com>
Date: Tue, 10 Aug 2021 20:04:22 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
	Thunderbird/78.13.0
MIME-Version: 1.0
In-Reply-To: <20210810143027.nrhkrccb5lxpnjzm@k.n5t.de>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.6
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"

c2VlIGlmIHZtd2FyZSBwbGF5ZXIgaXMgYW55IGJldHRlcgoKT24gOC8xMC8yMDIxIDc6MzAgQU0s
IExpbnV4IGZvciBibGluZCBnZW5lcmFsIGRpc2N1c3Npb24gd3JvdGU6Cj4gSGkgRGlkaWVyLAo+
Cj4gdGhlcmUgd2FzIG5vIHNjcmlwdCBhdHRhY2hlZCwgbWF5YmUgdGhlIGxpc3RtYW5hZ2VyIHJl
bW92ZWQgaXN0IDotKC4gQ2FuIHlvdQo+IHNlbmQgbWUgdGhlIHNjcmlwdCBhbHNvIHBsZWFzZT8K
Pgo+IEkgd2FzIGFsc28gZXhwZXJpbWVudGluZyB3aXRoIFFlbXUgYW5kIFdpbmRvd3MgZHVyaW5n
IHRoZSBsYXN0IHdlZWtzIGFuZCBoYWQKPiBhIFdpbiAxMCBwcm8gcnVubmluZywgYnV0IHNvbWV0
aW1lcyB0aGUgVk0gd2FzIHRvIHNsb3cgdG8gaGF2ZSBhIGdvb2QKPiB3b3JraW5nIGV4cGlyaWVu
Y2UgOi0oLiBJIGFtIHVzaW5nIGEgRGVsbCBYUFMgMTMgbGFwdG9wIHdpdGggMTYgR0IgbWVtb3J5
Cj4gYW5kIGEgSW50ZWxsIEk3IGNwdSB3aXRoIDEsOSBHSHouIEkgd2FzIHVzaW5nIHRoZSB2aXJ0
aW8gZHJpdmVycyBmb3IgV2luZG93cwo+IHRvIHNwZWVkIHVwIHRoaW5ncyBhcyBtdWNoIGFzIHBv
c3NpYmxlIGFuZCBJIGFsc28gZGVhY3RpdmF0ZWQgYXMgbWFueQo+IHVubmVjZXNzYXJ5IHRoaW5n
cyBpbiB0aGUgV2luZG93cyBWTSwgYnV0IGVzcGVjaWFseSB3aXRoIG11Y2ggZGlzayBJL08KPiBl
dmVyeXRoaW5nIHdhcyBub3Qgc25hcHB5IGVub3VnaCB0byB3b3JrIDotKC4KPgo+IFdoZW4gcnVu
bmluZyBXaW5kb3dzIGFzIHRoZSBob3N0IHN5c3RlbSBhbmQgdXNpbmcgVk13YXJlIHRvIHZpcnR1
YWxpemUgbGludXgKPiBndWVzdHMgSSBkbyBub3QgaGF2ZSB0aG9zZSBwcm9ibGVtcy4KPgo+IEhv
dyBhcmUgeW91ciBhbmQgYWxzbyBvdGhlcnMgZXhwZXJpZW5jZXMgd2l0aCB2aXJ0dWFsaXplZCBX
aW5kb3dzIHN5c3RlbXMgb24KPiBMaW51eCBob3N0cz8gQXJlIHRoZSBzeXN0ZW1zIGZhc3QgZW5v
dWdoIHRvIHdvcmsgc21vb3RobHkgb3IgZG8geW91IGFsc28KPiB0aG9zZSBraW5kIG9mIHByb2Js
ZW1zPyBXaGF0IHNldHRpbmdzIGhhdmUgeW91IGNoYW5nZWQgaW4gdGhlIFdpbmRvd3MgZ3Vlc3QK
PiB0byBoYXZlIGEgc3lzdGVtIHdoaWNoIGlzIGZhc3QgZW5vdWdoIGFuZCB3aGF0IFFlbXUgcGFy
YW1ldGVycyBkbyB5b3UgdXNlCj4gZXNwZWNpYWx5IGZvciB0aGUgaGFyZHNpc2sgaW1hZ2U/Cj4K
PiBDaGVlcnMgYW5kIHRoYW5rcywKPgo+ICAgIFNjaG9lcHAKPgo+Cj4gT24gVHVlLCBBdWcgMTAs
IDIwMjEgYXQgMDM6NTk6NTlQTSArMDIwMCwgTGludXggZm9yIGJsaW5kIGdlbmVyYWwgZGlzY3Vz
c2lvbiB3cm90ZToKPj4gSGkgYWdhaW4gQnJhbmR0LAo+Pgo+PiBUaGUgc2NyaXB0IGlzIGF0dGFj
aGVkCj4+Cj4+IEludHJ1Y3Rpb25zIGZvciB1c2U6Cj4+IDEuIENyZWF0ZSBhIGRpcmVjdG9yeSB+
L3FlbXUKPj4gQXNzdW1pbmcgdGhhdCB5b3VyIHVzZXJuYW1lIGlzIGJyYW5kdDsgaHVzdCB0eXBl
IHRvIGRvIHRoYXQ6Cj4+IG1rZGlyIC9ob21lL2JyYW5kdC9xZW11Cj4+IG9yIGp1c3Q6Cj4+IG1r
ZGlyIH4vcWVtdQo+PiBBcyBhIHJlbWluZGVyLCB+IHN0YW5kcyBmb3IgL2hvbWUvPHVzZXJuYW1l
Pgo+PiBJbiBteSBjYXNlIC91c3IvZGlkaWVyLCBpbiB5b3VycyBJIGFzc3VtZSAvaG9tZS9icmFu
ZHQKPj4gYnV0IGFueXdheSB0aGUgb3V0cHV0IG9mIHRoaXMgY29tbWFuZCB3aWxsIHRlbGwgeW91
Ogo+PiBlY2hvIH4KPj4KPj4gMi4gbW92ZSB0aGUgV2luZG93cyBJU08gZmlsZSBpbiB+L3FlbXUs
ICByZW5hbWVkIH4vcWVtdS93aW4gd2luZG93cy5pc28KPj4gRm9yIGluc3RhbmNlIGhlciBJIGRp
ZCB0aGlzOgo+Pgo+PiAvZGF0YS9pbWFnZXNfSVNPL1dpbmRvd3MxMF9JbnNpZGVyUHJldmlld19D
bGllbnRfeDY0X2ZyLWZyXzIxMzU0Lmlzbwo+Pgo+PiAzLiBEb3dubG9hZCB0aGUgc2NyaXB0IHdp
bmRvd3Muc2ggYW5kIHN0b3JlIGl0IHNvbWV3aGVyZQo+PiBDaGFuZ2UgdG8gdGhlIGRpcmVjdG9y
eSB3aGVyZSBpdCBpcyBpbnN0YWxsZWQgYW5kIHJ1biBpdCBsaWtlIHRoaXM6Cj4+IHNoIHdpbmRv
d3Muc2gKPj4gVGhlbiBwcmVzcyBFbnRlci4KPj4gUHJlc3MgIEVudGVyIGFnYWluIGFmdGVyIDUg
c2Vjb25kcyB0byBtYWtlIHN1cmUgaXQgc3RhcnRzIHRoZSBXaW5kb3dzCj4+IFdhaXQgcGF0aWVu
dGx5IHVudGlsIHRoZSBpbnN0YWxsZXIgZGlzcGxheXMgaXRzIGZpcnN0IHNjcmVlbiBpbiB0aGUg
Vk0uCj4+Cj4+IE5vdGVzOgo+PiBZb3UgbmVlZCB0byBiZSBpbiBhIGdyYXBoaWNhbCBlbnZpcm9u
bWVudCBsaWtlIE1hdGUuCj4+IElmIHRoZSBWTSBzdGVhbHMgdGhlIGZvY3VzLCB0eXBlIEN0cmwr
QWx0K0cgdG8gZ2V0IGl0IGJhY2sgb24gdGhlIGhvc3QuCj4+Cj4+IEFmdGVyIFdpbmRvd3MgaW5z
dGFsbGF0aW9uLCBydW5uaW5nIHRoZSBzY3JpcHQgc2hvdWxkIHN0YXJ0IFdpbmRvd3MgZGlyZWN0
bHkKPj4gaW4KPj4gdGhlIFZNLgo+Pgo+PiBDaGVlcnMsCj4+IERpZGllcgo+Pgo+Pgo+PiBMZSAx
MC8wOC8yMDIxIMOgIDE1OjA2LCBMaW51eCBmb3IgYmxpbmQgZ2VuZXJhbCBkaXNjdXNzaW9uIGEg
w6ljcml0wqA6Cj4+PiBIaSBCcmFuZHQsCj4+Pgo+Pj4gSSB3aWxsIGF0dGFjaCB0byBteSBuZXh0
IG1lc3NhZ2UgYSBzY3JpcHQgdGhhdCBzZXRzIHVwIGEgcWVtdSBWTQo+Pj4gYWxsb3dpbmcgdG8g
aW5zdGFsbCB0aGVuIHJ1biBXaW5kb3dzIGxhdGVyIHRvZGF5IGFmdGVyIG1vcmUgdGVzdGluZy4K
Pj4+Cj4+PiBJdCBzaG91bGQgYmUgdXNhYmxlIGluIGFueSBMaW51eCBkaXN0cmlidXRpb24gd2l0
aCBhIHJlY2VudCBxZW11IGluc3RhbGxlZC4KPj4+Cj4+PiBDaGVlcnMsCj4+Pgo+Pj4gRGlkaWVy
Cj4+Pgo+Pj4KPj4+IExlIDEwLzA4LzIwMjEgw6AgMTI6NTUsIExpbnV4IGZvciBibGluZCBnZW5l
cmFsIGRpc2N1c3Npb24gYSDDqWNyaXTCoDoKPj4+PiBIaSBhbGwsCj4+Pj4KPj4+Pgo+Pj4+IEFz
IEkgc3RhdGVkIGJlZm9yZSwgSSBhbSBydW5uaW5nIFNsaW50IG9uIHRoZSBiYXJlIG1ldGFsLCBo
b3dldmVyIG15Cj4+Pj4gd29yayBlbnRhaWxzIHRlYWNoaW5nIE5WREEgdG8gY2xpZW50cywgb2J2
aW91c2x5IHJ1bm5pbmcgV2luZG93cy4KPj4+Pgo+Pj4+Cj4+Pj4gVGhlcmVmb3IgSSBkZXNwZXJh
dGVseSBuZWVkIGEgV2luZG93cyBWTSwgc28gSSBjYW4gbWFrZSBhIGxpdmluZy4gSQo+Pj4+IGNh
bm5vdCBmaWd1cmUgcWVtdSwgdmlydHVhbC1ib3gsIEkgaGF2ZSBubyBpZGVhLCBhbmQgVk1XYXJl
Cj4+Pj4gV29ya3N0YXRpb24gUGxheWVyIGRvZXNuJ3Qgd2FudCB0byBpbnN0YWxsIHVuZGVyIFNs
aW50Lgo+Pj4+Cj4+Pj4KPj4+PiBDb3VsZCBzb21lb25lIHBsZWFzZSwgcGxlYXNlLCBnaXZlIG1l
IGNvbmNpc2UgaW5zdHJ1Y3Rpb25zIGZvcgo+Pj4+IHNldHRpbmcgdXAgYSBWTSB1c2luZyBxZW11
IGluIFNsaW50Pwo+Pj4+Cj4+Pj4KPj4+PiBXYXJtIHJlZ2FyZHMsCj4+Pj4KPj4+Pgo+Pj4+IEJy
YW5kdCBTdGVlbmthbXAKPj4+Pgo+Pj4+Cj4+Pj4gU2VudCBmcm9tIG15IGdhc3MgcG93ZXJlZCBT
bGludCBoYWlyIGRyeWVyLgo+PiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwo+PiBCbGludXgtbGlzdCBtYWlsaW5nIGxpc3QKPj4gQmxpbnV4LWxpc3RAcmVk
aGF0LmNvbQo+PiBodHRwczovL2xpc3RtYW4ucmVkaGF0LmNvbS9tYWlsbWFuL2xpc3RpbmZvL2Js
aW51eC1saXN0Cj4KPiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwo+IEJsaW51eC1saXN0IG1haWxpbmcgbGlzdAo+IEJsaW51eC1saXN0QHJlZGhhdC5jb20K
PiBodHRwczovL2xpc3RtYW4ucmVkaGF0LmNvbS9tYWlsbWFuL2xpc3RpbmZvL2JsaW51eC1saXN0
CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpCbGludXgt
bGlzdCBtYWlsaW5nIGxpc3QKQmxpbnV4LWxpc3RAcmVkaGF0LmNvbQpodHRwczovL2xpc3RtYW4u
cmVkaGF0LmNvbS9tYWlsbWFuL2xpc3RpbmZvL2JsaW51eC1saXN0

