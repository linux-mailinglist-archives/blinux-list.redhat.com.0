Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTP id B85023E0A82
	for <lists+blinux-list@lfdr.de>; Thu,  5 Aug 2021 00:44:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1628117085;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=GpELs+fJWAFimuQjsHXjty3EubQ+z8uIMYJNIrwhU7k=;
	b=N26sWwQ4T4+fbHu2VjEt1TI6GwdcGk1C8Sve9vr2jfXteM6ed5l7z46mW0/GnL56gWUipL
	FkLpqdfuMZQd91q2/y+SihziLQ7iBUQZ9fdcyeQBFIyStK+wcOf17fEu3ohQGcLkC17GF9
	Ot4bjNvqWTVeSC2nAuKtdhT35Gfmwds=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-384-6mwJ29BAOaCq7RYh3HtNfg-1; Wed, 04 Aug 2021 18:44:44 -0400
X-MC-Unique: 6mwJ29BAOaCq7RYh3HtNfg-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.12])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 5287E875047;
	Wed,  4 Aug 2021 22:44:40 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 7F7A260BF4;
	Wed,  4 Aug 2021 22:44:39 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 7EFD84BB7C;
	Wed,  4 Aug 2021 22:44:38 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.rdu2.redhat.com
	[10.11.54.5])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 174MiXdT014142 for <blinux-list@listman.util.phx.redhat.com>;
	Wed, 4 Aug 2021 18:44:33 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 6169EFED28; Wed,  4 Aug 2021 22:44:33 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast06.extmail.prod.ext.rdu2.redhat.com [10.11.55.22])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 5B44FFED2B
	for <blinux-list@redhat.com>; Wed,  4 Aug 2021 22:44:30 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[205.139.110.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 63C7C187506B
	for <blinux-list@redhat.com>; Wed,  4 Aug 2021 22:44:30 +0000 (UTC)
Received: from mail-qt1-f169.google.com (mail-qt1-f169.google.com
	[209.85.160.169]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-470-5PN42GAOPwu_KuBzPG7lQw-1; Wed, 04 Aug 2021 18:44:28 -0400
X-MC-Unique: 5PN42GAOPwu_KuBzPG7lQw-1
Received: by mail-qt1-f169.google.com with SMTP id z24so2537976qtn.8
	for <blinux-list@redhat.com>; Wed, 04 Aug 2021 15:44:28 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:references:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-transfer-encoding
	:content-language;
	bh=+dPZGNOA+J3gsWpB8m605v/6X1FMEVSPMfxKVbMVC6A=;
	b=S5a4zEl+2vFPh7x1wzm+a1HO+Z1a0ODQ3olw2qSYtkZ9k5KrmHV7VU+L8w6j36WzrS
	ZgLVPKcOuOCcDZmC1vxbk4fIZZRwe9s0Dx9UuZ3m8KQvkiuyLXbzI+m2+dvFoxUmLj/T
	OLKKdVUhlJS0RGF+ENt0F6VDAVP9oeQyMrS3nyk7hZN5j775vJi73BStINOvbI0t/oc1
	kxjUx7V5nJq+q1w+FPGouDWP4pibxZouWm59qDpRrWaX0CN+62iHZ7RPgjvL92rKXsW9
	OWeZoHUm1bQgc9p9lE2EFPUNaV6xJLZq4j9nqRxq/8snKz4izLpOfLInJuc0jDEfSBZi
	E0mA==
X-Gm-Message-State: AOAM530fpID+efXbl39eFGSSJDqfIm+bo/Fx77nw3cvJEpL9UyCxsIAg
	nt1bRAjIdOq8OPIXqPA4/ebDNnoVqIh3IA==
X-Google-Smtp-Source: ABdhPJwcBpjJmnFXlPBNWUCrVEJ9ueFOnvjubDnc/3Qq2OmXBmtzBCjXepUvcqRj7yZ30nXCoVbgNQ==
X-Received: by 2002:ac8:7608:: with SMTP id t8mr1820624qtq.246.1628117067947; 
	Wed, 04 Aug 2021 15:44:27 -0700 (PDT)
Received: from thinkpad.example.slint ([2601:192:4c80:1420::cae5])
	by smtp.gmail.com with ESMTPSA id
	k10sm1455143qtp.76.2021.08.04.15.44.27 for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Wed, 04 Aug 2021 15:44:27 -0700 (PDT)
Subject: Re: Solus DE observations
To: blinux-list@redhat.com
References: <3c0f9041-d6e9-5fb5-2e9c-a96dc59bd86c@gmail.com>
	<7b4a0e8e-f7b2-af91-975c-d3ca3a3cbdcf@gmail.com>
	<76FFA217-1F68-444A-8DB7-C465759CD123@gmail.com>
	<fd407fcb-4241-4fd6-49e8-bd25a69f3348@gmail.com>
	<DC07B063-C1B9-49B0-89BA-7F340746AB3D@gmail.com>
	<57bd933a-c517-2ec6-0f1e-716e4a81908b@gmail.com>
	<4020EC8C-BE9D-4ABC-A1B6-EFDCB9F261ED@gmail.com>
	<2a58e6d9-54c9-8d66-7433-aebc6fcf687c@gmail.com>
	<229F2558-87BD-4F2F-907D-218C2D542480@gmail.com>
	<09938f56-8ec8-a34b-65a3-9151aaab74b9@gmail.com>
	<EFCC025D-5C8B-4997-9BDC-D0243384A3D1@gmail.com>
	<alpine.NEB.2.23.451.2108041823280.8697@panix1.panix.com>
Message-ID: <df6422c1-cf3e-2e3b-ffea-4afb43627a62@gmail.com>
Date: Wed, 4 Aug 2021 18:44:26 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
	Thunderbird/78.12.0
MIME-Version: 1.0
In-Reply-To: <alpine.NEB.2.23.451.2108041823280.8697@panix1.panix.com>
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

SSd2ZSBiZWVuIGFibGUgdG8gcGxheSBHVUkgZ2FtZXMgdGhhdCB3ZXJlIG1hZGUgdG8gYmUgYWNj
ZXNzaWJsZSBhbmQgcnVuIAppbiBHTlUvTGludXgsIHN1Y2ggYXMgMk1CIE1pbmVSYWNlciwgYW5k
IGFuIG9sZCB0b21iIHJhaWRlciB0aGluZy7CoCAKQWxzbywgdGhlIHVzZXIsIFN0b3JtIERyYWdv
biwgaGFzIHdyaXR0ZW4gd2hhdCBoZSBjYWxscyBoaXMgQXVkaW8gR2FtZSAKTWFuYWdlciwgd2hp
Y2ggbGV0cyB5b3UgcGxheSBhIGJ1bmNoIG9mIG9sZCBXaW5kb3dzIGdhbWVzIGluIHRoZSBMaW51
eCAKZ3VpLCB1c2luZyB3aW5lIGFuZCBhIGJ1bmNoIG9mIGhlbHBlciBzY3JpcHRzLsKgIEdldHRp
bmcgdGhhdCB0aGluZyAKaW5zdGFsbGVkIGludG8gU29sdXMgbG9va3MgbGlrZSBpdCB3b3VsZCBi
ZSBhIGh1Z2UgY2hhbGxlbmdlLsKgIEhlIApiYXNpY2FsbHkgd3JvdGUgdGhlIHRoaW5nIGZvciBB
cmNoIGFuZCBTbGludDsgaW4gdGhlIGxhdHRlciwgdGhlIGJ1aWxkIApwcm9jZXNzIHRvb2sgYSBs
b25nIHRpbWUsIGFuZCB0aGVyZSB3ZXJlIGxvdHMgb2YgaW5zdHJ1Y3Rpb25zLgoKCkluIGEgcHJl
dmlvdXMgbWVzc2FnZSwgeW91IHdyb3RlIGFib3V0IGtleWJvYXJkIHNob3J0Y3V0cyBpbiBCdWRn
aWU/wqAgClRyeSB0aGUgU29sdXMgaGVscCBjZW50ZXI7IHRoZXJlJ3MgYSBzbWFsbCB0YWJsZSBv
ZiBhYm91dCAxMC7CoCBPbmUgCnBhcnRpY3VsYXIgc2hvcnQgY3V0LCB5b3UgYXNrZWQgYWJvdXQs
IGlzIGxvb2tpbmcgYXQgeW91ciBtb3VudGVkIApkcml2ZXMuwqAgVGhhdCBvbmUgaXMgbm90IHRo
ZXJlLCBiZWNhdXNlIGl0J3Mgbm90IGluIEJ1ZGdpZSwgcmF0aGVyLCBpdCdzIAppbiB0aGUgZmls
ZSBtYW5hZ2VyLsKgIElmIHlvdSBzdGFydCBvZmYsIGZvciBpbnN0YW5jZSwgaW4geW91ciBob21l
IApmb2xkZXIsIHlvdSBjYW4gdG9nZ2xlIHZhcmlvdXMgcGFuZXMgd2l0aCBmNi7CoCBPbmUgb2Yg
dGhlc2UgaXMgbGlrZSB0aGUgCiJwbGFjZXMiIG1lbnUgaW4gc29tZXRoaW5nIGxpa2UgTWF0ZS7C
oCBZb3VyIG1vdW50ZWQgdm9sdW1lcyBzaG91bGQgc2hvdyAKdXAgdGhlcmU7IGhpdCB1cCBhbmQg
ZG93biBhcnJvd3MgdG8gZmluZCB0aGVtLCBhbmQgaGl0IHNwYWNlIG9uIHRoZSBvbmUgCnlvdSB3
YW50LiBZb3Ugc2hvdWxkIGdldCBzaGlmdGVkIGludG8gdGhlIGNvbnRlbnQgcGFuZS4KCgoKSFRI
LAoKCgpEYXZlwqAgSHVudAoKCgoKU2VudCBmcm9tIG15IExlbm92byBUaGlua3BhZCwgcnVubmlu
ZyBTbGludCBHTlUvTGludXguICBodHRwczovL3NsaW50LmZyIGZvciBpbmZvCgpPbiA4LzQvMjEg
NjoyNiBQTSwgTGludXggZm9yIGJsaW5kIGdlbmVyYWwgZGlzY3Vzc2lvbiB3cm90ZToKPiBPbmUg
Z29vZCB0aGluZyBhYm91dCB0aGlzIHNvbHVzIGRpc3RybyBpcyB0aGF0IHRoZXJlJ3MgYSBnYW1l
cwo+IHNwZWNpYWxpemluZyBkaXN0cm8uICBXaGF0IHdpbGwgYmUgaW50ZXJlc3Rpbmcgd2lsbCBi
ZSB0byBmaW5kIG91dCBob3cKPiBtYW55IG1vcmUgZy51LmkuIGdhbWVzIGVpdGhlciBiZWNvbWUg
bW9yZSBhY2Nlc3NpYmxlIG9yIGJlY29tZSBhY2Nlc3NpYmxlCj4gdXNlcnMgY2FuIHBsYXkgb24g
c29sdXMuICBNb3N0IG9mIHRoZSBnLnUuaS4gZ2FtZXMgYXZhaWxhYmxlIGZvciBMaW51eAo+IGhh
dmUgeWV0IHRvIGdldCBhY2Nlc3NpYmxlIHVubGVzcyBodWdlIGNoYW5nZXMgaGF2ZSBoYXBwZW5l
ZCBzaW5jZSBJIGxhc3QKPiBjaGVja2VkIG91dCB0aGUgc2NlbmUuCj4KPgo+IE9uIFdlZCwgNCBB
dWcgMjAyMSwgTGludXggZm9yIGJsaW5kIGdlbmVyYWwgZGlzY3Vzc2lvbiB3cm90ZToKPgo+PiBJ
ZiBJIHJlbWVtYmVyLCBpdCB3YXMgdGhlIG1hdGUgZWRpdGlvbiwgYWJvdXQgYSB5ZWFyIGFuZCBh
IGhhbGYgYWdvLgo+Pgo+Pj4gT24gQXVnIDQsIDIwMjEsIGF0IDEyOjMwIFBNLCBMaW51eCBmb3Ig
YmxpbmQgZ2VuZXJhbCBkaXNjdXNzaW9uIDxibGludXgtbGlzdEByZWRoYXQuY29tPiB3cm90ZToK
Pj4+Cj4+PiBJbnN0YWxsaW5nIE1pbnQgd2FzIGV4YWN0bHkgbGlrZSBpbnN0YWxsaW5nIFVidW50
dSwgYXMgZmFyIGFzIEkgcmVjYWxsLiAgTWF5YmUgeW91IGdyYWJiZWQgdGhlIENpbm5hbW9uIGVk
aXRpb24gbGFzdCB0aW1lPwo+Pj4KPj4+Cj4+PiBDaGVlcnMsCj4+Pgo+Pj4KPj4+IERhdmUgIEgu
Cj4+Pgo+Pj4KPj4+Cj4+PiBTZW50IGZyb20gbXkgTGVub3ZvIFRoaW5rcGFkLCBydW5uaW5nIFNs
aW50IEdOVS9MaW51eC4gIGh0dHBzOi8vc2xpbnQuZnIgZm9yIGluZm8KPj4+Cj4+PiBPbiA4LzQv
MjEgNzowNSBBTSwgTGludXggZm9yIGJsaW5kIGdlbmVyYWwgZGlzY3Vzc2lvbiB3cm90ZToKPj4+
PiBIb3cgd2FzIGxpbnV4IG1pbnQgYW5kIG9yY2EgZHVyaW5nIGluc3RhbGxpbmc/Cj4+Pj4KPj4+
Pj4gT24gQXVnIDMsIDIwMjEsIGF0IDk6MjMgUE0sIExpbnV4IGZvciBibGluZCBnZW5lcmFsIGRp
c2N1c3Npb24gPGJsaW51eC1saXN0QHJlZGhhdC5jb20+IHdyb3RlOgo+Pj4+Pgo+Pj4+PiBUaGlz
IG1lc3NhZ2UgaXMgY29taW5nIGZyb20gbXkgU29sdXMgTWF0ZSBpbnN0YWxsYXRpb24uICBNYXRl
IGFuZCB0aGUgYXBwbGljYXRpb25zIHdvcmsgYXMgZXhwZWN0ZWQsIHdpdGggdGhlIGV4Y2VwdGlv
biBvZiBzcGVlY2ggZGlzcGF0Y2hlci4gIEFsbCBvdGhlciBhdWRpbyBzb3VuZHMgZmluZSwgYnV0
IHNwZWVjaCBpcyBhIGxpdHRsZSBjaG9wcHkuICBBbHNvLCBJIGZvdW5kIHRoYXQgc29tZSBwYWNr
YWdlcyBhcmVuJ3QgaW4gdGhlIHJlcG9zLCBuYW1lbHkgTElPUyBhbmQgQ2hpcnAuICBJIGRvbid0
IGtub3cgd2hhdCB0aGUgYnVpbGQgZXhwZXJpZW5jZSBpcyBsaWtlIGluIFNvbHVzLCBhbmQgaGF2
ZSB0aG9zZSBwYWNrYWdlcyBpbiBteSBTbGludCBzeXN0ZW0uIFNwZWFraW5nIG9mIFNsaW50LCBo
YXZlIHlvdSBjb25zaWRlcmVkIGl0Pwo+Pj4+Pgo+Pj4+Pgo+Pj4+PiBJIGhhdmUgdXNlZCBMaW51
eCBNaW50IE1hdGUgZWRpdGlvbiwgYW5kIGZpbmQgdGhhdCB0aGUgYWNjZXNzaWJpbGl0eSB3b3Jr
cyBmaW5lIGluIHRoZSBhcHBzIGFuZCBvbiB0aGUgZGVza3RvcCBhbmQgbWVudXMuICBJIGZpbmQg
dGhhdCBJIGhhdmUgdG8gdXNlIGZsYXQgcmV2aWV3IG9uIE1pbnQgTWF0ZSdzIGJvdHRvbSBwYW5l
bCwgYW5kIHRoZSBiYXR0ZXJ5ICBjaGFyZ2UgaW5kaWNhdG9yIGRvZXNuJ3Qgc2VlbSB0byByZWZy
ZXNoIHByb3Blcmx5Lgo+Pj4+Pgo+Pj4+Pgo+Pj4+Pgo+Pj4+PiBIVEgsCj4+Pj4+Cj4+Pj4+Cj4+
Pj4+Cj4+Pj4+IERhdmUgIEguCj4+Pj4+Cj4+Pj4+Cj4+Pj4+Cj4+Pj4+Cj4+Pj4+IFNlbnQgd2l0
aCBUaHVuZGVyYmlyZCBhbmQgU29sdXMgR05VL0xpbnV4Lgo+Pj4+Pgo+Pj4+PiBPbiA4LzMvMjEg
MTA6MTMgUE0sIExpbnV4IGZvciBibGluZCBnZW5lcmFsIGRpc2N1c3Npb24gd3JvdGU6Cj4+Pj4+
PiBEYXZlLCBJIGhhdmUgdXNlZCBnbm9tZSBhbmQgbWF0ZSB3aXRoIHVidW50dS4KPj4+Pj4+IEkg
dGhvdWdodCBvZiBsaW51eCBtaW50LCBhbmQgdHJpZWQgaXQsIGJ1dCBvcmNhIHdvdWxkIG5vdCB3
b3JrLgo+Pj4+Pj4gSGFkIHlvdSB0cmllZCBtaW50Pwo+Pj4+Pj4gQXMgdG8gU29sdXMsIGlzIHRo
YXQgd29ya2FibGU/Cj4+Pj4+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fCj4+Pj4+IEJsaW51eC1saXN0IG1haWxpbmcgbGlzdAo+Pj4+PiBCbGludXgtbGlz
dEByZWRoYXQuY29tCj4+Pj4+IGh0dHBzOi8vbGlzdG1hbi5yZWRoYXQuY29tL21haWxtYW4vbGlz
dGluZm8vYmxpbnV4LWxpc3QKPj4+PiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwo+Pj4+IEJsaW51eC1saXN0IG1haWxpbmcgbGlzdAo+Pj4+IEJsaW51eC1s
aXN0QHJlZGhhdC5jb20KPj4+PiBodHRwczovL2xpc3RtYW4ucmVkaGF0LmNvbS9tYWlsbWFuL2xp
c3RpbmZvL2JsaW51eC1saXN0Cj4+Pj4KPj4+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fCj4+PiBCbGludXgtbGlzdCBtYWlsaW5nIGxpc3QKPj4+IEJsaW51
eC1saXN0QHJlZGhhdC5jb20KPj4+IGh0dHBzOi8vbGlzdG1hbi5yZWRoYXQuY29tL21haWxtYW4v
bGlzdGluZm8vYmxpbnV4LWxpc3QKPj4KPj4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KPj4gQmxpbnV4LWxpc3QgbWFpbGluZyBsaXN0Cj4+IEJsaW51eC1s
aXN0QHJlZGhhdC5jb20KPj4gaHR0cHM6Ly9saXN0bWFuLnJlZGhhdC5jb20vbWFpbG1hbi9saXN0
aW5mby9ibGludXgtbGlzdAo+Pgo+Pgo+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCj4gQmxpbnV4LWxpc3QgbWFpbGluZyBsaXN0Cj4gQmxpbnV4LWxpc3RA
cmVkaGF0LmNvbQo+IGh0dHBzOi8vbGlzdG1hbi5yZWRoYXQuY29tL21haWxtYW4vbGlzdGluZm8v
YmxpbnV4LWxpc3QKPgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KQmxpbnV4LWxpc3QgbWFpbGluZyBsaXN0CkJsaW51eC1saXN0QHJlZGhhdC5jb20KaHR0
cHM6Ly9saXN0bWFuLnJlZGhhdC5jb20vbWFpbG1hbi9saXN0aW5mby9ibGludXgtbGlzdA==

