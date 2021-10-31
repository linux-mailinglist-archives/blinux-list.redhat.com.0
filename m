Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 08BC54410C2
	for <lists+blinux-list@lfdr.de>; Sun, 31 Oct 2021 21:15:03 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1635711303;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=whoqvmodXDEMF/ZBh4CVCjiJDkH6KyvevlJeRfsudVI=;
	b=dvbIWXQ2ev+W5d/U91EeWPML3nXUR0iydvj6Ugr1TELTGjDccfjF7mPI+JWluj8rfAnlZr
	r/bFTei1UXH2sh+OKIMP9U5EQUE11L6Xvt9LlRjw65754gpfOvdHckC5vkmtosdxQHA3fn
	4xG2YL2zAlu/gzKUT0YxN2/5ittZ1qE=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-208-Y0OtJycqPMK3vJsrlIQE4A-1; Sun, 31 Oct 2021 16:14:59 -0400
X-MC-Unique: Y0OtJycqPMK3vJsrlIQE4A-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com [10.5.11.23])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 69A6A1006AA5;
	Sun, 31 Oct 2021 20:14:55 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id A112419C79;
	Sun, 31 Oct 2021 20:14:54 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 196661800FE4;
	Sun, 31 Oct 2021 20:14:46 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.rdu2.redhat.com
	[10.11.54.6])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 19VKEgMi028875 for <blinux-list@listman.util.phx.redhat.com>;
	Sun, 31 Oct 2021 16:14:42 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 394E32156713; Sun, 31 Oct 2021 20:14:42 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast05.extmail.prod.ext.rdu2.redhat.com [10.11.55.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 335302156712
	for <blinux-list@redhat.com>; Sun, 31 Oct 2021 20:14:39 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[207.211.31.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 5B5D18001EA
	for <blinux-list@redhat.com>; Sun, 31 Oct 2021 20:14:39 +0000 (UTC)
Received: from mail-ot1-f50.google.com (mail-ot1-f50.google.com
	[209.85.210.50]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-441-Q13fabVLPcqV_Rcl_-ZOrw-1; Sun, 31 Oct 2021 16:14:37 -0400
X-MC-Unique: Q13fabVLPcqV_Rcl_-ZOrw-1
Received: by mail-ot1-f50.google.com with SMTP id
	107-20020a9d0a74000000b00553bfb53348so22516974otg.0
	for <blinux-list@redhat.com>; Sun, 31 Oct 2021 13:14:37 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20210112;
	h=x-gm-message-state:from:content-transfer-encoding:mime-version
	:subject:date:references:to:in-reply-to:message-id;
	bh=pgUVLiB7z5B65DcAXdNtVlhenWV72vevjaKmP7yrYgg=;
	b=IoSxW0sRLwxRsAWdbuLSelH6L6DnLKgMW9jbvbpcn/wSh61WJdc/hw9Pk3LvMWmggO
	OYqsG6vOT75JvtDVivXZGuJStJSuVe5IUnyxG/E5uS/cX8t1MiM/UjJh77ux5S3iDxjs
	AgpwwYhf1ytDOwmFJRdb02zBaZi8kuiK0C3zGbmPNVP9umSb7IcoYzX8wMYVIykaGlbt
	e2+4W4svM6eR1vR2orVKmzZfzEnJeSXKzAT/MpP/LCOO9wGIl7KfTBlMKfx0Ft7O0+JY
	yXpVANLYalzOQxVJuXFNRgLJPrNhUhCgaF+LnTUACa0nO9qklRkvIgr6miqOtLBTxV2V
	ufBw==
X-Gm-Message-State: AOAM5322CghTX0oPNHwGQSKJfqa2yHKFJn3cIaocz3+YJo6iYX5sp3NZ
	5nkLCXq2my/u1vTYuiNi/z8L/HOIZM6YPA==
X-Google-Smtp-Source: ABdhPJwTqXVOLshod7LZ/kp94A3RCUJsqWS/4GfFWvySrLqaHb9a5503RkEF0UaC6MnJrQUpyN1T3w==
X-Received: by 2002:a9d:8f2:: with SMTP id 105mr17816514otf.95.1635711276537; 
	Sun, 31 Oct 2021 13:14:36 -0700 (PDT)
Received: from smtpclient.apple ([2600:1702:20f0:4420:35bb:c0d9:45d:6808])
	by smtp.gmail.com with ESMTPSA id
	c18sm1865248otr.32.2021.10.31.13.14.35 for <blinux-list@redhat.com>
	(version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
	Sun, 31 Oct 2021 13:14:36 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 15.0 \(3693.20.0.1.32\))
Subject: Re: have any of you mannaged to successfully install linux alongside
	with windows?
Date: Sun, 31 Oct 2021 16:14:35 -0400
References: <2ecf58b4-4c80-0018-4c80-93d5dcf4d476@slint.fr>
	<8182AB42-45DC-4800-8F7F-AA4D5D5CEB7F@gmail.com>
	<c1d01788-8258-39c2-e861-de8e4e8a1113@slint.fr>
To: Blind Linux <blinux-list@redhat.com>
In-Reply-To: <c1d01788-8258-39c2-e861-de8e4e8a1113@slint.fr>
Message-Id: <49183B1B-18E5-4816-ADE1-FD439661F4F4@gmail.com>
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
	lists01.pubmisc.prod.ext.phx2.redhat.com id 19VKEgMi028875
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SGksCgpJIGhhdmUgYW4gZXh0ZXJuYWwgSEQgIHdoaWNoIGhhcyBmZWRvcmEgbGl2aW5nIG9uIGl0
IHF1aXRlIHdlbGwgSSAgaGF2ZSBpbnN0YWxsZWQgdWJ1bnR1IGFsb25nc2lkZSB3aW5kb3dzIHNl
dmVyYWwgdGltZXMgYW5kIGF0IHRoZSBwcm9tcHQgd2hlcmUgdWJ1bnR1IHNlYXJjaGVzIGZvciBv
dGhlciBzeXN0ZW1zIG9uIHlvdXIgZGlzaywgb25lIG9mIHRoZSBvcHRpb25zIGlzIGluc3RhbGwg
YWxvbmdzaWRlIHdpbmRvd3MgaWYgdGhpcyBpcyBzZWxlY3RlZCwgdWJ1bnR1IHdpbGwgZG8gdGhl
IHJlc2l6aW5nIGZvciB5b3UuICBJZiB5b3Ugd2FudCwgeW91IGNvdWxkIGRvIGEgYmFja3VwIGZp
cnN0IHRvIGJlIHN1cmUgdGhhdCBldmVyeXRoaW5nIGlzIHNhdmVkIGZpcnN0IGJ1dCBhbGwgc2hv
dWxkIGJlIGdvb2QuICBJZiB1bnN1cmUsIHlvdSBjb3VsZCBqdXN0IGluc3RhbGwgdG8gYSBleHRl
cm5hbCBkcml2ZSBhcyBJIGRpZCBhbmQgZXZlcnl0aGluZyBzaG91bGQgd29yayB0aGF0IHdheS4K
Ck1hdHRoZXcKCgoKPiBPbiBPY3QgMzEsIDIwMjEsIGF0IDM6NTAgUE0sIExpbnV4IGZvciBibGlu
ZCBnZW5lcmFsIGRpc2N1c3Npb24gPGJsaW51eC1saXN0QHJlZGhhdC5jb20+IHdyb3RlOgo+IAo+
IFlvdSBjYW4gaW5zdGFsbCBpbiBhIDMyIEdCIG9yIHByZWZlcmFibHkgaW4gYSA2NCBHQiBVU0Ig
c3RpY2sgYnV0IGl0IHdpbGwgYmUKPiByYXRoZXIgc2xvdy4KPiAKPiBCZXR0ZXIsIGlmIHRoZSBj
b21wdXRlciBoYXMgYW4gU0QgY2FyZCBzbG90IGFuZCBpcyBhYmxlIHRvIGJvb3QgZnJvbSBhIFNE
IGNhcmQKPiAobm90IGFsbCBkbyksIHVzZSBhIGdvb2QgcXVhbGl0eSBTRCBjYXJkLgo+IAo+IElu
IGFueSBjYXNlIGFuIGV4dGVybmFsIFNTRCBpcyB3YXkgZmFzdGVyLgo+IAo+IENoZWVycywKPiBE
aWRpZXIKPiAKPiBMZSAzMS8xMC8yMDIxIMOgIDIwOjI4LCBMaW51eCBmb3IgYmxpbmQgZ2VuZXJh
bCBkaXNjdXNzaW9uIGEgw6ljcml0IDoKPj4gSSBhbSBnb2luZyB0aHJvdWdoIHRoZSBoYW5kYm9v
ayBhbmQgdHJ5aW5nIHRvIHVuZGVyc3RhbmQgdGhlIHZhcmlvdXMgY29uY2VwdHMuIEkgaGF2ZSBu
b3Qgc2VlbiB0aGUgaW5zdGFsbGF0aW9uIGluIGEgdmlydHVhbCBib3ggeWV0LiBJIGFtIHdvbmRl
cmluZyBpZiBJIGNhbiBpbnN0YWxsIGl0IG9uIGEgMzIgb3IgNjQgR0IgVVNCIHN0aWNrLCBvciBk
b2VzIGl0IGhhdmUgdG8gYmUgYW4gZXh0ZXJuYWwgU1NEPwo+PiBSZWdhcmRzLAo+PiBJYnJhaGlt
Cj4+IFNlbnQgZnJvbSBteSBpUGhvbmUKPj4+IE9uIE9jdCAzMSwgMjAyMSwgYXQgMjo0MyBQTSwg
TGludXggZm9yIGJsaW5kIGdlbmVyYWwgZGlzY3Vzc2lvbiA8YmxpbnV4LWxpc3RAcmVkaGF0LmNv
bT4gd3JvdGU6Cj4+PiDvu79IaSBJYnJhaGltLgo+Pj4gCj4+PiBObywgdGhlcmUgaXMgbm8gbGl2
ZSBpbnN0YWxsIGZvciBTbGludC4KPj4+IAo+Pj4gSG93ZXZlcjoKPj4+IAo+Pj4gMSkgQmVmb3Jl
IHlvdSBpbnN0YWxsIGl0IG9uIHlvdXIgaGFyZCBkaXNrLCB5b3UgY2FuIGluc3RhbGwgYW5kIHJ1
biBpdCBpbiBhCj4+PiBWaXJ0dWFsQm94IHZpcnR1YWwgbWFjaGluZS4gVGhlbiwgY2hvb3NlIHRo
ZSBpbnRlbCBoZCBhdWRpbyBjb250cm9sbGVyIHJpZ2h0Cj4+PiBhZnRlciB0aGUgdmlydHVhbCBt
YWNoaW5lIGNyZWF0aW9uLiB0byBwcmV2ZW50IGxvc3Mgb2Ygc3BlZWNoIGR1cmluZwo+Pj4gaW5z
dGFsbGF0aW9uLgo+Pj4gCj4+PiAyKSBJZiB5b3UgY2FuIGFmZm9yZCBpdCB5b3UgY2FuIGluc3Rh
bGwgU2xpbnQgaW4gYSBkZWRpY2F0ZWQgaGFyZCBkcml2ZSBvciBTU0QKPj4+IHdoaWNoIGNhbiBi
ZSBhbiBhbiBpbnRlcm5hbCBzZWNvbmQgZHJpdmUgb3IgYW4gZXh0ZXJuYWwgZHJpdmUgVVNCIGNv
bm5lY3RlZC4KPj4+IAo+Pj4gMykgWW91IGNhbiBzYWZlbHkgc2hhcmUgYSBkcml2ZSBiZXR3ZWVu
IFdpbmRvd3MgYW5kIFNsaW50LCBpZiBXaW5kb3dzIGJvb3RzIGluCj4+PiBVRUZJIG1vZGUuCj4+
PiAKPj4+IDQpIEluIGFueSBjYXNlIHRoZSBpbnN0YWxsZXIgd2lsbCBwcmVzZW50cyB5b3UgYWxs
IHBvc3NpYmlsaXRpZXMgZm9yCj4+PiBpbnN0YWxsYXRpb24gYW5kIHdpbGwgbGV0IHlvdSByZXZp
ZXcgYWxsIGluc3RhbGxhdGlvbiBvcHRpb25zIGJlZm9yZSB3cml0aW5nCj4+PiBhbnl0aGluZyBv
biBhIGhhcmQgZGlzay4gSWYgeW91IGNoYW5nZSB5b3VyIG1pbmQgeW91IHdpbGwgYmUgYWJsZSB0
byBjaGFuZ2UKPj4+IGFueSBvcHRpb24uIElmIHlvdSBkZWNpZGUgdG8gaW5zdGFsbCBsYXRlciBv
ciBub3QgYXQgYWxsLCBhZnRlciBhIHJlYm9vdCBXaW5kb3dzCj4+PiB3aWxsIHN0YXJ0IGFzIHVz
dWFsLgo+Pj4gCj4+PiBBZnRlciBpbnN0YWxsYXRpb24geW91IHdpbGwgYmUgYWJsZSB0byBjaG9v
c2Ugd2hpY2ggc3lzdGVtIHRvIHN0YXJ0IGF0IGJvb3QgdXAuCj4+PiBXaGVuIHlvdSB3aWxsIGhl
YXIgYSBzb3VuZCB0ZWxsaW5nIHlvdSB0aGF0IHRoZSBtYWNoaW5lIGlzIHJlYWR5IHRvIGJvb3Qs
IGp1c3QKPj4+IHByZXNzIEVudGVyIHRvIHN0YXJ0IFNsaW50IG9yIHByZXNzIGFycm93IGRvd24g
dGhlbiBFbnRlciB0byBzdGFydCBXaW5kb3dzLgo+Pj4gCj4+PiBGZWxsIGZyZWUgcmVxdWlyZSBt
b3JlIGd1aWRhbmNlIGluIG9uZSBvZiB0aGUgc3VwcG9ydCBjaGFubmVscyBsaXN0ZWQgaW4gdGhl
Cj4+PiBIYW5kQm9vay4KPj4+IAo+Pj4gSG9wZSB0aGlzIGhlbHBzCj4+PiBEaWRpZXIKPj4+IC0t
Cj4+PiBEaWRpZXIgU3BhaWVyCj4+PiBTbGludCBtYWludGFpbmVyCj4+PiBkaWRpZXIgYXQgc2xp
bnQgZG90IGZyCj4+PiBMZSAzMS8xMC8yMDIxIMOgIDE2OjQxLCBMaW51eCBmb3IgYmxpbmQgZ2Vu
ZXJhbCBkaXNjdXNzaW9uIGEgw6ljcml0IDoKPj4+PiBUaGFua3MgYSBtaWxsaW9uIERpZGllciwK
Pj4+PiBUaGlzIGlzIGEgZ3JlYXQgaGFuZGJvb2suIE9uZSBvZiB0aGUgdGhpbmdzIHdoaWNoIGRp
c2NvdXJhZ2VkIG1lIGZyb20gYWRvcHRpbmcgbGludXggaW4gdGhlIHBhc3Qgd2FzIHRoZSBsYWNr
IG9mIGVhc3kgdG8gZm9sbG93IGRvY3VtZW50YXRpb25zLiBFdmVyeXRpbWUgSSB0cmllZCwgSSBm
b3VuZCBteXNlbGYgYnJvd3NpbmcgaW4gaGlnaGx5IHRlY2huaWNhbCBkb2N1bWVudHMgdGhhdCBz
b3VuZGVkIGxpa2UgYSBmb3JlaWduIGxhbmd1YWdlIHRvIG1lLiBUaGlzIGhhbmRib29rIHNlZW1z
IHRvIGF2b2lkIHRoaXMgcHJvYmxlbS4KPj4+PiBJIHdpbGwgY2VydGFpbmx5IHRyeSBzbGludCwg
aWYgaXQgY2FuIGJlIHVzZWQgYXMgYSBsaXZlIGluc3RhbGwgd2l0aG91dCBoYXZpbmcgdG8gcGh5
c2ljYWxseSBpbnN0YWxsIG9uIG15IGhhcmQgZGlzYy4gSSB3aWxsIGFsc28gYnJvd3NlIHRoaXMg
aGFuZGJvb2sgdG8gbGVhcm4gbW9yZSBhYm91dCBzbGludC4KPj4+PiBUaGFua3MgZm9yIHRoaXMu
IEkgd2lsbCBjZXJ0YWlubHkgbmVlZCB5b3VyIGhlbHAgaWYgSSBpbnN0YWxsIGl0IG9uIG15IGhh
cmQgZGlzYy4gV2hhdCBJIHdhbnQgaWRlYWxseSBpcyB0aGUgYWJpbGl0eSB0byBoYXZlIGJvdGgg
bGludXggYW5kIHdpbmRvd3MgcnVubmluZyBvbiB0aGUgc2FtZSBtYWNoaW5lLCBhbmQgSSBjaG9v
c2Ugd2hpY2ggb25lIHRvIHN0YXJ0IGF0IGJvb3R1cC4KPj4+PiBSZWdhcmRzLAo+Pj4+IElicmFo
aW0KPj4+PiBPbiAxMC8zMS8yMSA0OjA2IEFNLCBMaW51eCBmb3IgYmxpbmQgZ2VuZXJhbCBkaXNj
dXNzaW9uIHdyb3RlOgo+Pj4+PiBIZWxsbyBJYnJhaGltLAo+Pj4+PiB0aGlzIGlzIGVhc2lseSBk
b25lIHdpdGggU2xpbnQsIGlmIFdpbmRvd3MgYm9vdHMgaW4gRUZJIG1vZGU6Cj4+Pj4+IGh0dHBz
Oi8vc2xpbnQuZnIvZG9jL0hhbmRCb29rLmh0bWwKPj4+Pj4gQ2hlZXJzLAo+Pj4+PiBEaWRpZXIK
Pj4+Pj4gLS0KPj4+Pj4gRGlkaWVyIFNwYWllcgo+Pj4+PiBTbGludCBtYWludGFpbmVyCj4+Pj4+
IExlIDMxLzEwLzIwMjEgw6AgMDQ6MTgsIExpbnV4IGZvciBibGluZCBnZW5lcmFsIGRpc2N1c3Np
b24gYSDDqWNyaXQgOgo+Pj4+Pj4gSGVsbG8gZm9sa3MsCj4+Pj4+PiBJIGhhdmUgYmVlbiBwbGF5
aW5nIHdpdGggTGludXggbWludCBhbmQgQWNjZXNzaWJsZSBDb2NvbnV0IGZvciBvdmVyIDI0IGhv
dXJzLiBJIGFtIGdldHRpbmcgdG8gbGlrZSB0aGlzIHN5c3RlbS4gSG93ZXZlciwgV2hlbiBJIGNv
bnRlbXBsYXRlZCBpbnN0YWxsaW5nIG9uIG15IGhhcmQgZGlzaywgSSBmb3VuZCB0aGUgaW5zdGFs
bGF0aW9uIHByb2Nlc3MgYSBsaXR0bGUgY29uZnVzaW5nIGFuZCBzY2FyeS4gSSBhbHdheXMgcmV2
ZXJ0ZWQgYmFjayBhbmQgYWJvcnRlZCB0aGUgaW5zdGFsbGF0aW9uIHRvIHByZXZlbnQgYW4gdW5p
bnRlbmRlZCBkYW1hZ2UgdG8gbXkgd2luZG93cyBvcGVyYXRpbmcgc3lzdGVtLgo+Pj4+Pj4gSWYg
YW55IG9mIHlvdSBoYXZlIHN1Y2Nlc3NmdWxseSBtYW5hZ2VkIHRvIGluc3RhbGwgbGludXggYWxv
bmdzaWRlIHdpdGggd2luZG93cyBvbiB0aGUgc2FtZSBoYXJkIGRpc2ssIHBsZWFzZSBhZHZpc2Ug
bWUgb24gaG93IHRvIGdvIGFib3V0IGl0IHNhZmVseS4KPj4+Pj4+IFJlZ2FyZHMsCj4+Pj4+PiBJ
YnJhaGltCj4+Pj4+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fCj4+Pj4+IEJsaW51eC1saXN0IG1haWxpbmcgbGlzdAo+Pj4+PiBCbGludXgtbGlzdEByZWRo
YXQuY29tCj4+Pj4+IGh0dHBzOi8vbGlzdG1hbi5yZWRoYXQuY29tL21haWxtYW4vbGlzdGluZm8v
YmxpbnV4LWxpc3QKPj4+PiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwo+Pj4+IEJsaW51eC1saXN0IG1haWxpbmcgbGlzdAo+Pj4+IEJsaW51eC1saXN0QHJl
ZGhhdC5jb20KPj4+PiBodHRwczovL2xpc3RtYW4ucmVkaGF0LmNvbS9tYWlsbWFuL2xpc3RpbmZv
L2JsaW51eC1saXN0Cj4+PiAKPj4+IAo+Pj4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KPj4+IEJsaW51eC1saXN0IG1haWxpbmcgbGlzdAo+Pj4gQmxpbnV4
LWxpc3RAcmVkaGF0LmNvbQo+Pj4gaHR0cHM6Ly9saXN0bWFuLnJlZGhhdC5jb20vbWFpbG1hbi9s
aXN0aW5mby9ibGludXgtbGlzdAo+PiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwo+PiBCbGludXgtbGlzdCBtYWlsaW5nIGxpc3QKPj4gQmxpbnV4LWxpc3RA
cmVkaGF0LmNvbQo+PiBodHRwczovL2xpc3RtYW4ucmVkaGF0LmNvbS9tYWlsbWFuL2xpc3RpbmZv
L2JsaW51eC1saXN0Cj4gCj4gCj4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18KPiBCbGludXgtbGlzdCBtYWlsaW5nIGxpc3QKPiBCbGludXgtbGlzdEByZWRo
YXQuY29tCj4gaHR0cHM6Ly9saXN0bWFuLnJlZGhhdC5jb20vbWFpbG1hbi9saXN0aW5mby9ibGlu
dXgtbGlzdAoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
CkJsaW51eC1saXN0IG1haWxpbmcgbGlzdApCbGludXgtbGlzdEByZWRoYXQuY29tCmh0dHBzOi8v
bGlzdG1hbi5yZWRoYXQuY29tL21haWxtYW4vbGlzdGluZm8vYmxpbnV4LWxpc3Q=

