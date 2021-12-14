Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 92B5C474ECF
	for <lists+blinux-list@lfdr.de>; Wed, 15 Dec 2021 00:55:12 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1639526111;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=nQHoICm/QeXcsAtT+eJbDxxaNT8KbSB5c3z9wOPEGjM=;
	b=E0JezEWMnQld8rdwxOOdN32xtpiyl8+8C3/ZjMUosj4tvxTXj+TNCm0bc5/Hf9Rt70bEU9
	RpXq1FUmiJMf8wctin8LyIF6d/Q669A7DS1M3ewu5GWBXKs898ABF75v4gW9WJ6UWZHHZc
	yYXZWG3Qd4tZblHL8cq0FHWW8VYydAU=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-460-y9Smt1U9PaWcUnQ-SreIHw-1; Tue, 14 Dec 2021 18:55:08 -0500
X-MC-Unique: y9Smt1U9PaWcUnQ-SreIHw-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.12])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 222D385B66C;
	Tue, 14 Dec 2021 23:55:04 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 06CB27B037;
	Tue, 14 Dec 2021 23:55:04 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id D29614A705;
	Tue, 14 Dec 2021 23:55:02 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx09.intmail.prod.int.rdu2.redhat.com
	[10.11.54.9])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 1BENU2if030826 for <blinux-list@listman.util.phx.redhat.com>;
	Tue, 14 Dec 2021 18:30:02 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id F126D492D1D; Tue, 14 Dec 2021 23:30:01 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast08.extmail.prod.ext.rdu2.redhat.com [10.11.55.24])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id EC1E9492D18
	for <blinux-list@redhat.com>; Tue, 14 Dec 2021 23:30:01 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [207.211.31.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
	bits)) (No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id D09C23804063
	for <blinux-list@redhat.com>; Tue, 14 Dec 2021 23:30:01 +0000 (UTC)
Received: from mail-qv1-f52.google.com (mail-qv1-f52.google.com
	[209.85.219.52]) by relay.mimecast.com with ESMTP with STARTTLS
	(version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-443-ic6_if0dPtCGbvsrtWUX1g-1; Tue, 14 Dec 2021 18:30:00 -0500
X-MC-Unique: ic6_if0dPtCGbvsrtWUX1g-1
Received: by mail-qv1-f52.google.com with SMTP id kl7so1894659qvb.3
	for <blinux-list@redhat.com>; Tue, 14 Dec 2021 15:30:00 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20210112;
	h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
	:content-language:to:references:from:in-reply-to
	:content-transfer-encoding;
	bh=sswBe1lN9NibYshhoUhXWRS/oqfjKj76O9lj/lvAefA=;
	b=l7MF928XY7//N9TbzeyL/77helEsP1ggYDSlJXXLKU0cATPDMLWhsTqxabJHgNsItG
	z/gu+ROwoWmmIbY79L2OCELUti5Y+RjhwzzOD+/zTTJMbx6mNC+ldK//rV7ZkEmnzXqg
	MAayx81l4M76OCWzostFooWfoR4CgdxopaY60n6eEEdB3M6jUI2p0NGrezIK0Ltzt0Zo
	ZOMnvCPHBVhJAwtPsPnryE/eoUMYJ5+/5DJhE5k2U/BINrp0TIdrkLoWFsynbWNQuHB6
	Kvsm3U1GDhVYnFTVUIaVSqJ4/9bH3IgHhh+v0rImlzysWuyF3rHwIjP9Venkqs3GBHJY
	0Ckg==
X-Gm-Message-State: AOAM5311EcLI5QIYXTTHklruwb1NeTPWBXpnnOwchl3rAiX3phZT+/8/
	09ye79RCqwV9T+ts1Ir/SZhyF8VONS31IQ==
X-Google-Smtp-Source: ABdhPJyIvQ64Hn+lnE1FB6S07B/CEAsy4fEPLbDXx6+CQujzb9+3d4aaPObFFN7KqnLZkNQZOT1l7A==
X-Received: by 2002:a05:6214:84f:: with SMTP id
	dg15mr2833678qvb.119.1639524599313; 
	Tue, 14 Dec 2021 15:29:59 -0800 (PST)
Received: from ?IPV6:2603:6011:ba01:8300:1525:bc94:97e:7f98?
	(2603-6011-ba01-8300-1525-bc94-097e-7f98.res6.spectrum.com.
	[2603:6011:ba01:8300:1525:bc94:97e:7f98])
	by smtp.gmail.com with ESMTPSA id
	bj30sm144601qkb.58.2021.12.14.15.29.58 for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Tue, 14 Dec 2021 15:29:58 -0800 (PST)
Message-ID: <e4240782-5385-9ba8-d741-5469440faa16@gmail.com>
Date: Tue, 14 Dec 2021 18:29:57 -0500
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
	Thunderbird/91.3.2
Subject: Re: Attempting a Jenux install, again.
To: Linux for blind general discussion <blinux-list@redhat.com>
References: <1C2D6AE2-C6C3-4776-AE48-7265C64E8C87@gmail.com>
	<426b2a95-a664-626f-971f-ecea89acc81c@gmail.com>
	<0fb25799-2064-5123-b645-5779fe020c0f@gmail.com>
	<alpine.NEB.2.23.451.2112140727470.19510@panix1.panix.com>
	<70d6b356-24f0-a06f-29ab-86fc8adad896@gmail.com>
	<5b241b8a-802e-e3d8-d86b-a655dd0fea72@gmail.com>
In-Reply-To: <5b241b8a-802e-e3d8-d86b-a655dd0fea72@gmail.com>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.85 on 10.11.54.9
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
Content-Language: en-US
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"

SGksCgoKSXMgdGhpcyBndWlkZWQgaW5zdGFsbGVyIHBhcnQgb2YgdGhlIGFyY2ggaXNvP8KgIElm
IHNvLCBob3cgZG8geW91IGdldCBpdCAKZ29pbmc/P8KgIEkgd291bGQgbGlrZSB0byBnaXZlIHRo
aXMgYSB0ZXN0IGFuZCBzZWUgaG93IHRoaXMgd29ya3MuCgoKTWF0dGhldwoKCgpPbiAxMi8xNC8y
MDIxIDc6NTkgQU0sIExpbnV4IGZvciBibGluZCBnZW5lcmFsIGRpc2N1c3Npb24gd3JvdGU6Cj4g
ZWxsIHRoZXJlJ3MgYSBoaXN0b3J5IG9mIHBvc3RzIGFzIGZhciBhcyBKZW51eCBicmVha2luZyB3
aXRoIHBlb3BsZSAKPiB3YXkgbW9yZSBxdWFsaWZpZWQgdGhhbiBtZSBkaWdnaW5nIHRocm91Z2gg
dGhlIGNvZGUgYW5kIGhhdmluZyB0aGluZ3MgCj4gYnJlYWsgb24gdGhlaXIgaW5zdGFsbHMuIEkn
dmUgcGVyc29uYWxseSBoYWQgSmVudXggY29ycnVwdCBhIGZsYXNoIAo+IGRyaXZlIHRvIHRoZSBw
b2ludCBpdCdzIGEgZ2xvcmlmaWVkIHBhcHJ3ZWlnaHQgZHVlIHRvIHNoZW5hbmlnYW5zIHdpdGgg
Cj4gd3JpdGluZyB0byBpdC4KPgo+IFRoYXQgYmVpbmcgc2FpZC4gTm93IEFyY2ggaXRzZWxmIGhh
cyB0aGUgZ3VpZGVkIG1vZGUgaW5zdGFsbGVyLCB3aGljaCAKPiBpcyBwZXJmZWN0bHkgdXNlYWJs
ZSB3aXRoIGVzcGVha3VwIGFuZCB0aGF0IG9uY2UgaW5zdGFsbGVkLCBhcyBvZiB0aGlzIAo+IG1v
bnRoIGF1dG8gZW5hYmxlcyBzcGVlY2gvYnJhaWxsZSBhdCB0aGUgZW5kIG9mIHRoZSBpbnN0YWxs
LCBJJ2QgYXJndWUgCj4gQXJjaCBhcmUgZG9pbmcgYSBiZXR0ZXIgam9iIGF0IG1ha2luZyB0aGVp
ciBzeXN0ZW1zIGFjY2Vzc2libGUqIHRoYW4gCj4gcGVvcGxlIGFzc3VtZSB0aG91Z2guIEk7ZCBh
bHNvIHNheSBva2F5LCBBcmNoIGhhcyBhIGd1aWRlZCBpbnN0YWxsZXIgCj4gdGhhdCB3b3Jrcyoq
IGFuZCBpZiBib290ZWQgd2l0aCBhY2Nlc3NpYmlsaXR5IG9uLCBrZWVwcyB0aG9zZSBzZXR0aW5n
cyAKPiBhbmQgZ2l2ZXMgeW91IGEgd29ya2luZyAoYmFzZSwgbWluZCkgc3lzdGVtIG91dCBvZiB0
aGUgYm94Lgo+Cj4KPiAqIFByb3ZpZGVkIHlvdSBpbnN0YWxsIGFsc2EtdXRpbHMvZXNwZWFrdXAg
YXMgcGVyIGEgbm9ybWFsIAo+IGFjY2Vzc2liaWxpdHkgQXJjaCBpbnN0YWxsLiBUaGVyZSdzIGEg
c3RlcCBpbiB0aGUgZ3VpZGVkIGluc3RhbGxlciAKPiB3aGVyZSBpdCBhc2tzIGZvciBleHRyYSBw
YWNrYWdlcywgdGhhdCdzIHdoZXJlIHlvdSBwbHVnIAo+IGFsc2EtdXRpbHMvZXNwZWFrdXAgaW4u
IGVzcGVha3VwLnNlcnZpY2UgZ2V0cyBhdXRvIGVuYWJsZWQgYXQgdGhlIGVuZCAKPiBvZiB0aGUg
aW5zdGFsbCBhcyBwYXJ0IG9mIHRoZSBpbnN0YWxsZXIKPgo+Cj4gKiogV29ya3MsIGFzIGxvbmcg
YXMgeW91J3JlIG9rYXkgd2l0aCBhIGJhc2UgaW5zdGFsbCBidXQgZ2V0dGluZyBhIERFIAo+IHVw
IGFuZCBydW5uaW5nIGlzbid0IHRoYXQgYmFkIHJlYWxseSBvbmNlIHlvdSBkaWQgdGhlIGluc3Rh
bGwuIEkndmUgCj4gbm90IGdvdCB0aGUgZGVza3RvcCBvbmVzIHRvIHdvcmsgY3VycmVudGx5IGJ1
dCBzdGlsbCBwb2tpbmcgYXQgaXQuIEknbSAKPiB0ZW1wdGVkIHRvIGFkZCBpbiBvcmNhLXNwZWVj
aC1kaXNwYXRjaGVyIGFuZCBzbyBmb3J0aCBpbnRvIHRoZSBleHRyYSAKPiBwYWNrYWdlcyBzdGVw
Lgo+Cj4KPiBhdCB0aGF0IGhvd2V2ZXIuCj4KPgo+IE9uIDEyLzE0LzIxIDEyOjQ2LCBMaW51eCBm
b3IgYmxpbmQgZ2VuZXJhbCBkaXNjdXNzaW9uIHdyb3RlOgo+PiBIaSwKPj4KPj4KPj4gSSBkaWQg
dXNlIHRoZSBsYXRlc3QgYXMgb2YgYWJvdXQgMTUgaG91cnMgYWdvLiBJIGRpZCBhbHNvIHZlcmlm
eSB0aGUgCj4+IGlzby4KPj4KPj4KPj4gVGhlIGlzc3VlIHRoaXMgdGltZSBpcyB0aGF0IGFmdGVy
IHJ1bm5pbmcgdGhlIGluc3RhbGxlciBhbmQgCj4+IHJlYm9vdGluZywgbm90aGluZyBzcG9rZS4g
dGhlIHNlZWluZ0FJIG9uIHRoZSBpcGhvbmUgY291bGQgcmVhZCB0aGUgCj4+IHNjcmVlbiBqdXN0
IGZpbmUsIGJ1dCBJIGNvdWxkbid0Cj4+Cj4+Cj4+IExhc3QgdGltZSBpdCB3YXMgb3JjYSBpbiBN
YXRlIHRoYXQgZGlkbid0IHdhbnQgdG8gY29tZSBvbiwgbm8gbWF0dGVyIAo+PiB3aGF0IEkgZG8u
Cj4+Cj4+Cj4+IEkgZm91bmQgdGhhdCB3aXRoIEplbnV4LCBuZXZlciBleHBlY3QgdGhlIHNhbWUg
dGhpbmcgdG8gZ28gd3JvbmcgCj4+IHR3aWNlLCBob3dldmVyIHNvbWV0aGluZyB3aWxsIGJyZWFr
Lgo+Pgo+Pgo+PiBXYXJtIHJlZ2FyZHMsCj4+Cj4+Cj4+IEJyYW5kdAo+Pgo+PiBPbiAyMDIxLzEy
LzE0IDE0OjMxLCBMaW51eCBmb3IgYmxpbmQgZ2VuZXJhbCBkaXNjdXNzaW9uIHdyb3RlOgo+Pj4g
SmVudXggZ2V0cyByZWd1bGFyIHVwZGF0ZXMgbGF0ZXN0IGlzIDIwMjEuMTEuMTcgdW5sZXNzIHRo
YXQgY2hhbmdlZCAKPj4+IHRvZGF5Lgo+Pj4gRGlkIHlvdSB2ZXJpZnkgeW91ciBpc28gZG93bmxv
YWQ/wqAgSWYgSSBmaW5kIGFuIC5zaGE1MTIgZmlsZSBmaWxlIAo+Pj4gZm9yIGFuCj4+PiBpc28s
IEkgd29uJ3QgaW5zdGFsbCB0aGUgaXNvIHdpdGhvdXQgZmlyc3QgdmVyaWZ5aW5nIGl0IHdpdGgg
dGhlIAo+Pj4gLnNoYTUxMgo+Pj4gZmlsZS7CoCBTbyB0d28gcG90ZW50aWFsIHByb2JsZW1zIG5v
dCB1c2luZyBjdXJyZW50IEplbnV4IGluc3RhbGwgaXNvIG9yCj4+PiBmYWlsZWQgdG8gdmVyaWZ5
IGlzby7CoCBJZiB5b3UgZG9uJ3QgaGF2ZSB0aG9zZSB0d28gcHJvYmxlbXMsIHBsZWFzZSAKPj4+
IHdyaXRlCj4+PiBkbmwubmFzaEBnbWFpbC5jb20gYW5kIGxldCBoaW0ga25vdyB0aGUgcHJvYmxl
bSB5b3UgZW5jb3VudGVyZWQgb24geW91cgo+Pj4gaW5zdGFsbCBmYWlsLsKgIFRoYXQgb25lIGlz
IHRoZSBkZXZlbG9wZXIuCj4+Pgo+Pj4KPj4+IE9uIFR1ZSwgMTQgRGVjIDIwMjEsIExpbnV4IGZv
ciBibGluZCBnZW5lcmFsIGRpc2N1c3Npb24gd3JvdGU6Cj4+Pgo+Pj4+IEhpLAo+Pj4+Cj4+Pj4K
Pj4+PiBKZW51eCBmYWlsZWQgb24gbWUsIGFnYWluLiBJIHRoaW5rIEknbGwgZ2l2ZSBpdCBhIHNr
aXAgZm9yIG5vdywgCj4+Pj4gdGhhdCBpcyB1bmxlc3MKPj4+PiB0aGUgZGV2IGFjdHVhbGx5IGZp
eGVzIHRoZSB0aGluZy4KPj4+Pgo+Pj4+Cj4+Pj4gSSBhbSBvbiBGZWRvcmEsIGZvciBub3csIGJl
Y2F1c2UgaXQgd2FzIHRoZSBuZWFyZXN0IFVzYiBzdGljayBJIAo+Pj4+IGNvdWxkIGdyYWIKPj4+
PiBxdWlja2x5Lgo+Pj4+Cj4+Pj4KPj4+PiBJIG1pZ2h0IGp1c3QgZ2l2ZSB0aGUgdmFuaWxsYSBB
cmNoIElTTyBhbm90aGVyIGdvLiBXaHkgbm90Pwo+Pj4+Cj4+Pj4gT24gMjAyMS8xMi8xNCAxMzow
NSwgTGludXggZm9yIGJsaW5kIGdlbmVyYWwgZGlzY3Vzc2lvbiB3cm90ZToKPj4+Pj4gwqDCoG9y
IE1hbmphcm8gQXJjaGl0ZWN0Lgo+Pj4+Pgo+Pj4+PiBQZXJzb25hbGx5LiBJJ3ZlIGhhZCBzdWNj
ZXNzIHdpdGggdGhlIHZhbmlsbGEgQXJjaCBJU08gYW5kIHRoZSBndWlkZWQKPj4+Pj4gaW5zdGFs
bGVyICh0aGUgYXJjaGluc3RhbGwgb25lKSwgSSBqdXN0IHNldCBpdCB0byBib290IHVwIHRhbGtp
bmcsIAo+Pj4+PiB3ZW50Cj4+Pj4+IHRocm91Z2ggaXQgYW5kIGFkZGVkIGluIGFsc2EtdXRpbHMv
ZXNwZWFrdXAgYW5kIHRoZW4gcHV0Cj4+Pj4+IHNwZWVjaC1kaXNwYXRjaGVyL09yY2Evdm9pY2Vz
IGFuZCBhIHdpbmRvdyBtYW5hZ2VyIG9uIG9uY2UgdGhlIAo+Pj4+PiBzeXN0ZW0gd2FzCj4+Pj4+
IGluc3RhbGxlZC4KPj4+Pj4KPj4+Pj4KPj4+Pj4gSmVudXggaGFzIG5ldmVyIHJlYWxseSB3b3Jr
ZWQgZm9yIG1lIG9uIGEgVk0gb3IgYmFyZSBtZXRhbCBhdCBhbGwsIAo+Pj4+PiB3aGVyZWFzCj4+
Pj4+IHRoZSBvZmZpY2lhbCBhcmNoIElTTyBpcyB3b3JraW5nIHJhdGhlciB3ZWxsLCBhbmQgSSBk
dW5ubyBpZiB0aGUgCj4+Pj4+IEFyY2hpdGVjdAo+Pj4+PiBlZGl0aW9uIGlzIDM2LzY0IGJpdCBv
ciAzMmJpdCBvbmx5IG9yIDY0Yml0IG9ubHkuIEFkbWl0dGVkbHksIEkndmUgCj4+Pj4+IGdvdCBh
Cj4+Pj4+IDY0Yml0IFVFRkkgc3lzdGVtIHNvIHRoZSBvZmZpY2lhbCBJU28gd29ya3MgZmxhd2xl
c3NseSBvbiBpdCAKPj4+Pj4gaG93ZXZlciwgYnV0Cj4+Pj4+IFlNTVYgb24gdGhhdCBvbmVZZXMs
IGJ1dCB5b3UgcHJvYmFibHkgZG9uJ3Qgd2FudCB0byBoZWFyIGl0IGlmIHlvdSAKPj4+Pj4gYXJl
IHNldAo+Pj4+PiBvbiB1c2luZyBKZW51eCBob3dldmVyLgo+Pj4+Pgo+Pj4+PiBPbiAxMi8xNC8y
MSAwOToxOCwgTGludXggZm9yIGJsaW5kIGdlbmVyYWwgZGlzY3Vzc2lvbiB3cm90ZToKPj4+Pj4+
IEhpIGFsbCwKPj4+Pj4+Cj4+Pj4+PiBJIGRlY2lkZWQgdG8gZ2l2ZSBKZW51eCBhbm90aGVyIGdv
LCBsYXN0IHRpbWUsIG5vIG1hdHRlciB3aGF0IEkgCj4+Pj4+PiB0cmllZCwgSQo+Pj4+Pj4gY291
bGRuJ3QgZ2V0IG9yY2EgdG8gY29tZSBvbiBhZnRlciBsb2dnaW5nIGluIHRvIHRoZSBzeXN0ZW0u
Cj4+Pj4+Pgo+Pj4+Pj4gRG9lcyBhbnlvbmUgaGF2ZSBhbnkgYWR2aWNlPwo+Pj4+Pj4KPj4+Pj4+
IEFsc28sIGlmIHRoaXMgZG9lc24ndCB3b3JrIG91dCwgaXMgdGhlcmUgYSBndWlkZSBmb3IgZG9p
bmcgYSBNYW5qYXJvCj4+Pj4+PiBhcmNoaXRlY3QgaW5zdGFsbD8gIk1hbmphcm8gVGFsa2luZyIg
Z290IHVwZGF0ZWQgYSBsaXR0bGUgd2hpbGUgCj4+Pj4+PiBhZ28sIGFuZAo+Pj4+Pj4gaWYsIGFz
IEkgc2FpZCwgSmVudXggZG9lc24ndCB3b3JrIG91dCwgSSdkIGxpa2UgdG8gZ2l2ZSB0aGF0IG9u
ZSAKPj4+Pj4+IGEgZ28uCj4+Pj4+Pgo+Pj4+Pj4gVGhhbmtzIHNvIGxvbmcuCj4+Pj4+Pgo+Pj4+
Pj4gV2FybSByZWdhcmRzLAo+Pj4+Pj4KPj4+Pj4+IEJyYW5kdCBTdGVlbmthbXAKPj4+Pj4+Cj4+
Pj4+PiBTZW50IGZyb20gbXkgTWFjQm9vayBBaXIKPj4+Pj4+Cj4+Pj4+PiBDb250YWN0Ogo+Pj4+
Pj4KPj4+Pj4+IFBob25lOiArMjcgKDApNjAgNTI1IDkxODEgPHRlbDovLysyNzYwNTI1OTE4MT4K
Pj4+Pj4+Cj4+Pj4+PiBFbWFpbDogYnJhbmR0LnN0ZWVua2FtcEBnbWFpbC5jb20gCj4+Pj4+PiA8
bWFpbHRvOmJyYW5kdC5zdGVlbmthbXBAZ21haWwuY29tPgo+Pj4+Pj4KPj4+Pj4+IFR3aXR0ZXI6
IEBicmFuZHRzdGVlbmthbXAgPGh0dHA6Ly93d3cudHdpdHRlci5jb20vYnJhbmR0c3RlZW5rYW1w
Pgo+Pj4+Pj4KPj4+Pj4+Cj4+Pj4+Pgo+Pj4+Pj4KPj4+Pj4+IF9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fCj4+Pj4+PiBCbGludXgtbGlzdCBtYWlsaW5nIGxp
c3QKPj4+Pj4+IEJsaW51eC1saXN0QHJlZGhhdC5jb20KPj4+Pj4+IGh0dHBzOi8vbGlzdG1hbi5y
ZWRoYXQuY29tL21haWxtYW4vbGlzdGluZm8vYmxpbnV4LWxpc3QKPj4+Pj4+Cj4+Pj4+IF9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCj4+Pj4+IEJsaW51eC1s
aXN0IG1haWxpbmcgbGlzdAo+Pj4+PiBCbGludXgtbGlzdEByZWRoYXQuY29tCj4+Pj4+IGh0dHBz
Oi8vbGlzdG1hbi5yZWRoYXQuY29tL21haWxtYW4vbGlzdGluZm8vYmxpbnV4LWxpc3QKPj4+Pgo+
Pj4KPj4+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCj4+
PiBCbGludXgtbGlzdCBtYWlsaW5nIGxpc3QKPj4+IEJsaW51eC1saXN0QHJlZGhhdC5jb20KPj4+
IGh0dHBzOi8vbGlzdG1hbi5yZWRoYXQuY29tL21haWxtYW4vbGlzdGluZm8vYmxpbnV4LWxpc3QK
Pj4KPgo+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCj4g
QmxpbnV4LWxpc3QgbWFpbGluZyBsaXN0Cj4gQmxpbnV4LWxpc3RAcmVkaGF0LmNvbQo+IGh0dHBz
Oi8vbGlzdG1hbi5yZWRoYXQuY29tL21haWxtYW4vbGlzdGluZm8vYmxpbnV4LWxpc3QKCl9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkJsaW51eC1saXN0IG1h
aWxpbmcgbGlzdApCbGludXgtbGlzdEByZWRoYXQuY29tCmh0dHBzOi8vbGlzdG1hbi5yZWRoYXQu
Y29tL21haWxtYW4vbGlzdGluZm8vYmxpbnV4LWxpc3Q=

