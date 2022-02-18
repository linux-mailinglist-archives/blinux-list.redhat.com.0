Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id D1C894BC059
	for <lists+blinux-list@lfdr.de>; Fri, 18 Feb 2022 20:41:12 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1645213271;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=4FD/VrwUjmI8/ZbCAyNJQynR0fD5jkDakENLYwIvxCw=;
	b=HG2UBS6eapPlJkX+/EriicEtTb3qttWSHishJF9ldRgjHl72u04imFKiIjS4fH4t0705qd
	H1a6ezuPVf3IdTdVPIj4AoeoNVdlT0tvVcCoEz+ZucWqxINuv0siTQHHldCG8L1AA4yY5V
	07gYN0PbrIcYw579B297o2saPlhSsw8=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-185-aQh8a-CtP6qbR32w76c84g-1; Fri, 18 Feb 2022 14:41:08 -0500
X-MC-Unique: aQh8a-CtP6qbR32w76c84g-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.11])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 3AE0F2F4B;
	Fri, 18 Feb 2022 19:41:04 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id DDAB35DB81;
	Fri, 18 Feb 2022 19:41:03 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 91BF61806D1C;
	Fri, 18 Feb 2022 19:41:02 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.rdu2.redhat.com
	[10.11.54.3])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 21IJeuDC001317 for <blinux-list@listman.util.phx.redhat.com>;
	Fri, 18 Feb 2022 14:40:56 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id EFE561120ABD; Fri, 18 Feb 2022 19:40:55 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast10.extmail.prod.ext.rdu2.redhat.com [10.11.55.26])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id EAA931120AA9
	for <blinux-list@redhat.com>; Fri, 18 Feb 2022 19:40:53 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[207.211.31.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id E54621C04B45
	for <blinux-list@redhat.com>; Fri, 18 Feb 2022 19:40:52 +0000 (UTC)
Received: from mail-wr1-f46.google.com (mail-wr1-f46.google.com
	[209.85.221.46]) by relay.mimecast.com with ESMTP with STARTTLS
	(version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-209-4v8VDi1uNxGGhbU2gq5NJA-1; Fri, 18 Feb 2022 14:40:51 -0500
X-MC-Unique: 4v8VDi1uNxGGhbU2gq5NJA-1
Received: by mail-wr1-f46.google.com with SMTP id m27so4435055wrb.4
	for <blinux-list@redhat.com>; Fri, 18 Feb 2022 11:40:50 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20210112;
	h=x-gm-message-state:subject:to:references:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-transfer-encoding;
	bh=CFbQ5/3gJDCBIyOSYxOzLnOUjzH1bnnULXsIVcUcUU4=;
	b=Hrw+YEKx+5En2W8I36SxxSy6HrkmJ4racd4WgSrbAnNaDIFq9xH7yIgqu3Wi/OUIx+
	PoKQw3ogoZXRtPT0FYQ2UzQ0wRHVrwHpTPEZKgzAYtwtYt4xvhkJUIXlbHf13sILUPiY
	B9fIqj1Vxpx0zZGlt1copKBbkZHIY5HAQT5KHQqb1g8G6ly9YpDy9GIcM1mryAJLPuwT
	reFomj9mYxtvvSmvwLSfJdIqh7SR1wlE4RPbhaebMm7jSZIFm9n78GW3c4f8QVsShKvu
	kI5tvd7PkPIfRP6G5XQQzLml7exV2ZslmOs+aesAVP+xwS56eu+F0/5wfh0tLaROJwDB
	YqRQ==
X-Gm-Message-State: AOAM5317PHGfkrEuykesseMKWokk6M2OSQNfKlMKECHjTWuj6H4auCRD
	3DfFLudftab4YN3H2ESZ0h/EzE+CnSE=
X-Google-Smtp-Source: ABdhPJy2JUCBHOoLlzPG0Tpl9fYl/6cyKmNBhig1GJzSKJ6VBUnfJm6cHg54BF0LKeHcwvVCuLRhyg==
X-Received: by 2002:a5d:5747:0:b0:1e6:8b9a:f987 with SMTP id
	q7-20020a5d5747000000b001e68b9af987mr6935565wrw.636.1645213248999;
	Fri, 18 Feb 2022 11:40:48 -0800 (PST)
Received: from [192.168.1.130] ([90.250.160.235])
	by smtp.gmail.com with ESMTPSA id g8sm32840231wrd.9.2022.02.18.11.40.48
	for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Fri, 18 Feb 2022 11:40:48 -0800 (PST)
Subject: Re: Accessibility of installing Distros?
To: Linux for blind general discussion <blinux-list@redhat.com>
References: <4ced451-6f9c-3d8c-3a80-ce15147d9f2b@brandt-slint.local>
	<bac75179-5e55-1893-4303-f56f3e04d148@gmail.com>
	<F9575516-3959-465F-B245-A179D7FA122C@gmail.com>
	<f97f5363-fc3c-cb1d-e323-ccea994d3a98@panix.com>
	<c54f8e3-b720-644-923-78399bfc5417@brandt-slint.local>
	<35d00f20-12b4-aa58-aa0a-a09a11df055f@gmail.com>
	<BFCF3BBE-9D66-4030-886C-FFCE149C4FCF@gmail.com>
	<1f539f84-0171-ff12-29df-3f2e2c7f2788@gmail.com>
	<efda5c9-a7d-44ad-2598-2db5bcb573@panix.com>
	<05EF6B4E-84E9-4A4B-A0CD-CA20610A93D2@gmail.com>
	<ac6f9804-9307-9ec8-060b-46b98d7abd93@gmail.com>
	<98ef81f8-d366-cb87-303d-2d52e4167a2c@gmail.com>
	<b4ac119d-cdf-7148-bc49-ab67e2ee751b@panix.com>
	<8c364cb-a27b-bfc1-692-60bed09fe233@brandt-slint.local>
	<da65fc-344a-9e1d-835e-417e8b11c0a3@panix.com>
Message-ID: <9276cbb6-d550-e929-1880-451bde2003eb@gmail.com>
Date: Fri, 18 Feb 2022 19:40:58 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
	Firefox/68.0 SeaMonkey/2.53.10.2
MIME-Version: 1.0
In-Reply-To: <da65fc-344a-9e1d-835e-417e8b11c0a3@panix.com>
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"

R29pbmcgb2ZmIG9mIHZhbmlsbGEgQXJjaCBoZXJlIGJ1dCBpdCB1c2VzIGVzcGVha3VwIGJ5IGRl
ZmF1bHQgYXMgdGhlIApzcGVlY2ggc3ludGggYW5kIG1ldGhvZCBpbiB0aGUgYWNjZXNzaWJsZSBi
b290ICh3aGljaCBpcyBkb3duIGFycm93IHdoZW4gCmJvb3Rpbmcgb2ZmIGEgc3RpY2sgb3IgQ0Qp
IGFuZCBpdCdzIGVhc3kgdG8gdW5kZXJzdGFuZC4gSSBnZXQgaXQuIFNvbWUgCnBlb3BsZSBjYW4g
ZG8gc3R1cGlkbHkgaGlnaCBzcGVlY2ggcmF0ZXMuIEJ1dCBub3QgZXZlcnlvbmUgY2FuLiBJJ3Zl
IApsZWZ0IGVzcGVha3VwIGFsb25lIG9uIG15IGJveCBhbmQgaXQgd29ya3MgcHJldHR5IHdlbGws
IEkgY2FuIGFkanVzdCBpdCAKZWFzaWx5IGFuZCBpdCdzIGVhc3kgdG8gdW5kZXJzdGFuZCBhbmQg
Zm9sbG93IGFsb25nIHdpdGguIEV2ZW4gYXQgdG9wIApzcGVlZCBpdCdzIG5vdCBpbnNhbmVseSBm
YXN0CgpMaW51eCBmb3IgYmxpbmQgZ2VuZXJhbCBkaXNjdXNzaW9uIHdyb3RlOgo+IElmIHlvdSBp
bnN0YWxsIGVzcGVhay1uZyBpbiBleHRyYSBwYWNrYWdlcyB0aGVuIGluIHRoZSBjaHJvb3QgZW52
aXJvbm1lbnQ6Cj4gc3lzY3RsIGRpc2FibGUgZmVucmlyCj4gdGhlbiBzeXNjdGwgZW5hYmxlIGVz
cGVhawo+IGJlZm9yZSByZWJvb3RpbmcgdGhhdCBzaG91bGQgYXQgbGVhc3QgcHV0IGFuIGVuZCB0
byBmZW5yaXIgZXZlbnR1YWxseS4KPiBUaGUgZmVucmlyIHNwZWVjaCBzcGVlZCBpcyB0b28gZmFz
dDsgaXQgY2FuIGJlIGFkanVzdGVkIGRvd253YXJkIGJ1dCBJCj4gdGhpbmsgbmV2ZXIgb3VnaHQg
dG8gaGF2ZSBiZWVuIHNldCB0aGF0IGZhc3QgZm9yIGluc3RhbGxhdGlvbiBvcgo+IHBvc3QtaW5z
dGFsbCB1c2UuICBNYXliZSBzcGVlY2gtcmF0ZT0wLjUgd291bGQgYmUgYmV0dGVyIGFuZCBhdCB0
aGUgc3BlZWQKPiBlc3BlYWsgdXNlcyBieSBkZWZhdWx0Lgo+Cj4KPiBPbiBGcmksIDE4IEZlYiAy
MDIyLCBMaW51eCBmb3IgYmxpbmQgZ2VuZXJhbCBkaXNjdXNzaW9uIHdyb3RlOgo+Cj4+IFRoZSBp
c3N1ZSBpcyB0aGF0IGl0J3MgYWxyZWFkeSBvbiBhIGRlc2t0b3AsIHVzdWFsbHkgTWF0ZS4KPj4K
Pj4gSWYgSSBpbnN0YWxsIGl0IGFnYWluLCBJJ20gaW5zdGFsbGluZyBpdCBjb25zb2xlIG9ubHks
IGFuZCB0aGVuIGJ1aWxkaW5nIGl0IGFzCj4+IEkgc2VlIGZpdCwgd2hpY2ggd291bGQgYmUgd2l0
aCByYXRwb2lzb24gb25seS4KPj4KPj4gV2lsbCBwcm9iYWJseSBnbyB0byBBcmNoIGRpcmVjdGx5
IGFueXdheS4gV2h5IGdldCBzb21ldGhpbmcgdGhhdCwgZmlyc3RseQo+PiBzcGVha3Mgd2l0aCBh
IFNjcmVlbiByZWFkZXIgSSBuZXZlciBib3RoZXJlZCB0byBsZWFybiwgc2luY2UgU3BlYWt1cCB3
b3Jrcwo+PiB3ZWxsIGVub3VnaCBmb3IgbXkgbmVlZHMsIHNlY29uZGx5IHNwZWFrcyBzbyBkYXJu
IGZhc3Qgbm8gaHVtYW4gY2FuIHVuZGVyc3RhbmQKPj4gdGhlIHRoaW5nLCBlc3BlY2lhbGx5IGlm
LCBsaWtlIG1lIHlvdSBjYW4gaGFyZGx5IGhlYXIgYW55dGhpbmcgYW55bW9yZSBhbnl3YXk/Cj4+
Cj4+IEkgY2FuIGJ1aWxkIG15IHN5c3RlbSBpbiB2YW5pbGxhIEFyY2ggYXMgd2VsbCBhcyB3aXRo
IGFueXRoaW5nIGVsc2UuIEksIGZvcgo+PiBleGFtcGxlIHdvdWxkbid0IGluc3RhbGwgRmlyZWZv
eCBhdCBhbGwsIGJ1dCBwcm9iYWJseSBvbmUgb2YgdGhlIENocm9taXVtCj4+IGJhc2VkIGJyb3dz
ZXJzIHBsdXMgZWxpbmtzIGZvciB3aGVuIEknbSBiZWVpbmcgbGF6eSBhbmQgd2FudCB0byBzdGF5
IG9uIGEKPj4gY29uc29sZS4KPj4KPj4gV2FybSByZWdhcmRzLAo+Pgo+PiBCcmFuZHQgU3RlZW5r
YW1wCj4+Cj4+IFNlbnQgZnJvbSB0aGUgU2xpbnQgY29uc29sZSB1c2luZyBBbHBpbmUKPj4KPj4g
T24gRnJpLCAxOCBGZWIgMjAyMiwgTGludXggZm9yIGJsaW5kIGdlbmVyYWwgZGlzY3Vzc2lvbiB3
cm90ZToKPj4KPj4+IERhdGU6IEZyaSwgMTggRmViIDIwMjIgMTM6NDE6MTkgLTA1MDAKPj4+IEZy
b206IExpbnV4IGZvciBibGluZCBnZW5lcmFsIGRpc2N1c3Npb24gPGJsaW51eC1saXN0QHJlZGhh
dC5jb20+Cj4+PiBUbzogTGludXggZm9yIGJsaW5kIGdlbmVyYWwgZGlzY3Vzc2lvbiA8YmxpbnV4
LWxpc3RAcmVkaGF0LmNvbT4KPj4+IFN1YmplY3Q6IFJlOiBBY2Nlc3NpYmlsaXR5IG9mIGluc3Rh
bGxpbmcgRGlzdHJvcz8KPj4+Cj4+PiBIYXZlIHlvdSB0cmllZCBydW5uaW5nIHN0YXJ0eCB0byB0
dXJuIG9yY2Egb24/ICBZb3UgbWF5IGZpbmQgdGhhdCB3b3Jrcy4KPj4+Cj4+Pgo+Pj4gT24gRnJp
LCAxOCBGZWIgMjAyMiwgTGludXggZm9yIGJsaW5kIGdlbmVyYWwgZGlzY3Vzc2lvbiB3cm90ZToK
Pj4+Cj4+Pj4gU29tZXRpbWVzIGl0IHdvdWxkIGZpbmlzaCB0aGUgaW5zdGFsbCwgdGhlbiByZWJv
b3QsIGFuZCBjb21lIHVwIHNwZWFraW5nCj4+Pj4gd2l0aAo+Pj4+IEZlbnJpciB3aXRoIGEgdmVy
eSBhbm5veWluZyB2b2ljZSwgZXNwZWNpYWxseSBpZiB5b3UsIGxpa2UgbWUgaXMgbGVnYWxseQo+
Pj4+IGRlYWZibGluZCwgdGhlbiBhZnRlciB0eXBpbmcgeW91ciB1c2VybmFtZSBhbmQgcGFzc3dv
cmQsIEZlbnJpciB3b3VsZCBqdXN0Cj4+Pj4gZGllCj4+Pj4gYW5kIHlvdSBhcmUgc3R1Y2ssIEkg
a25vdyBpdCdzIGEgZGVza3RvcCBlbnZpcm9ubWVudCwgYnV0IG5vdGhpbmcgdHVybnMKPj4+PiBv
cmNhCj4+Pj4gb24uCj4+Pj4KPj4+Pgo+Pj4+IFNvIG11Y2ggZm9yIGFuIGFjY2Vzc2libGUgZGlz
dHJvLgo+Pj4+Cj4+Pj4KPj4+PiBUaGlzIGlzIHdoeSBJIGxvdmUgU2xpbnQuIEl0IGRvZXMgZXhh
Y3RseSB3aGF0ICJ5b3UiLCB0ZWxsIGl0IHRvIGRvLCBub3QKPj4+PiB0aGUKPj4+PiBkZXYuCj4+
Pj4KPj4+Pgo+Pj4+IE5vIGRpc3Jlc3BlY3QgdG8gTXIuIE5hc2gsIEknbSBzdXJlIGhlJ3MgYSBw
ZXJmZWN0bHkgbmljZSBndXksIG5vdCB0aGF0Cj4+Pj4gSSd2ZQo+Pj4+IGV2ZXIgc3Bva2VuIHRv
IGhpbSB0aG91Z2guCj4+Pj4KPj4+PiBXYXJtIHJlZ2FyZHMsCj4+Pj4KPj4+PiBCcmFuZHQgU3Rl
ZW5rYW1wCj4+Pj4KPj4+PiBTZW50IGZyb20gdGhlIFNsaW50IG1hY2hpbmUgdXNpbmcgVGh1bmRl
cmJpcmQKPj4+Pgo+Pj4+IE9uIDIwMjIvMDIvMTggMTc6MTAsIExpbnV4IGZvciBibGluZCBnZW5l
cmFsIGRpc2N1c3Npb24gd3JvdGU6Cj4+Pj4+IE1ha2VzIGF0IGxlYXN0IHR3byBvZiB1cy7CoCBU
aGUgaW5zdGFsbGVyIGFsd2F5cyBmb3VuZCBpdHNlbGYgbG9vcGluZyBhbmQKPj4+Pj4gcmVwZWF0
aW5nIGZhaWxlZCBwYWNrYWdlIHJldHJpZXZhbC4KPj4+Pj4KPj4+Pj4KPj4+Pj4KPj4+Pj4gQ2hl
ZXJzLAo+Pj4+Pgo+Pj4+Pgo+Pj4+Pgo+Pj4+PiBEYXZlCj4+Pj4+Cj4+Pj4+Cj4+Pj4+Cj4+Pj4+
Cj4+Pj4+IE9uIDIvMTcvMjIgMTM6MTIsIExpbnV4IGZvciBibGluZCBnZW5lcmFsIGRpc2N1c3Np
b24gd3JvdGU6Cj4+Pj4+PiBJIGNvdWxkIG5ldmVyIGdldCBKZW51eCB0byB3b3JrIGNvcnJlY3Rs
eSBvbiBteSBzZXR1cC4KPj4+Pj4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18KPj4+Pj4gQmxpbnV4LWxpc3QgbWFpbGluZyBsaXN0Cj4+Pj4+IEJsaW51eC1s
aXN0QHJlZGhhdC5jb20KPj4+Pj4gaHR0cHM6Ly9saXN0bWFuLnJlZGhhdC5jb20vbWFpbG1hbi9s
aXN0aW5mby9ibGludXgtbGlzdAo+Pj4+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCj4+Pj4gQmxpbnV4LWxpc3QgbWFpbGluZyBsaXN0Cj4+Pj4gQmxpbnV4
LWxpc3RAcmVkaGF0LmNvbQo+Pj4+IGh0dHBzOi8vbGlzdG1hbi5yZWRoYXQuY29tL21haWxtYW4v
bGlzdGluZm8vYmxpbnV4LWxpc3QKPj4+Pgo+Pj4KPj4+IF9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fCj4+PiBCbGludXgtbGlzdCBtYWlsaW5nIGxpc3QKPj4+
IEJsaW51eC1saXN0QHJlZGhhdC5jb20KPj4+IGh0dHBzOi8vbGlzdG1hbi5yZWRoYXQuY29tL21h
aWxtYW4vbGlzdGluZm8vYmxpbnV4LWxpc3QKPgo+IF9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCj4gQmxpbnV4LWxpc3QgbWFpbGluZyBsaXN0Cj4gQmxpbnV4
LWxpc3RAcmVkaGF0LmNvbQo+IGh0dHBzOi8vbGlzdG1hbi5yZWRoYXQuY29tL21haWxtYW4vbGlz
dGluZm8vYmxpbnV4LWxpc3QKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fCkJsaW51eC1saXN0IG1haWxpbmcgbGlzdApCbGludXgtbGlzdEByZWRoYXQuY29t
Cmh0dHBzOi8vbGlzdG1hbi5yZWRoYXQuY29tL21haWxtYW4vbGlzdGluZm8vYmxpbnV4LWxpc3Q=

