Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 9FFA24B6001
	for <lists+blinux-list@lfdr.de>; Tue, 15 Feb 2022 02:28:28 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1644888507;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=rXv7biI/TTO60/f16vxypq+0TQ/YXWhheQuLDrkWfEI=;
	b=LWj8ZowWnZC1cGpolXSBRivshF6VvAmZMP0Kfmx8P7vZJlWNhKPLtIAJ2iv8v/wRUfkSeK
	nR/W80HgF5IihOKkWFy6Ft47nc/UDo4SG6wGw9oRBQ2gH8DZM8V3DHZTn9WNNH41x0esIj
	4QeLEXYvSex9nmJ+z1dE9eYObh2myYk=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-556-n15WFPQDNRaF66IIzgicpA-1; Mon, 14 Feb 2022 20:28:24 -0500
X-MC-Unique: n15WFPQDNRaF66IIzgicpA-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com [10.5.11.14])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 80E7B1091DA1;
	Tue, 15 Feb 2022 01:28:20 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 871E6ADF9;
	Tue, 15 Feb 2022 01:28:19 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id A390A1809CB8;
	Tue, 15 Feb 2022 01:28:17 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.rdu2.redhat.com
	[10.11.54.8])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 21F1SAkA002982 for <blinux-list@listman.util.phx.redhat.com>;
	Mon, 14 Feb 2022 20:28:11 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id CB072C4C7A5; Tue, 15 Feb 2022 01:28:10 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast07.extmail.prod.ext.rdu2.redhat.com [10.11.55.23])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id C717AC4C7A0
	for <blinux-list@redhat.com>; Tue, 15 Feb 2022 01:28:10 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[205.139.110.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id AE2623C11C64
	for <blinux-list@redhat.com>; Tue, 15 Feb 2022 01:28:10 +0000 (UTC)
Received: from mail-pf1-f173.google.com (mail-pf1-f173.google.com
	[209.85.210.173]) by relay.mimecast.com with ESMTP with STARTTLS
	(version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-352-045klvn3PNq5speRyryG2w-1; Mon, 14 Feb 2022 20:28:08 -0500
X-MC-Unique: 045klvn3PNq5speRyryG2w-1
Received: by mail-pf1-f173.google.com with SMTP id i21so30759944pfd.13
	for <blinux-list@redhat.com>; Mon, 14 Feb 2022 17:28:08 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20210112;
	h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
	:content-language:to:references:from:in-reply-to
	:content-transfer-encoding;
	bh=FbBJINi8nCd7HsdNV9fKDC218BunhalqVrHKFHIWJ4M=;
	b=SDqzuaIZ39RrBSbdRoWwfitMO+oUWcM/s8Ed4/GtaUdfAzjSQmMgI7LD7QDB5ifs0K
	dPLWMnAFLB0kXCk/KOq0UC+A+kc67a5ghb8aawusQJ4dDDpnlZKw2vk8kjxoJg9TguzK
	L4zilGhDKI6ZxvjiTqag0Z4t36Au/NXh9urkgF7wZ6d5797vQLsPZ9DM1aX6vtXSaHeR
	c8WTosgR9lsvIG2dVyoS5ncmDlYbMyB0wzli3x3as/0ttk0LYTlZUCkDjaO6NMbryWRu
	AXnN/uulYlYL/JlhLqmYQYGUZRD0FGClKvP3aFl+oWqBcIpUGEl2a9s9scJ/xm7mvWWx
	j38A==
X-Gm-Message-State: AOAM533thGbiTrXdqU72X2DgG8WSmG6rrDJeBfe6ivhTnr9AM4hxumBg
	ETayVwhUESS2N87vmPpwDYgBEOwNt5qaUA==
X-Google-Smtp-Source: ABdhPJx8MOV0ybmKAnljMbO88B/f4n2ZCgY/ekejCWslez8SfcPVOIyKhm0cG2Zd78sEoArosTAgGQ==
X-Received: by 2002:a62:7743:: with SMTP id s64mr1520128pfc.31.1644888486919; 
	Mon, 14 Feb 2022 17:28:06 -0800 (PST)
Received: from ?IPV6:2607:fb90:728f:4be4:35d6:4ca9:2b24:ab70?
	([2607:fb90:728f:4be4:35d6:4ca9:2b24:ab70])
	by smtp.gmail.com with ESMTPSA id
	ob12sm7318865pjb.5.2022.02.14.17.28.06 for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Mon, 14 Feb 2022 17:28:06 -0800 (PST)
Message-ID: <949192ce-922d-3de0-a0c4-5395fa10ca2d@gmail.com>
Date: Mon, 14 Feb 2022 18:28:02 -0700
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
	Thunderbird/91.5.1
Subject: Re: Coqui TTS has blew my mind!
To: Linux for blind general discussion <blinux-list@redhat.com>
References: <7a0e0ac7-5e7d-a41a-b775-6782a87ba869@protonmail.com>
	<Pine.LNX.4.64.2202091755540.340174@server2.shellworld.net>
	<71517fe5-f206-4f11-0df6-8f3de20c6231@gmail.com>
	<Pine.LNX.4.64.2202101303530.513193@server2.shellworld.net>
	<313791f3-8549-681d-52d3-a3eea4621ba2@gmail.com>
In-Reply-To: <313791f3-8549-681d-52d3-a3eea4621ba2@gmail.com>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.85 on 10.11.54.8
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

d2hhdCBpcyB5b3VyIGxhdGVzdCB3ZWJzaXRlPwpPbiAyLzEwLzIwMjIgMTE6NDIgQU0sIExpbnV4
IGZvciBibGluZCBnZW5lcmFsIGRpc2N1c3Npb24gd3JvdGU6Cj4gLi53aGljaCBtYWtlcyBzdGF0
aW5nIHRoYXQgdGhlc2UgYXJlIGFjY2Vzc2libGUgaW5jb3JyZWN0Lgo+Cj4KPiBUaGVzZSBzYW1w
bGVzIGFyZSBpbiBmYWN0IGFjY2Vzc2libGUsIGJ5IHRoZSB3M2MncyBndWlkZWxpbmVzLCBub3Qg
Cj4gbWluZS4gSSBzdGF0ZWQgdGhhdCBJIGhhdmUgYWRkZWQgZmFsbGJhY2sgbGlua3MgdG8gbXkg
b3duIHdlYnNpdGUsIGJ1dCAKPiB0aGlzIGlzIG5vdCBhIHJlcXVpcmVtZW50IGZvciBIVE1MNSBh
Y2Nlc3NpYmlsaXR5IGFzIGRlZmluZWQgYnkgdGhlIAo+IHczYydzIGFjY2Vzc2liaWxpdHkgd29y
a2luZyBncm91cCwgb3IgYXQgbGVhc3Qgbm90IGFzIGZhciBhcyBJIGtub3cuIAo+IEl0J3MganVz
dCBzb21ldGhpbmcgSSBkaWQgYmVjYXVzZSBJIHdhbnRlZCB0byBpbmNsdWRlIGxlZ2FjeSBzdXBw
b3J0IAo+IGZvciBvbGRlciBicm93c2Vycy4KPgo+Cj4+IExpbnV4IGV4aXN0cyBpbiBjb21tYW5k
IGxpbmUgYXMgd2VsbCBhcyBndWkuwqAgYXMgc29tZW9uZSBlbHNlIGluIGEgCj4+IGRpZmZlcmVu
dCB0aHJlYWQgbm90ZWQgcmVjZW50bHksIHRoZXkgcGVyc29uYWxseSB3b3VsZCBub3QgdG91Y2gg
Z3VpIAo+PiBhZ2FpbiBmb3LCoCB0aGUgcmVzdCBvZiB0aGVpciBsaXZlcyBpZiBnaXZlbiBhIGNo
b2ljZS4gTWVhbmluZyB0aGVzZSAKPj4gb3B0aW9ucyBhcmUgbm90IHVuaXZlcnNhbGx5IGF2YWls
YWJsZSBvciBhY2Nlc3NpYmxlIGluIExpbnV4IGFzIGEgd2hvbGUuCj4KPgo+IFRoZSBmYWN0IHRo
YXQgdGV4dC1iYXNlZCBicm93c2VycyBkbyBub3Qgc3VwcG9ydCBIVE1MNSBzdGFuZGFyZHMgbWFr
ZXMgCj4gdGhlbSBpbmFjY2Vzc2libGUgYW5kIHBlcmhhcHMgZXZlbiB1bnVzYWJsZS4gVGhlcmUg
aXMgbm90aGluZyBpbiB0aGUgCj4gd29ybGQgc3RvcHBpbmcgdGhlbSBmcm9tIGJlY29taW5nIHVz
YWJsZSBieSB0b2RheSdzIHN0YW5kYXJkcywgaXQgCj4gd291bGQgc2VlbSB0aGF0IHRoZXkganVz
dCB3YW50IHRvIHN0YXkgYmFjayBpbiB0aGUgMTk5MCdzLiBNdXNpYyBhbmQgCj4gdmlkZW8gcGxh
eWVycyBleGlzdCBpbiB0ZXh0IGVudmlyb25tZW50cywgb2ZmZXJpbmcgbmVhcmx5IGFsbCB0aGUg
Cj4gZnVuY3Rpb25hbGl0eSBJIGdldCBvbiBhIGRlc2t0b3AuIEl0J3MgdGltZSBmb3IgdGhlIGJy
b3dzZXIgdG8gZG8gdGhlIAo+IHNhbWUuIFN0aWxsLCBpZiBteSBwaG9uZSBhbmQgbXkgZGVza3Rv
cCBlbnZpcm9ubWVudCBjYW4gcmVhZCBpdCAKPiB3aXRob3V0IGFueSBpc3N1ZXMsIHR3byBvdXQg
b2YgdGhyZWUgYWluJ3QgYWxsIHRoYXQgYmFkLiBUaGF0IHNhaWQsIEkgCj4gd2FzIG5vdCBhdHRl
bXB0aW5nIHRvIHN0YXJ0IGEgZmxhbWUgd2FyLCBhcyBJIG1lbnRpb25lZCB0aGUgZmFsbGJhY2sg
Cj4gcG9zc2liaWxpdHkgYXMgc29tZXRoaW5nIHRoYXQgSSBkbywgYnV0IHRoYXQgdGhlIGJyb3dz
ZXJzIEkgdXNlIGhpZGUgCj4gdGhvc2UgZmFsbGJhY2sgbGlua3MsIHNvIEkgY2FuJ3Qgc2F5IHdo
ZXRoZXIgb3Igbm90IHRoaXMgb3RoZXIgd2Vic2l0ZSAKPiB0aGF0IEkgZGlkIG5vdCB3cml0ZSBl
bXBsb3lzIHN1Y2ggbGlua3MsIHdoaWNoIHdvdWxkIG1ha2UgdGhlIHNhbXBsZXMgCj4gYXZhaWxh
YmxlIHRocm91Z2ggb3RoZXIgYnJvd3NlcnMsIGJ1dCBhZ2FpbiBpcyBub3QgYXQgYWxsIGEgCj4g
cmVxdWlyZW1lbnQgdG8gbWVldCAyMDIyJ3MgYWNjZXNzaWJpbGl0eSBndWlkZWxpbmVzIGFzIGRl
ZmluZWQgYnkgCj4gcGVvcGxlIG90aGVyIHRoYW4gbXlzZWxmLCB3aGljaCBpbmNpZGVudGFsbHkg
aW5jbHVkZXMgcGVvcGxlIHdobyBhcyAKPiB5b3Ugc2F5IHVzZSB0ZXh0IGVudmlyb25tZW50cyBh
cyBtdWNoIGFzIHBvc3NpYmxlLiBCdXQgZXZlbiB0aG9zZSAKPiBwZW9wbGUgbXVzdCB1c2Ugd2hh
dCBicm93c2VycyBhcmUgZGVzaWduZWQgdG8gYXQgbGVhc3QgdHJ5IHRvIGFkaGVyZSAKPiB0byB0
aG9zZSBndWlkZWxpbmVzLCBhbmQgbGlrZSBpdCBvciBub3QsIGV2ZW4gdzNtIGRvZXMgbm90IGNv
bXBseSB3aXRoIAo+IGN1cnJlbnQgSFRNTCBzdGFuZGFyZHMsIGFuZCBpdCdzIGFib3V0IHRoZSBi
ZXN0IHRleHQgYnJvd3NlciBhdmFpbGFibGUuCj4KPgo+IG1pZ2h0IGFzIHdlbGwgc2F5LCBwbGVh
c2Ugb25seSBiZSBkaXNhYmxlZCBhcyBJIHBlcnNvbmFsbHkgZGVmaW5lIGl0LCAKPiB3cml0aW5n
IGFjY2Vzc2libGUgYnkgeW91ciBvd24gZGljdGlvbmFyeSBhbmQgc2VlbWluZ2x5IHRvIHByb2pl
Y3QgaXQgCj4gb24gdG8gb3RoZXIgcGVvcGxlLgo+Cj4KPiBOb3QgYXQgYWxsIG15IGludGVudGlv
bi4gSSBkaWRuJ3QgZGVmaW5lIHRoZSBhY2Nlc3NpYmlsaXR5IGd1aWRlbGluZXMsIAo+IEkgb25s
eSBhZGhlcmUgdG8gdGhlbSB0byB0aGUgYmVzdCBvZiBteSBvd24gYWJpbGl0aWVzLCBhbmQgZXZl
biB0b29rIAo+IG15IHdlYnNpdGUncyBhY2Nlc3NpYmlsaXR5IGEgbWFqb3Igc3RlcCBmdXJ0aGVy
IHRoYW4gSSBuZWVkZWQgdG8gaW4gCj4gb3JkZXIgdG8gYWNjb21vZGF0ZSB0aGUgbW9zdCBwZW9w
bGUuIEhvdyBkYXJlIHlvdSBwdXQgd29yZHMgaW50byBteSAKPiBtb3V0aCB0aGF0IEkgbmV2ZXIg
c2FpZCwgZXNwZWNpYWxseSBzaW5jZSBJIGNsZWFybHkgc2FpZCB0aGUgb3Bwb3NpdGUuIAo+IEFu
ZCBJIGRvbid0IHRoaW5rIHRoYXQgd2FzIHRoZSB3M2MncyBpbnRlbnRpb24gZWl0aGVyLgo+Cj4K
PiBXaHkgbm90IHNheSBmcm9tIHRoZSBvdXRzZXQsIHRoYXQgdGhlIGl0ZW1zIGFyZSBvbmx5IGF2
YWlsYWJsZSBmb3IgCj4gc29tZSBMaW51eCB1c2Vycz8KPgo+Cj4gQmVjYXVzZSB0aGF0IHdvdWxk
IGJlIGFuIG91dHJpZ2h0IGxpZS4gRXZlcnlvbmUgd2hvIHJ1bnMgYSBMaW51eCAKPiBvcGVyYXRp
bmcgc3lzdGVtIGhhcyB0aGUgY2hvaWNlIHRvIHVzZSBCcmF2ZSwgQ2hyb21pdW0sIEdvb2dsZSBD
aHJvbWUsIAo+IEZpcmVmb3ggYW5kIGEgaG9zdCBvZiBvdGhlciBzdGFuZGFyZHMtY29tcGxpYW50
IGJyb3dzZXJzLiBKdXN0IGJlY2F1c2UgCj4geW91IHlvdXJzZWxmIG1hZGUgdGhlIGNob2ljZSBu
b3QgdG8gdXNlIHRoZW0gZG9lcyBub3QgbWVhbiB0aGF0IHRoZXkgCj4gYXJlIG5vdCBhdmFpbGFi
bGUgc2hvdWxkIHlvdSBjaG9vc2Ugb25lIG9mIHRoZW0uIFRoZXJlIGFyZSBldmVuIHdheXMgCj4g
YXJvdW5kIHRoZSB3aG9sZSBkZXNrdG9wIGVudmlyb25tZW50IGFuZCBzY3JlZW4gZGlzcGxheSB0
aGluZywgdXNpbmcgCj4geHZmYiBJIHRoaW5rIGl0J3MgY2FsbGVkIHdpdGggZHVtbXkgZGlzcGxh
eSBvdXRwdXQgYW5kIGEgdmVyeSBzbWFsbCAKPiB3aW5kb3cgbWFuYWdlciB0aGF0IGp1c3QgcnVu
cyB5b3VyIHNjcmVlbiByZWFkZXIgYW5kIGJyb3dzZXIgYW5kIAo+IG90aGVyd2lzZSBzdGF5cyBj
b21wbGV0ZWx5IG91dCBvZiB0aGUgd2F5LiBBZ2FpbiwgaXQncyBhYm91dCBwZXJzb25hbCAKPiBj
aG9pY2UsIGJ1dCBtb3JlIGFib3V0IG5lZWRpbmcgdGhlIGFiaWxpdHkgdG8gY2hvb3NlIGEgdGV4
dC1tb2RlIAo+IGJyb3dzZXIgdGhhdCBjYW4gaGFuZGxlIHRoZSBzaW1wbGVzdCBIVE1MNSBhdWRp
byBzdGFuZGFyZCwgYW5kIGF0IAo+IGxlYXN0IGVub3VnaCBKYXZhU2NyaXB0IHRvIGJlIGFibGUg
dG8gaGFuZGxlIGJhc2ljIHRoaW5ncyBsaWtlIGJhbmtpbmcgCj4gYW5kIHNob3BwaW5nIHdpdGhv
dXQgY2hva2luZyBhbmQgZWl0aGVyIGNyYXNoaW5nIG9yIHNlbmRpbmcgbWUgdG8gYSAKPiBibGFu
ayBzY3JlZW4gb3IgYmFjayB0byB0aGUgbG9naW4gcGFnZSBhcyBpZiBteSBjcmVkZW50aWFscyB3
ZXJlIAo+IGluY29ycmVjdC4gVGhlIGZhY3QgaXMgdGhhdCB0ZXh0IGJyb3dzZXJzIGNhbid0IGV2
ZW4gaGFuZGxlIEhUTUw0IAo+IGNvcnJlY3RseSwgYXMgdGhleSBkb24ndCBrbm93IGhvdyB0byBo
YW5kbGUgc29tZXRoaW5nIGFzIHNpbXBsZSBhcyAKPiBoZWFkZXJzIGluIG1vc3QgY2FzZXMuIEF0
IHRoZSB2ZXJ5IGxlYXN0LCBrZXlib2FyZCBoZWFkZXIgbmF2aWdhdGlvbiAKPiB3b3VsZCBiZSBh
IHN0ZXAgaW4gdGhlIHJpZ2h0IGRpcmVjdGlvbi4gQnV0IGFnYWluLCB0aGlzIGlzIG5vdCBteSAK
PiBmYXVsdCwgbm9yIHRoZSBmYXVsdCBvZiBtb2Rlcm4gd2Vic2l0ZSBkZXZlbG9wZXJzLiBUaGlz
IGlzIGEgbGFjayBvZiAKPiBzdGFuZGFyZHMgY29tcGxpYW5jZSBhbW9uZyB0ZXh0LW1vZGUgYnJv
d3NlcnMuIE5vdGhpbmcgbW9yZSwgbm90aGluZyAKPiBsZXNzLgo+Cj4gfkt5bGUKPgo+IF9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCj4gQmxpbnV4LWxpc3Qg
bWFpbGluZyBsaXN0Cj4gQmxpbnV4LWxpc3RAcmVkaGF0LmNvbQo+IGh0dHBzOi8vbGlzdG1hbi5y
ZWRoYXQuY29tL21haWxtYW4vbGlzdGluZm8vYmxpbnV4LWxpc3QKCl9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkJsaW51eC1saXN0IG1haWxpbmcgbGlzdApC
bGludXgtbGlzdEByZWRoYXQuY29tCmh0dHBzOi8vbGlzdG1hbi5yZWRoYXQuY29tL21haWxtYW4v
bGlzdGluZm8vYmxpbnV4LWxpc3Q=

