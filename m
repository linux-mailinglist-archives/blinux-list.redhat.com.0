Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [216.205.24.124])
	by mail.lfdr.de (Postfix) with ESMTP id 6923E3D4C2B
	for <lists+blinux-list@lfdr.de>; Sun, 25 Jul 2021 07:52:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1627192360;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=imBswji6F6yF2b9HNzHtYzl2DsGpV8dwLiwEl+aItFA=;
	b=gzf6cXZkhxejio83HYZBKGiIise/aph71B5pqasY1OUsm7XEMXL/sfSUPxErSjlpvOx/ah
	HsEWZd59eldzR0N1L1i0E1uBAn5adLA9INe5bdrU/KZvzjvPcxXODWg9JSBIykRgLdbXe3
	LZ+vN+ZndS7BCAIPjfuniVbT2/FJILs=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-593-oUD4427-NJSAtEzms0YPzQ-1; Sun, 25 Jul 2021 01:52:39 -0400
X-MC-Unique: oUD4427-NJSAtEzms0YPzQ-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com [10.5.11.13])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id E05A31084F56;
	Sun, 25 Jul 2021 05:52:34 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 2B26460862;
	Sun, 25 Jul 2021 05:52:33 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id DF490180BAB1;
	Sun, 25 Jul 2021 05:52:28 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.rdu2.redhat.com
	[10.11.54.3])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 16P5pnxP009856 for <blinux-list@listman.util.phx.redhat.com>;
	Sun, 25 Jul 2021 01:51:49 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id EC5F71054820; Sun, 25 Jul 2021 05:51:48 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast05.extmail.prod.ext.rdu2.redhat.com [10.11.55.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id E7038112D42A
	for <blinux-list@redhat.com>; Sun, 25 Jul 2021 05:51:46 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[205.139.110.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id F225C800882
	for <blinux-list@redhat.com>; Sun, 25 Jul 2021 05:51:45 +0000 (UTC)
Received: from mail-pl1-f170.google.com (mail-pl1-f170.google.com
	[209.85.214.170]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-360-7lF98jP8PfCSDXE0o1bjEw-1; Sun, 25 Jul 2021 01:51:41 -0400
X-MC-Unique: 7lF98jP8PfCSDXE0o1bjEw-1
Received: by mail-pl1-f170.google.com with SMTP id e5so5944841pld.6
	for <blinux-list@redhat.com>; Sat, 24 Jul 2021 22:51:41 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:mime-version:subject:date:references:to
	:in-reply-to:message-id;
	bh=jyiSKQuH0o6fGn9TIlXKSsHwxwdvu4tHSmDyOe3xIEI=;
	b=RrmKHJHFMtDcaBPApCQnrjhGVyfy/3dfrHl1XJSD6t7tJZL659a/gikAmIFdftCBUp
	CQKFMaXWdl2stFPdZ+guwhYr+Gf/JVRg6mO0ik18HZI6CksQR9B8gyPQRI+8ORFagLJA
	lP+j7RkUtVHvp1vITOMuqeOg8vT7baCXPoU1ZVDNPqJP1tjN/uJfNNpcjMrYaXXFCOpO
	zeOr5/bcqxyI9WZn+9o0rPG5hrxy6cUBUJB+Fm0tsEU2+jtlILfsAZeb5fOysXSPydwT
	p596KcXb/FRqMVmnLcRyhlLHNbbuemqr12zj5TW/aH4BqQRBM71xd3AgcvHAEXU2qqMo
	wWpQ==
X-Gm-Message-State: AOAM530kIyzQt/WRXJ+u0X4ENBNE6hFYLLXO9kPdPMJoJGuOTGpZSb4U
	1AA6Dc7yM4QBmYj0jF84o9sFYvnVXVw=
X-Google-Smtp-Source: ABdhPJxxD5tPz3slBLsZLrp5cL4KIjuu5QvD5yQbcici02FFs0qov4LHGbuJ+ThywllDe1oXMA1z+Q==
X-Received: by 2002:a17:90b:344:: with SMTP id
	fh4mr8279157pjb.85.1627192300564; 
	Sat, 24 Jul 2021 22:51:40 -0700 (PDT)
Received: from [192.168.1.10] (wsip-24-249-254-99.tc.ph.cox.net.
	[24.249.254.99]) by smtp.gmail.com with ESMTPSA id
	c204sm24679632pfb.90.2021.07.24.22.51.39 for <blinux-list@redhat.com>
	(version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
	Sat, 24 Jul 2021 22:51:40 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 13.4 \(3608.120.23.2.7\))
Subject: Re: Flatpak on Slint
Date: Sat, 24 Jul 2021 22:51:36 -0700
References: <c7b551f8-499a-1ecc-f221-387de0801c63@gmail.com>
	<2c34c816-a1e1-7a47-5bca-f35884279da3@slint.fr>
	<58abee7f-4023-5adf-b49e-6c6fb3e20a60@gmail.com>
	<ED6E2EBB-21F6-4576-AF52-059F70F8BAF0@gmail.com>
	<f8512e7f-e58f-305d-25e3-c7ddfe18d2ac@slint.fr>
To: blinux-list@redhat.com
In-Reply-To: <f8512e7f-e58f-305d-25e3-c7ddfe18d2ac@slint.fr>
Message-Id: <B7894155-6F6A-4F9D-A2B9-F2C92CBEE93E@gmail.com>
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

V2VsbCwgdGhhdCBpcyBnb29kIHRvIGtub3cuIFNvbWVvbmUgb3ZlciBhdCBTbGFja3dhcmUgcHJv
YmFibHkgcmFuIGludG8gdGhlIHNhbWUgaXNzdWVzIEkgZGlkIGFuZCBkZWNpZGVkIHRvIGRvIHNv
bWV0aGluZyBhYm91dCBpdC4KCi1FcmljCj5Gcm9tIHRoZSBDZW50cmFsIE9mZmljZXMgb2YgdGhl
IFRlY2hub21hZ2UgR3VpbGQsIGRlc2sgb2YgdGhlIENFTy4KCgo+IE9uIEp1bCAyNCwgMjAyMSwg
YXQgMzo1NSBQTSwgTGludXggZm9yIGJsaW5kIGdlbmVyYWwgZGlzY3Vzc2lvbiA8YmxpbnV4LWxp
c3RAcmVkaGF0LmNvbT4gd3JvdGU6Cj4gCj4gSGVsbG8sCj4gCj4gSSB3aWxsIGFuc3dlciBvbmx5
IHRoZSBsYXN0IHBhcmFncmFwaCBxdW90ZWQgYmVsb3cuCj4gCj4gSW4gU2xpbnQsIGFzIGluIFNs
YWNrd2FyZSBvbiB3aGljaCBpdCBpcyBiYXNlZCwgYSBmdWxsIGJ1aWxkIHRvb2xib3ggaXMKPiBp
bnN0YWxsZWQgYnkgZGVmYXVsdC4KPiAKPiBBbHNvLCBhbGwgcGFja2FnZXMgaW5jbHVkZSB0aGUg
YXNzb2NpYXRlZCAgaGVhZGVyIGZpbGVzIGFuZCBzaGFyZWQgb2JqZWN0cyB0aGF0Cj4gb3RoZXIg
ZGlzdHJpYnV0aW9ucyBwYWNrYWdlIHNlcGFyYXRlbHkuCj4gCj4gVGhpcyBpbmRlZWQgaGVscCBi
dWlsZCBwYWNrYWdlcywgYXMgYXQgbGVhc3QgdGhlIGJ1aWxkIHJlcXVpcmVtZW50IGFyZSBnZW5l
cmFsbHkKPiBtZXQgd2l0aG91dCBhZGRpbmcgcGFja2FnZXMgdG8gdGhlIHN5c3RlbS4KPiAKPiBB
bHNvLCBzb2Z0d2FyZSB1c2VkIHRvIGJ1aWxkIHRoZSBwYWNrYWdlcyBzaGlwcGVkIGFyZSBpbmNs
dWRlZCBieSBkZWZhdWx0LCB3aXRoCj4gdmVyeSBmZXcgZXhjZXB0aW9ucy4KPiAKPiBDaGVlcnMs
Cj4gRGlkaWVyCj4gCj4gTGUgMjQvMDcvMjAyMSDDoCAyMTo0MiwgTGludXggZm9yIGJsaW5kIGdl
bmVyYWwgZGlzY3Vzc2lvbiBhIMOpY3JpdCA6Cj4+IEZvciBhIOKAnFBhaW4gZnJlZSBleHBlcmll
bmNlLCB1c2UgYSBNYWMu4oCdCj4+IE5vdywgYXMgZm9yIHRoZSBmbGF0IHBhY2sgaXNzdWUgaW4g
U0xJTlQsIHlvdSBtaWdodCBuZWVkIHRvIG1ha2Ugc3VyZSB0aGF0IGFsbCBkZXBlbmRlbmNpZXMg
YXJlIGNvbXBsZXRlbHkgaW5zdGFsbGVkIGFuZCBjb25maWd1cmVkLiBBbHNvLCBhbnkgc2Vjb25k
YXJ5IGRlcGVuZGVuY2llcyBub3QgbGlzdGVkIChhbmQgSSBoYXZlIGZvdW5kIHF1aXRlIGEgZmV3
IG92ZXIgdGhlIHllYXJzIGJlY2F1c2UgZGV2IHRlYW1zIG9mdGVuIGZvcmdldCB0aGVzZSBsaXR0
bGUgZGV0YWlscykuIEluIGZhY3QsIEkgaGF2ZSBmb3VuZCB0aGF0IHRoZSBvbmx5IHdheSB0byBj
b3ZlciBhbGwgZXZlbnR1YWxpdGllcyBpcyB0byBzaW1wbHkgaW5zdGFsbCBldmVyeXRoaW5nIGlu
IHRoZSBkZXZlbG9wbWVudCBlbnZpcm9ubWVudC4gQmFzaWNhbGx5LCBncmFiIGFsbCB0aGUgZGV2
ZWwgcGFja2FnZXMgYW5kIHRoZW4gc3RhcnQgYnVpbGRpbmcgdGhlbS4gVGhpcyB3YXksIHlvdSBl
bmQgdXAgd2l0aCBhIGJ1aWxkIGVudmlyb25tZW50IHRoYXQgaXMgYXMgY29tcGxldGUgYXMgeW91
IGNhbiBnZXQgaXQgYW5kIGlzIGFsc28gb3B0aW1pemVkIGZvciB5b3VyIG1hY2hpbmUuIEkgZGlk
IHRoaXMgcXVpdGUgYSBsb3Qgb3ZlciB0aGUgeWVhcnMgc3RhcnRpbmcgd2l0aCBidWlsZGluZyBh
IG5ldyBrZXJuZWwsIGNvbXBpbGluZyBpbiB0aGUgbW9kdWxlcyBmb3IgdGhhdCBoYXJkd2FyZSAo
dGhpcyBtZXRob2Qgd291bGQgYmxvYXQgdGhlIGtlcm5lbCBhIGJpdCwgYnV0IHdvdWxkIHJlbW92
ZSB0aGUgaXNzdWUgb2YgaW5zdGFsbGluZyBvciBsb2FkaW5nIG5ldyBtb2R1bGVzIHdpdGggY2hh
bmdlcyBpbiBoYXJkd2FyZSwgd2hpY2ggZG9lc27igJl0IGhhcHBlbiBpbiBsYXB0b3BzKS4gQnVp
bGRpbmcgZXh0ZXJuYWwgbW9kdWxlcyB0aGF0IGNhbiBiZSBsb2FkZWQgc2xpbXMgZG93biB0aGUg
a2VybmVsIGEgYml0IGFuZCB3b3VsZCB3b3JrIGJlc3QgaW4gYSBkZXNrdG9wIHRvd2VyIHdoZXJl
IGhhcmR3YXJlIGNhbiBiZSBjaGFuZ2VkLiBPbmUgbmljZSB0aGluZyBhYm91dCBidWlsZGluZyBh
cHBzIGxpa2UgdGhpcyBpcyB0aGF0IHlvdSBjYW4gY29tcGlsZSBpbiB0aGUgbGlicmFyaWVzLiBT
dXJlLCB0aGF0IGJsb2F0cyB0aGUgYXBwIGEgYml0LCBidXQgdGhlbiwgeW91IGNvdWxkIGJ1aWxk
IGFuZCB0aGVuIG9uY2UgeW91IGhhdmUgYnVpbHQgYWxsIHlvdSBuZWVkLCB5b3UgY2FuIHJlbW92
ZSB0aGUgbGlicmFyaWVzIGFuZCBvdGhlciBmaWxlcyBpbiB0aGUgZGV2IHRyZWUgYW5kIHN0aWxs
IGhhdmUgZnVsbHkgcnVubmluZyBhcHBzLiBUaGF0IHdpbGwgc2xpbSBkb3duIHRoZSBzeXN0ZW0g
YSBsb3Qgd2hlbiB5b3UgZG9u4oCZdCBuZWVkIHRvbyBrZWVwIHRoZSBidWlsZCBlbnZpcm9ubWVu
dCBhcm91bmQuIEl0IHJlYWxseSBhbGwgZGVwZW5kcyBvbiB3aGF0IHlvdSB3YW50IHRvIGRvLgo+
PiAtRXJpYwo+PiBMZWFkZXIgb2YgdGhlIFRlY2hub21hZ2UgR3VpbGQuCj4+PiBPbiBKdWwgMjQs
IDIwMjEsIGF0IDEwOjQwIEFNLCBMaW51eCBmb3IgYmxpbmQgZ2VuZXJhbCBkaXNjdXNzaW9uIDxi
bGludXgtbGlzdEByZWRoYXQuY29tPiB3cm90ZToKPj4+IAo+Pj4gWWVwLCByZWFkaW5nIGFsbCB0
aGUgZG9jdW1lbnRhdGlvbiB3YXMgYWN0dWFsbHkgYSBnb29kIGlkZWEuCj4+PiAKPj4+IAo+Pj4g
SSBnb3QgY2F3YmlyZCB0byB3b3JrIG9uIFNsaW50LiBZZWFoLCBpdCdzIGEgcGFpbiwgYnV0IHdo
YXQgdGhlIGhlY2suCj4+PiAKPj4+IAo+Pj4gRm9yIGEgcGFpbi1mcmVlIGNvbXB1dGluZyBleHBl
cmllbmNlLCB1c2UgYSBNYWMuCj4+PiAKPj4+IAo+Pj4gV2FybSByZWdhcmRzLAo+Pj4gCj4+PiBC
cmFuZHQgU3RlZW5rYW1wCj4+PiAKPj4+IFNlbnQgdXNpbmcgVGh1bmRlcmJpcmQgZnJvbSBTbGlu
dAo+Pj4gCj4+PiBPbiA3LzI0LzIxIDQ6NTMgUE0sIExpbnV4IGZvciBibGluZCBnZW5lcmFsIGRp
c2N1c3Npb24gd3JvdGU6Cj4+Pj4gSGkgQnJhbmR0LAo+Pj4+IAo+Pj4+IEkgbmV2ZXIgdXNlZCBm
bGF0cGFrIG9yIHR3aXR0ZXIsIGhvd2V2ZXIuLi4KPj4+PiAKPj4+PiBtYXliZSBhIHBvc3QgaW5z
dGFsbGF0aW9uIGNvbmZpZ3VyYXRpb24gaXMgbmVlZGVkLCBhcyBpbmRpY2F0ZWQgaW46Cj4+Pj4g
aHR0cHM6Ly9zbGFja2J1aWxkcy5vcmcvc2xhY2tidWlsZHMvMTQuMi9kZXNrdG9wL2ZsYXRwYWsv
UkVBRE1FCj4+Pj4gCj4+Pj4gSWYgdGhpcyBkb2Vzbid0IGhlbHAsIHBsZWFzZSBwb3N0IHRoZSBl
eGFjdCBzdGVwcyB5b3UgdG9vayB0byBpbnN0YWxsIGZsYXRwYWsKPj4+PiB0aGVuIGNhd2JpcmQg
YW5kIHN0YXJ0IGNhd2JpcmQuCj4+Pj4gCj4+Pj4gVGhlbiBJJ2xsIHRyeSB0byByZXByb2R1Y2Vz
IGxhdGVyIHRvZGF5Lgo+Pj4+IAo+Pj4+IENoZWVycywKPj4+PiAKPj4+PiBEaWRpZXIKPj4+PiAt
LSAKPj4+PiBEaWRpZXIgU3BhaWVyCj4+Pj4gCj4+Pj4gCj4+Pj4gTGUgMjQvMDcvMjAyMSDDoCAx
NjoyNywgTGludXggZm9yIGJsaW5kIGdlbmVyYWwgZGlzY3Vzc2lvbiBhIMOpY3JpdCA6Cj4+Pj4+
IEhpIGFsbCwKPj4+Pj4gCj4+Pj4+IAo+Pj4+PiBJIGluc3RhbGxlZCBmbGF0cGFrIG9uIG15IFNs
aW50IGluc3RhbGxhdGlvbiwgZm9yIHRoZSBzaW1wbGUgcmVhc29uLCB0aGVyZSBhcmUgbm8gdXAg
dG8gZGF0ZSBUd2l0dGVyIGNsaWVudHMgdGhhdCBJIGNhbiBmaW5kLgo+Pj4+PiAKPj4+Pj4gCj4+
Pj4+IEkgbG9va2VkIGF0IHRoZSBTbGFja2J1aWxkcywgYnV0IG5vdGhpbmcuIENhd2JpcmQsIG15
IGZhdm9yaXRlIExpbnV4IGNsaWVudCwgZm9yIG5vdywgaXMgYXZhaWxhYmxlIGFzIGEgZmxhdHBh
aywgYnV0IHdoZW4gSSB0cnkgYW5kIHJ1biBpdCwgSSBnZXQgYSBicm9rZW4gUGlwZSBlcnJvci4g
Q2FuIGFueW9uZSBoZWxwIHdpdGggdGhpcyBpc3N1ZT8KPj4+Pj4gCj4+Pj4gCj4+Pj4gCj4+Pj4g
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KPj4+PiBCbGlu
dXgtbGlzdCBtYWlsaW5nIGxpc3QKPj4+PiBCbGludXgtbGlzdEByZWRoYXQuY29tCj4+Pj4gaHR0
cHM6Ly9saXN0bWFuLnJlZGhhdC5jb20vbWFpbG1hbi9saXN0aW5mby9ibGludXgtbGlzdAo+Pj4g
Cj4+PiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+Pj4g
QmxpbnV4LWxpc3QgbWFpbGluZyBsaXN0Cj4+PiBCbGludXgtbGlzdEByZWRoYXQuY29tCj4+PiBo
dHRwczovL2xpc3RtYW4ucmVkaGF0LmNvbS9tYWlsbWFuL2xpc3RpbmZvL2JsaW51eC1saXN0Cj4+
IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCj4+IEJsaW51
eC1saXN0IG1haWxpbmcgbGlzdAo+PiBCbGludXgtbGlzdEByZWRoYXQuY29tIDxtYWlsdG86Qmxp
bnV4LWxpc3RAcmVkaGF0LmNvbT4KPj4gaHR0cHM6Ly9saXN0bWFuLnJlZGhhdC5jb20vbWFpbG1h
bi9saXN0aW5mby9ibGludXgtbGlzdCA8aHR0cHM6Ly9saXN0bWFuLnJlZGhhdC5jb20vbWFpbG1h
bi9saXN0aW5mby9ibGludXgtbGlzdD4KPiAKPiBfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwo+IEJsaW51eC1saXN0IG1haWxpbmcgbGlzdAo+IEJsaW51eC1s
aXN0QHJlZGhhdC5jb20gPG1haWx0bzpCbGludXgtbGlzdEByZWRoYXQuY29tPgo+IGh0dHBzOi8v
bGlzdG1hbi5yZWRoYXQuY29tL21haWxtYW4vbGlzdGluZm8vYmxpbnV4LWxpc3QgPGh0dHBzOi8v
bGlzdG1hbi5yZWRoYXQuY29tL21haWxtYW4vbGlzdGluZm8vYmxpbnV4LWxpc3Q+Cl9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkJsaW51eC1saXN0IG1haWxp
bmcgbGlzdApCbGludXgtbGlzdEByZWRoYXQuY29tCmh0dHBzOi8vbGlzdG1hbi5yZWRoYXQuY29t
L21haWxtYW4vbGlzdGluZm8vYmxpbnV4LWxpc3Q=

