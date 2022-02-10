Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id AB5834B1573
	for <lists+blinux-list@lfdr.de>; Thu, 10 Feb 2022 19:42:35 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1644518554;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=+kltO6dd3I/LD2tGWg2IGIFRZuCt1/AQpzGF/J7hvVY=;
	b=UFg06MOmzbxJJlvd3vyEgWzhJMCViVYIRv/WoSin84A20wOVU4FmwSJOz/0uCsl7RCWWgY
	WxRskMhThxbbzI0CLPrNpYuh3rW52/SiJ9KnwDV5nEcL99sym3bNSC+KLY/MVidG7fQ2LT
	IwlC2tKkGNFFkjg31ndxkpCEKZRPBSo=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-445-AfPCaGWzP46erv6f6uDYtg-1; Thu, 10 Feb 2022 13:42:31 -0500
X-MC-Unique: AfPCaGWzP46erv6f6uDYtg-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com [10.5.11.14])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 9DB721898291;
	Thu, 10 Feb 2022 18:42:27 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 096F0752AC;
	Thu, 10 Feb 2022 18:42:27 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id ACE0018095C9;
	Thu, 10 Feb 2022 18:42:25 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.rdu2.redhat.com
	[10.11.54.2])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 21AIgKvc028637 for <blinux-list@listman.util.phx.redhat.com>;
	Thu, 10 Feb 2022 13:42:21 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id C774540885B8; Thu, 10 Feb 2022 18:42:20 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast03.extmail.prod.ext.rdu2.redhat.com [10.11.55.19])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id C326640885B5
	for <blinux-list@redhat.com>; Thu, 10 Feb 2022 18:42:20 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [207.211.31.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
	bits)) (No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id AA653811E76
	for <blinux-list@redhat.com>; Thu, 10 Feb 2022 18:42:20 +0000 (UTC)
Received: from mail-qt1-f169.google.com (mail-qt1-f169.google.com
	[209.85.160.169]) by relay.mimecast.com with ESMTP with STARTTLS
	(version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-669-48fiMiO4NOSFq283_-p0iw-1; Thu, 10 Feb 2022 13:42:19 -0500
X-MC-Unique: 48fiMiO4NOSFq283_-p0iw-1
Received: by mail-qt1-f169.google.com with SMTP id s1so6272747qtw.9
	for <blinux-list@redhat.com>; Thu, 10 Feb 2022 10:42:18 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20210112;
	h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
	:content-language:to:references:from:in-reply-to
	:content-transfer-encoding;
	bh=12sgSITL/vJPBXmDHnGJboYFJsrgP0bZbsjEKesd1Ck=;
	b=3nAvschTmnnPNKnEcg2PxPbTcxaZ46yDqS0bK6D1x6j0Y3LRFXdA43gqd8OkQCjEuz
	c9iLxS0l+MfkvKtRcSi8YzOpCmr3mH7XwZYFi550mdLndRxLklfd0G5ZE9BZb42DVn7B
	uReM+4OGYRr7YOBhFrEHmHKzlSPyfoI++bWg+HMRfo7rfHl/6e+XUCOJ1mapRB71cbc9
	XRqqPv41P8Lo3X4Jh32kRn10fMMqbWPDpcHerJULy+E1fKdTDw6ZtbcKXI/j3tNhiyEa
	Ou94sYCxiFAyBQit8CN/Qv65b3glwcpiyHPZ7YFlL3IInYOoQHqOKhh9qbVB/SZqBjUk
	1nwA==
X-Gm-Message-State: AOAM531e+Ehq8CTHVXtZiDZbQE/EX0efwpnoY8B4tqFTHJMi/MvqTARR
	JbjVH9PyeW1Irw3Bwc3pYEUjp6Kr9Vv1pQ==
X-Google-Smtp-Source: ABdhPJyYcbE5H7mJW7xqkStkDURhjq65mML1PosyMf1+7+QvvDzppVORe09NeUh6ThzU4bYto3Nbjw==
X-Received: by 2002:ac8:58c4:: with SMTP id u4mr5759357qta.501.1644518538366; 
	Thu, 10 Feb 2022 10:42:18 -0800 (PST)
Received: from ?IPV6:2603:6080:6302:e002:e826:5227:4681:6e2d?
	(2603-6080-6302-e002-e826-5227-4681-6e2d.res6.spectrum.com.
	[2603:6080:6302:e002:e826:5227:4681:6e2d])
	by smtp.gmail.com with ESMTPSA id
	x13sm10743664qko.114.2022.02.10.10.42.17 for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Thu, 10 Feb 2022 10:42:18 -0800 (PST)
Message-ID: <313791f3-8549-681d-52d3-a3eea4621ba2@gmail.com>
Date: Thu, 10 Feb 2022 13:42:17 -0500
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
	Thunderbird/91.5.0
Subject: Re: Coqui TTS has blew my mind!
To: blinux-list@redhat.com
References: <7a0e0ac7-5e7d-a41a-b775-6782a87ba869@protonmail.com>
	<Pine.LNX.4.64.2202091755540.340174@server2.shellworld.net>
	<71517fe5-f206-4f11-0df6-8f3de20c6231@gmail.com>
	<Pine.LNX.4.64.2202101303530.513193@server2.shellworld.net>
In-Reply-To: <Pine.LNX.4.64.2202101303530.513193@server2.shellworld.net>
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"

Li53aGljaCBtYWtlcyBzdGF0aW5nIHRoYXQgdGhlc2UgYXJlIGFjY2Vzc2libGUgaW5jb3JyZWN0
LgoKClRoZXNlIHNhbXBsZXMgYXJlIGluIGZhY3QgYWNjZXNzaWJsZSwgYnkgdGhlIHczYydzIGd1
aWRlbGluZXMsIG5vdCBtaW5lLiAKSSBzdGF0ZWQgdGhhdCBJIGhhdmUgYWRkZWQgZmFsbGJhY2sg
bGlua3MgdG8gbXkgb3duIHdlYnNpdGUsIGJ1dCB0aGlzIGlzIApub3QgYSByZXF1aXJlbWVudCBm
b3IgSFRNTDUgYWNjZXNzaWJpbGl0eSBhcyBkZWZpbmVkIGJ5IHRoZSB3M2MncyAKYWNjZXNzaWJp
bGl0eSB3b3JraW5nIGdyb3VwLCBvciBhdCBsZWFzdCBub3QgYXMgZmFyIGFzIEkga25vdy4gSXQn
cyBqdXN0IApzb21ldGhpbmcgSSBkaWQgYmVjYXVzZSBJIHdhbnRlZCB0byBpbmNsdWRlIGxlZ2Fj
eSBzdXBwb3J0IGZvciBvbGRlciAKYnJvd3NlcnMuCgoKPiBMaW51eCBleGlzdHMgaW4gY29tbWFu
ZCBsaW5lIGFzIHdlbGwgYXMgZ3VpLsKgIGFzIHNvbWVvbmUgZWxzZSBpbiBhIAo+IGRpZmZlcmVu
dCB0aHJlYWQgbm90ZWQgcmVjZW50bHksIHRoZXkgcGVyc29uYWxseSB3b3VsZCBub3QgdG91Y2gg
Z3VpIAo+IGFnYWluIGZvcsKgIHRoZSByZXN0IG9mIHRoZWlyIGxpdmVzIGlmIGdpdmVuIGEgY2hv
aWNlLiBNZWFuaW5nIHRoZXNlIAo+IG9wdGlvbnMgYXJlIG5vdCB1bml2ZXJzYWxseSBhdmFpbGFi
bGUgb3IgYWNjZXNzaWJsZSBpbiBMaW51eCBhcyBhIHdob2xlLgoKClRoZSBmYWN0IHRoYXQgdGV4
dC1iYXNlZCBicm93c2VycyBkbyBub3Qgc3VwcG9ydCBIVE1MNSBzdGFuZGFyZHMgbWFrZXMgCnRo
ZW0gaW5hY2Nlc3NpYmxlIGFuZCBwZXJoYXBzIGV2ZW4gdW51c2FibGUuIFRoZXJlIGlzIG5vdGhp
bmcgaW4gdGhlIAp3b3JsZCBzdG9wcGluZyB0aGVtIGZyb20gYmVjb21pbmcgdXNhYmxlIGJ5IHRv
ZGF5J3Mgc3RhbmRhcmRzLCBpdCB3b3VsZCAKc2VlbSB0aGF0IHRoZXkganVzdCB3YW50IHRvIHN0
YXkgYmFjayBpbiB0aGUgMTk5MCdzLiBNdXNpYyBhbmQgdmlkZW8gCnBsYXllcnMgZXhpc3QgaW4g
dGV4dCBlbnZpcm9ubWVudHMsIG9mZmVyaW5nIG5lYXJseSBhbGwgdGhlIApmdW5jdGlvbmFsaXR5
IEkgZ2V0IG9uIGEgZGVza3RvcC4gSXQncyB0aW1lIGZvciB0aGUgYnJvd3NlciB0byBkbyB0aGUg
CnNhbWUuIFN0aWxsLCBpZiBteSBwaG9uZSBhbmQgbXkgZGVza3RvcCBlbnZpcm9ubWVudCBjYW4g
cmVhZCBpdCB3aXRob3V0IAphbnkgaXNzdWVzLCB0d28gb3V0IG9mIHRocmVlIGFpbid0IGFsbCB0
aGF0IGJhZC4gVGhhdCBzYWlkLCBJIHdhcyBub3QgCmF0dGVtcHRpbmcgdG8gc3RhcnQgYSBmbGFt
ZSB3YXIsIGFzIEkgbWVudGlvbmVkIHRoZSBmYWxsYmFjayBwb3NzaWJpbGl0eSAKYXMgc29tZXRo
aW5nIHRoYXQgSSBkbywgYnV0IHRoYXQgdGhlIGJyb3dzZXJzIEkgdXNlIGhpZGUgdGhvc2UgZmFs
bGJhY2sgCmxpbmtzLCBzbyBJIGNhbid0IHNheSB3aGV0aGVyIG9yIG5vdCB0aGlzIG90aGVyIHdl
YnNpdGUgdGhhdCBJIGRpZCBub3QgCndyaXRlIGVtcGxveXMgc3VjaCBsaW5rcywgd2hpY2ggd291
bGQgbWFrZSB0aGUgc2FtcGxlcyBhdmFpbGFibGUgdGhyb3VnaCAKb3RoZXIgYnJvd3NlcnMsIGJ1
dCBhZ2FpbiBpcyBub3QgYXQgYWxsIGEgcmVxdWlyZW1lbnQgdG8gbWVldCAyMDIyJ3MgCmFjY2Vz
c2liaWxpdHkgZ3VpZGVsaW5lcyBhcyBkZWZpbmVkIGJ5IHBlb3BsZSBvdGhlciB0aGFuIG15c2Vs
Ziwgd2hpY2ggCmluY2lkZW50YWxseSBpbmNsdWRlcyBwZW9wbGUgd2hvIGFzIHlvdSBzYXkgdXNl
IHRleHQgZW52aXJvbm1lbnRzIGFzIAptdWNoIGFzIHBvc3NpYmxlLiBCdXQgZXZlbiB0aG9zZSBw
ZW9wbGUgbXVzdCB1c2Ugd2hhdCBicm93c2VycyBhcmUgCmRlc2lnbmVkIHRvIGF0IGxlYXN0IHRy
eSB0byBhZGhlcmUgdG8gdGhvc2UgZ3VpZGVsaW5lcywgYW5kIGxpa2UgaXQgb3IgCm5vdCwgZXZl
biB3M20gZG9lcyBub3QgY29tcGx5IHdpdGggY3VycmVudCBIVE1MIHN0YW5kYXJkcywgYW5kIGl0
J3MgCmFib3V0IHRoZSBiZXN0IHRleHQgYnJvd3NlciBhdmFpbGFibGUuCgoKbWlnaHQgYXMgd2Vs
bCBzYXksIHBsZWFzZSBvbmx5IGJlIGRpc2FibGVkIGFzIEkgcGVyc29uYWxseSBkZWZpbmUgaXQs
IAp3cml0aW5nIGFjY2Vzc2libGUgYnkgeW91ciBvd24gZGljdGlvbmFyeSBhbmQgc2VlbWluZ2x5
IHRvIHByb2plY3QgaXQgb24gCnRvIG90aGVyIHBlb3BsZS4KCgpOb3QgYXQgYWxsIG15IGludGVu
dGlvbi4gSSBkaWRuJ3QgZGVmaW5lIHRoZSBhY2Nlc3NpYmlsaXR5IGd1aWRlbGluZXMsIEkgCm9u
bHkgYWRoZXJlIHRvIHRoZW0gdG8gdGhlIGJlc3Qgb2YgbXkgb3duIGFiaWxpdGllcywgYW5kIGV2
ZW4gdG9vayBteSAKd2Vic2l0ZSdzIGFjY2Vzc2liaWxpdHkgYSBtYWpvciBzdGVwIGZ1cnRoZXIg
dGhhbiBJIG5lZWRlZCB0byBpbiBvcmRlciAKdG8gYWNjb21vZGF0ZSB0aGUgbW9zdCBwZW9wbGUu
IEhvdyBkYXJlIHlvdSBwdXQgd29yZHMgaW50byBteSBtb3V0aCB0aGF0IApJIG5ldmVyIHNhaWQs
IGVzcGVjaWFsbHkgc2luY2UgSSBjbGVhcmx5IHNhaWQgdGhlIG9wcG9zaXRlLiBBbmQgSSBkb24n
dCAKdGhpbmsgdGhhdCB3YXMgdGhlIHczYydzIGludGVudGlvbiBlaXRoZXIuCgoKV2h5IG5vdCBz
YXkgZnJvbSB0aGUgb3V0c2V0LCB0aGF0IHRoZSBpdGVtcyBhcmUgb25seSBhdmFpbGFibGUgZm9y
IHNvbWUgCkxpbnV4IHVzZXJzPwoKCkJlY2F1c2UgdGhhdCB3b3VsZCBiZSBhbiBvdXRyaWdodCBs
aWUuIEV2ZXJ5b25lIHdobyBydW5zIGEgTGludXggCm9wZXJhdGluZyBzeXN0ZW0gaGFzIHRoZSBj
aG9pY2UgdG8gdXNlIEJyYXZlLCBDaHJvbWl1bSwgR29vZ2xlIENocm9tZSwgCkZpcmVmb3ggYW5k
IGEgaG9zdCBvZiBvdGhlciBzdGFuZGFyZHMtY29tcGxpYW50IGJyb3dzZXJzLiBKdXN0IGJlY2F1
c2UgCnlvdSB5b3Vyc2VsZiBtYWRlIHRoZSBjaG9pY2Ugbm90IHRvIHVzZSB0aGVtIGRvZXMgbm90
IG1lYW4gdGhhdCB0aGV5IGFyZSAKbm90IGF2YWlsYWJsZSBzaG91bGQgeW91IGNob29zZSBvbmUg
b2YgdGhlbS4gVGhlcmUgYXJlIGV2ZW4gd2F5cyBhcm91bmQgCnRoZSB3aG9sZSBkZXNrdG9wIGVu
dmlyb25tZW50IGFuZCBzY3JlZW4gZGlzcGxheSB0aGluZywgdXNpbmcgeHZmYiBJIAp0aGluayBp
dCdzIGNhbGxlZCB3aXRoIGR1bW15IGRpc3BsYXkgb3V0cHV0IGFuZCBhIHZlcnkgc21hbGwgd2lu
ZG93IAptYW5hZ2VyIHRoYXQganVzdCBydW5zIHlvdXIgc2NyZWVuIHJlYWRlciBhbmQgYnJvd3Nl
ciBhbmQgb3RoZXJ3aXNlIApzdGF5cyBjb21wbGV0ZWx5IG91dCBvZiB0aGUgd2F5LiBBZ2Fpbiwg
aXQncyBhYm91dCBwZXJzb25hbCBjaG9pY2UsIGJ1dCAKbW9yZSBhYm91dCBuZWVkaW5nIHRoZSBh
YmlsaXR5IHRvIGNob29zZSBhIHRleHQtbW9kZSBicm93c2VyIHRoYXQgY2FuIApoYW5kbGUgdGhl
IHNpbXBsZXN0IEhUTUw1IGF1ZGlvIHN0YW5kYXJkLCBhbmQgYXQgbGVhc3QgZW5vdWdoIEphdmFT
Y3JpcHQgCnRvIGJlIGFibGUgdG8gaGFuZGxlIGJhc2ljIHRoaW5ncyBsaWtlIGJhbmtpbmcgYW5k
IHNob3BwaW5nIHdpdGhvdXQgCmNob2tpbmcgYW5kIGVpdGhlciBjcmFzaGluZyBvciBzZW5kaW5n
IG1lIHRvIGEgYmxhbmsgc2NyZWVuIG9yIGJhY2sgdG8gCnRoZSBsb2dpbiBwYWdlIGFzIGlmIG15
IGNyZWRlbnRpYWxzIHdlcmUgaW5jb3JyZWN0LiBUaGUgZmFjdCBpcyB0aGF0IAp0ZXh0IGJyb3dz
ZXJzIGNhbid0IGV2ZW4gaGFuZGxlIEhUTUw0IGNvcnJlY3RseSwgYXMgdGhleSBkb24ndCBrbm93
IGhvdyAKdG8gaGFuZGxlIHNvbWV0aGluZyBhcyBzaW1wbGUgYXMgaGVhZGVycyBpbiBtb3N0IGNh
c2VzLiBBdCB0aGUgdmVyeSAKbGVhc3QsIGtleWJvYXJkIGhlYWRlciBuYXZpZ2F0aW9uIHdvdWxk
IGJlIGEgc3RlcCBpbiB0aGUgcmlnaHQgCmRpcmVjdGlvbi4gQnV0IGFnYWluLCB0aGlzIGlzIG5v
dCBteSBmYXVsdCwgbm9yIHRoZSBmYXVsdCBvZiBtb2Rlcm4gCndlYnNpdGUgZGV2ZWxvcGVycy4g
VGhpcyBpcyBhIGxhY2sgb2Ygc3RhbmRhcmRzIGNvbXBsaWFuY2UgYW1vbmcgCnRleHQtbW9kZSBi
cm93c2Vycy4gTm90aGluZyBtb3JlLCBub3RoaW5nIGxlc3MuCgp+S3lsZQoKX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KQmxpbnV4LWxpc3QgbWFpbGluZyBs
aXN0CkJsaW51eC1saXN0QHJlZGhhdC5jb20KaHR0cHM6Ly9saXN0bWFuLnJlZGhhdC5jb20vbWFp
bG1hbi9saXN0aW5mby9ibGludXgtbGlzdA==

