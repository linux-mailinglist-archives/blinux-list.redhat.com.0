Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [216.205.24.124])
	by mail.lfdr.de (Postfix) with ESMTP id 7C6073FBD7F
	for <lists+blinux-list@lfdr.de>; Mon, 30 Aug 2021 22:41:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1630356092;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=IlHx6gkoMw5imbLzXtwaJAyAoZMnX2QTtJEaZQmcGuk=;
	b=A3TqFI/YcxsecSN8cqAYp7k/9ZNE33hHgEauKM00wtgY4LDV17Ip6mYAoNYJqs066a6Lbc
	iemmCs1rXptEWNnHDRAMVkmuqOeBVjBgTeKPGx0RBO7bADcDN7XwTi7TjcANCs6zQhXQSB
	7gSTtVn6XOM1fyHYcADntQd+dSSTwBw=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-413-qyXezNobOmGJdYN36Z9xWQ-1; Mon, 30 Aug 2021 16:41:31 -0400
X-MC-Unique: qyXezNobOmGJdYN36Z9xWQ-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com [10.5.11.22])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 5B9A987D541;
	Mon, 30 Aug 2021 20:41:27 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 7A82E10074FD;
	Mon, 30 Aug 2021 20:41:26 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 4EBAF4BB7C;
	Mon, 30 Aug 2021 20:41:23 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.rdu2.redhat.com
	[10.11.54.6])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 17UKZbYn004648 for <blinux-list@listman.util.phx.redhat.com>;
	Mon, 30 Aug 2021 16:35:38 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id C01A62144B20; Mon, 30 Aug 2021 20:35:37 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast03.extmail.prod.ext.rdu2.redhat.com [10.11.55.19])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id BA01F217B43E
	for <blinux-list@redhat.com>; Mon, 30 Aug 2021 20:35:35 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[205.139.110.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id E3913811E78
	for <blinux-list@redhat.com>; Mon, 30 Aug 2021 20:35:34 +0000 (UTC)
Received: from darkstar.slint.fr (darkstar.slint.fr [172.105.89.79]) by
	relay.mimecast.com with ESMTP id us-mta-556-30IZM1uVP_mxbZjPELIuBg-1;
	Mon, 30 Aug 2021 16:35:32 -0400
X-MC-Unique: 30IZM1uVP_mxbZjPELIuBg-1
Received: from [192.168.1.25] (men75-h08-176-172-247-100.dsl.sta.abo.bbox.fr
	[176.172.247.100])
	by darkstar.slint.fr (Postfix) with ESMTPSA id 27BE9A376A;
	Mon, 30 Aug 2021 20:35:18 +0200 (CEST)
Message-ID: <43ae5a2f-66a6-cec3-9b5b-b4f499bc9231@slint.fr>
Date: Mon, 30 Aug 2021 22:35:30 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
	Thunderbird/91.0.3
Subject: Re: Help, I need a Windows VM for my work
To: blinux-list@redhat.com, Janina Sajka <janina@rednote.net>
References: <3d854105-bb2b-5501-235f-eb05dc13f1f4@gmail.com>
	<AD585221-10D6-4BCE-A68D-3220079018C1@gmail.com>
	<YRJyWYpNsgGZW1De@abilitiessoft>
	<9cb596b4-06dc-945d-972e-65e2a42630d5@slint.fr>
	<YSyTs/rmwwDGgMNH@rednote.net>
In-Reply-To: <YSyTs/rmwwDGgMNH@rednote.net>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.6
X-MIME-Autoconverted: from quoted-printable to 8bit by
	lists01.pubmisc.prod.ext.phx2.redhat.com id 17UKZbYn004648
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
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"

SGkgSmFuaW5hLAoKVGhlcmUgaXMgbm8gZXhwaXJhdGlvbiBkYXRlIGZvciB0aGlzIG9mZmVyIDxz
bWlsZT4uCgpBYm91dCB0aGUgY29uZmlndXJhdGlvbiBvcHRpb25zOiBmZWVsIGZyZWUgdG8gc2Vu
ZCBtZSB5b3VyIHNwZWNzLCAKaW5jbHVkaW5nIHRoZQpvcmlnaW4gYW5kIGZpbmFsIGRlc3RpbmF0
aW9uIG9mIGVhY2ggc291bmQgc3RyZWFtLCBhbmQgeW91ciBjdXJyZW50IGNvbmZpZwpmaWxlcyBz
byBJIGNhbiBpbWFnaW5lIGhvdyB5b3UgY291bGQgc2V0IHRoaXMgdXAgaW4gU2xpbnQuCgpJIGp1
c3QgdXBkYXRlZCBwYXJ0IG9mIG91ciBhMTF5IHN0YWNrIGFzIHlvdSBjYW4gc2VlIG9uIHRvcCBv
ZiB0aGlzCkNoYW5nZUxvZzogaHR0cHM6Ly9zbGFja3dhcmUudWsvc2xpbnQveDg2XzY0L3NsaW50
LTE0LjIuMS9DaGFuZ2VMb2cudHh0CgpJIHdpbGwgdXBkYXRlIHNwZWVjaC1kaXNwYXRjaGVyIGFz
IHNvb24gYXMgU2FtdWVsIHRhZ3MgMTEuMCBhbmQgd2lsbCBhbHNvCnVwZGF0ZSB0aGUgYXVkaW8g
YXBwcyBpbiB0aGUgY29taW5nIGRheXMuCgpUaGUgSGFuZEJvb2sgYWxzbyBnb3QgYSBmZXcgdXBk
YXRlczogaHR0cHM6Ly9zbGludC5mci9kb2MvSGFuZEJvb2suaHRtbAoKSSBoYXZlIGJlZW4gYSB0
ZWFjaGVyIGZvciB5b3VuZyBraWRzLCBhbGFzIGEgYmFkIG9uZS4gVGhpcyBiZWdhbiBhbG1vc3Qg
NTEKeWVhcnMgYWdvIGFuZCBsYXN0ZWQgb25seSAzIHllYXJzLCBmb3J0dW5hdGVseSBmb3IgdGhl
IHN0dWRlbnRzLi4uCgpCZXN0LApEaWRpZXIKCkxlIDMwLzA4LzIwMjEgw6AgMTA6MTUsIExpbnV4
IGZvciBibGluZCBnZW5lcmFsIGRpc2N1c3Npb24gYSDDqWNyaXTCoDoKPiBZZWFoLCBJIHdvdWxk
IG5ldmVyIGNvbnNpZGVyIEpvaG4gYSBmb29sIGVpdGhlci4gV2UgbWV0IG9uY2UgYXQgYSBDU1VO
LAo+IHNvIEkgcGVyc29uYWxseSBrbm93IGJldHRlci4KPiAKPiBCdXQsIERpZGllciwgSSBzd2Vh
ciB5b3UgZG9uJ3QgbG9vayA3MiBpbiB5b3VyIHBob3RvISA8c21pbGU+Cj4gCj4gQW5kLCBJIGhv
cGUgdGhhdCBzcGVjaWFsIG9mZmVyIGZvciBXM0MgQ2hhaXJzIGlzIHN0aWxsIG9wZW4sIGFzIG15
IG9sZAo+IE1hY2Jvb2sgQWlyIGlzIGNvbWluZyB0byBpdHMgZW5kIG9mIGxpZmUgd2l0aCBBcHBs
ZS4KPiAKPiBXaGF0J3MgbXkgd29yc3QgZmVhciBvZiB5ZXQgYW5vdGhlciBMaW51eCBkaXN0cm8/
IFlldCBhbm90aGVyIHNldCBvZgo+IGNvbmZpZ3VyYXRpb24gb3B0aW9ucyB0byBncmFwcGxlIHdp
dGguCj4gCj4gV2hhdCdzIHRoZSBtb3N0IGVudGljaW5nIGFzcGVjdD8gQWxsIHRoYXQgZXhjZWxs
ZW50IHN1cHBvcnQgZnJvbQo+IFByb2Zlc3NvciBEaWRpZXIuIFRoZXNlIHlvdW5nc3RlcnMga25v
dyB3aGF0IHRoZXkncmUgZG9pbmcgdGhlc2UgZGF5cyEKPiA8YmlnIGdyaW4+Cj4gCj4gSmFuaW5h
Cj4gCj4gTGludXggZm9yIGJsaW5kIGdlbmVyYWwgZGlzY3Vzc2lvbiB3cml0ZXM6Cj4+IEhpIEpv
aG4sCj4+Cj4+IEkgZG9uJ3QgdGhpbmsgYW55b25lIGhlcmUgd2lsbCBtYXJrIHlvdSBhcyBhIGZv
b2wsIGNlcnRhaW5seSBub3QgbWUuCj4+Cj4+IEhhdmluZyBvbmUgc3lzdGVtIHBhciBtYWNoaW5l
IGlzIGNlcnRhaW5seSBhIHRyb3VibGUgZnJlZSBzb2x1dGlvbi4KPj4KPj4gQW5vdGhlciBvbmUg
aXMgdG8gaGF2ZSBlYWNoIHN5c3RlbSBvbiBhIHNlcGFyYXRlIGRyaXZlIChvbmUgYmVpbmcgcG9z
c2libHkKPj4gcmVtb3ZhYmxlKQo+Pgo+PiBPciBkdWFsIGJvb3QsIGlmIHRoZXJlIGlzIGVub3Vn
aCBzcGFjZSBvbiB0aGUgZHJpdmUgYW5kIHRoZSBtYWNoaW5lIGJvb3RzIGluCj4+IEVGSSBtb2Rl
Lgo+Pgo+PiBJIHRha2UgdGhpcyBvY2Nhc2lvbiB0byB0ZWxsIHlvdSB0aGF0IFNsaW50IHRoYXQg
SSBtYWludGFpbiBpcyBmcmVlIGZvcgo+PiBwZW9wbGUgbWVldGluZyBhbGwgdGhlIGNvbmRpdGlv
bnMgbGlzdGVkIGJlbG93Ogo+PiAxLiBTbWFydAo+PiAyLiBMaW51eCBkZXZlbG9wZXIKPj4gMy4g
QmxpbmQKPj4gNC4gRGVhZgo+PiA1LiBBdCBsZWFzdCAyTyB5ZWFycyBvbGRlciB0aGF0IHRoZSBT
bGludCBtYWludGFpbmVyLgo+PiBIaW50OiBJIGFtIDcyIHllYXJzIG9sZAo+Pgo+PiBTbywgSSdk
IGJlIGdsYWQgdGhhdCB5b3UgdHJ5IFNsaW50IGFuZCBnaXZlIHVzIGEgZmVlZGJhY2suIDxzbWls
ZT4KPj4KPj4gQWxsIHlvdSBuZWVkIHRvIGtub3cgc2hvdWxkIGJlIGluIG91ciBoYW5kYm9vazoK
Pj4gaHR0cHM6Ly9zbGludC5mci9kb2MvSGFuZEJvb2suaHRtbAo+Pgo+PiBQbGVhc2UgbGV0IHVz
IGtub3cgYWxzbyBob3cgdG8gZW5oYW5jZSBTbGludCBhbmQgaXRzIGRvY3VtZW50YXRpb24uCj4+
Cj4+IFdhcm0gcmVnYXJkcywKPj4gRGlkaWVyCj4+IC0tCj4+IERpZGllciBTcGFpZXIKPj4gU2xp
bnQgbWFpbnRhaW5lcgo+Pgo+Pgo+PiBMZSAxMC8wOC8yMDIxIMOgIDE0OjM0LCBMaW51eCBmb3Ig
YmxpbmQgZ2VuZXJhbCBkaXNjdXNzaW9uIGEgw6ljcml0wqA6Cj4+PiBXZWxsLCB0aGlzIHdpbGwg
cHJvYmFibHkgbWFyayBtZSBhcyBhIGZvb2wsIGJ1dCBJIGp1c3QgdXNlIGEgTGludXggbWFjaGlu
ZSBhbmQgYSBXaW5kb3dzIG1hY2hpbmUgY29ubmVjdGVkIGJ5IFNhbWJhLgo+Pj4gQ29tcHV0ZXJz
IGFyZSByZWxhdGl2ZWx5IGluZXhlbnNpdmUgbm93LCBzbyB3aHkgYm90aGVyIHdpdGggdmlydHVh
bCBtYWNoaW5lcz8KPj4+Cj4+PiBKb2huCj4+Cj4+Cj4+IF9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fCj4+IEJsaW51eC1saXN0IG1haWxpbmcgbGlzdAo+PiBC
bGludXgtbGlzdEByZWRoYXQuY29tCj4+IGh0dHBzOi8vbGlzdG1hbi5yZWRoYXQuY29tL21haWxt
YW4vbGlzdGluZm8vYmxpbnV4LWxpc3QKPiAKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwpCbGludXgtbGlzdCBtYWlsaW5nIGxpc3QKQmxpbnV4LWxpc3RA
cmVkaGF0LmNvbQpodHRwczovL2xpc3RtYW4ucmVkaGF0LmNvbS9tYWlsbWFuL2xpc3RpbmZvL2Js
aW51eC1saXN0

