Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com [205.139.110.120])
	by mail.lfdr.de (Postfix) with ESMTP id 4D434163891
	for <lists+blinux-list@lfdr.de>; Wed, 19 Feb 2020 01:33:25 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1582072404;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=BOvl9wCzdKEJJSR6Xv21ilcjPGVTsG/SEkWT8G4fszw=;
	b=ZNdNje2xkal7OH9d5TcxrJs/K5CPgdP86qbsm0okokU7kQJ+FVLmCVJcdQVCCgjAIWOEe/
	LnuCWhhAdv8xnd1WuK+Vov+1OHYvo79jkbQtFUCmQhQPXcTRp7bwcmZTVKK2kiQTD+xRv8
	lgLgS3a3Fvt9UuMLR0SeXAg1WaqURv0=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-296-T0luN4fPPdeFJEF09zfIJg-1; Tue, 18 Feb 2020 19:33:20 -0500
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com [10.5.11.16])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 4A1E5189F763;
	Wed, 19 Feb 2020 00:33:15 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 87F2F5C1BB;
	Wed, 19 Feb 2020 00:33:11 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id DD23335AF8;
	Wed, 19 Feb 2020 00:33:04 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.rdu2.redhat.com
	[10.11.54.4])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 01J0Ws5V029650 for <blinux-list@listman.util.phx.redhat.com>;
	Tue, 18 Feb 2020 19:32:54 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 9D6E42026D69; Wed, 19 Feb 2020 00:32:54 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast04.extmail.prod.ext.rdu2.redhat.com [10.11.55.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 97C1D2026D67
	for <blinux-list@redhat.com>; Wed, 19 Feb 2020 00:32:52 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[207.211.31.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 71A9B1017E56
	for <blinux-list@redhat.com>; Wed, 19 Feb 2020 00:32:52 +0000 (UTC)
Received: from mail-ot1-f67.google.com (mail-ot1-f67.google.com
	[209.85.210.67]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-205-0gyqjRTzPD-K8yH_lepIZQ-1; Tue, 18 Feb 2020 19:32:49 -0500
Received: by mail-ot1-f67.google.com with SMTP id j16so21486218otl.1
	for <blinux-list@redhat.com>; Tue, 18 Feb 2020 16:32:49 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:references:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-transfer-encoding
	:content-language;
	bh=JdCAzrzwe4t8Vj5hP8kWCPNZPc49+tS5o15dx6iPUG0=;
	b=QGp+0KPEXYu8mZUiIgRZRarahi+5U2884GPuzJagqAiLt8D4XBX5jgmGYC8eD+ip5l
	GYgvuhJEBMZORrHgThzngpUbwJQNdVMM6p3VC/6WqEsuOsHm1q+PbINPot9Q78qKFrxc
	KGi7Nm150/hdnArFK6Okg0Bteeg+R9zWFBu7mpz83+xkm1zAtcwVn00sdQSaDu3rtVtk
	/PASEb0VYa0KV7mLGiCzwsyC9yzbYGN7y4kQ1D38efH+GPU/m375oqmVDv2PjSWW/zyE
	3ylWhjo1TGcmwQ4F7FaChDczqkKU9OQogp7VswlEqnLfKaOvyWCtmnRawPdQEjahBUFY
	R1lQ==
X-Gm-Message-State: APjAAAWA+MEnfbb9bzAZQ0VojvfhX8gArnQhT++ZW7XfOw0B8NtXubmB
	NT+KpBFMLmq+7tCde/cjgGv1OQB5
X-Google-Smtp-Source: APXvYqzM+Gd337LsIyxtwJXaKHbtdNA28oCuyaNCSOiurQTO/aC/KdwCP0CJmIXBmHvkhMnDPWt6fQ==
X-Received: by 2002:a05:6830:140f:: with SMTP id
	v15mr17796495otp.218.1582072368341; 
	Tue, 18 Feb 2020 16:32:48 -0800 (PST)
Received: from [192.168.1.14] (74-194-137-49.gtwncmta01.res.dyn.suddenlink.net.
	[74.194.137.49])
	by smtp.gmail.com with ESMTPSA id a30sm68190otc.79.2020.02.18.16.32.47
	for <blinux-list@redhat.com>
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Tue, 18 Feb 2020 16:32:47 -0800 (PST)
Subject: Re: early warning I hope
To: blinux-list@redhat.com
References: <alpine.NEB.2.21.2002180400500.24018@panix1.panix.com>
	<CAJKfDDG-bs1DZNRrV=xg9TC6fqsV--q=rm7WiK6PPXCLVGC9tQ@mail.gmail.com>
	<CAO2sX32QD1my9ZTYN=uX864Q8bc+fqb1Ae90MQqrdjaZ9_QBOA@mail.gmail.com>
	<85a0492b-09f3-88d9-4a9d-4ba69ad6830c@free.fr>
Message-ID: <642db17f-a442-551b-4c4a-a31ab2ca971e@gmail.com>
Date: Tue, 18 Feb 2020 18:32:47 -0600
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
	Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <85a0492b-09f3-88d9-4a9d-4ba69ad6830c@free.fr>
Content-Language: en-US
X-MC-Unique: 0gyqjRTzPD-K8yH_lepIZQ-1
X-MC-Unique: T0luN4fPPdeFJEF09zfIJg-1
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.4
X-MIME-Autoconverted: from quoted-printable to 8bit by
	lists01.pubmisc.prod.ext.phx2.redhat.com id 01J0Ws5V029650
X-loop: blinux-list@redhat.com
From: Linux for blind general discussion <blinux-list@redhat.com>
X-BeenThere: blinux-list@redhat.com
X-Mailman-Version: 2.1.12
Precedence: junk
Reply-To: blinux-list@redhat.com
List-Id: Linux for blind general discussion <blinux-list.redhat.com>
List-Unsubscribe: <https://www.redhat.com/mailman/options/blinux-list>,
	<mailto:blinux-list-request@redhat.com?subject=unsubscribe>
List-Archive: <https://www.redhat.com/archives/blinux-list>
List-Post: <mailto:blinux-list@redhat.com>
List-Help: <mailto:blinux-list-request@redhat.com?subject=help>
List-Subscribe: <https://www.redhat.com/mailman/listinfo/blinux-list>,
	<mailto:blinux-list-request@redhat.com?subject=subscribe>
Sender: blinux-list-bounces@redhat.com
Errors-To: blinux-list-bounces@redhat.com
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Content-Transfer-Encoding: base64

SSBoYXZlbid0IHBsYXllZCB3aXRoIFNsaW50IHlldCwgYnV0IEkndmUgaW5zdGFsbGVkIFVidW50
dSAxOC4wNCBvbiAKbXVsdGlwbGUgc3lzdGVtcyB3aXRoIG5vIHNpZ2h0ZWQgYXNzaXN0YW5jZSB3
aGF0c29ldmVyLgoKCk9uIDIvMTgvMjAgODoxNyBBTSwgTGludXggZm9yIGJsaW5kIGdlbmVyYWwg
ZGlzY3Vzc2lvbiB3cm90ZToKPiBIZWxsbywKPgo+IERpZGllciBTcGFpZXIsIFNsaW50IG1haW50
YWluZXIgaGVyZS4KPgo+IFNsaW50IGlzIHRoZSBtb3N0IGFjY2Vzc2libGUgTGludXggZGlzdHJp
YnV0aW9uIG91dCBvZiB0aGUgYm94Lgo+Cj4gSXQgY2FuIGJlIGluc3RhbGxlZCB3aWhvdXQgYW55
IHNpZ2h0ZWQgaGVscCwgYXQgbGVhc3QgYnkgc29tZW9uZSBub3QKPiBhZnJhaWQgdG8gdHlwZSBh
IGZldyBjb21tYW5kcyBhbmQgcmVhZCB0aGVzZSBkb2N1bWVudHMgYmVmb3JlIGluc3RhbGxpbmc6
Cj4gaHR0cDovL3NsYWNrd2FyZS51ay9zbGludC94ODZfNjQvc2xpbnQtMTQuMi4xL1JFQURNRS5p
bnN0YWxsYXRpb24KPiBodHRwOi8vc2xhY2t3YXJlLnVrL3NsaW50L3g4Nl82NC9zbGludC0xNC4y
LjEvZG9jL0FjY2Vzc2liaWxpdHkvQWNjZXNzaWJpbGl0eQo+Cj4gSSB3aWxsIGJlIGhhcHB5IHRv
IGhlYXIgZGlmZmVyaW5nIG9waW5pb25zLCBhcyBsb25nIGFzIHRoZXkgY29tZSBmcm9tCj4gYmxp
bmQgcGVvcGxlIHdobyB0cmllZCB0byBpbnN0YWxsIGFuZCB1c2UgU2xpbnQgPHNtaWxlPgo+Cj4g
QmVzdCByZWdhcmRzLAo+Cj4gRGlkaWVyCj4gICAKPgo+IExlIDE4LzAyLzIwMjAgw6AgMTU6MDQs
IExpbnV4IGZvciBibGluZCBnZW5lcmFsIGRpc2N1c3Npb24gYSDDqWNyaXTCoDoKPj4gSSd2ZSBu
ZXZlciB1c2VkIEFyY2ggb3IgYW55IG9mIGl0cyBkZXJpdmF0aXZlcywgc28gSSBjYW4ndCByZWFs
bHkgaGVscAo+PiB3aXRoIHRoZSBvcmlnaW5hbCBwb3N0ZXIncyBwcm9ibGVtLi4uIHRob3VnaCBJ
IHdvdWxkJ3ZlIHRob3VnaHQgdGhlCj4+IG9sZCBLZXJuZWwgd291bGQndmUgYmVlbiBsZWZ0IGlu
IHBsYWNlIGFuZCBzaWdodGVkIGFzc2lzdGVuY2UgY291bGQgYmUKPj4gdXNlZCB0byBzZWxlY3Qg
aXQgZnJvbSBHUlVCIG9yIHdoYXRldmVyIGFsdGVybmF0aXZlIGJvb3QgbG9hZGVyIG9uZSBpcwo+
PiB1c2luZy4KPj4KPj4gSSBkbyBmaW5kIHRoZSBoYXJzaCBjcml0aWNpc20gb2YgQXJjaCBhcyBh
biBhY2Nlc3NpYmxlIExpbnV4IG9wdGlvbgo+PiBhbmQgdGhlIHJlY29tbWVuZGF0aW9uIG9mIERl
YmlhbiBTdGFibGUgYW5kIFVidW50dSBpbnN0ZWFkIGEgYml0Cj4+IGV5ZWJyb3cgcmFpc2luZyB0
aG91Z2guIFNlZW1zIGxpa2UgaGFsZiB0aGUgaXNzdWVzIHBlb3BsZSBoYXZlIG9uIHRoZQo+PiBP
cmNhIE1haWxpbmcgbGlzdCBjb21lIGRvd24gdG8gRGViaWFuIFN0YWJsZSBhbmQgVWJ1bnR1KGFu
ZCBlc3BlY2lhbGx5Cj4+IDE4LjA0KSBoYXZpbmcgb3V0LW9mLWRhdGUgYWNjZXNzaWJpbGl0eSBz
dGFja3MsIGFuZCBmcm9tIHdoYXQgSSd2ZQo+PiBoZWFyZCBvdmVyIHRoZSB5ZWFycyBmcm9tIHZh
cmlvdXMgc291cmNlcywgQXJjaCBzZWVtcyB0byBiZSB0aGUgbW9zdAo+PiBwb3B1bGFyIGFsdGVy
bmF0aXZlIHRvIERlYmlhbiBhcyBhIGJhc2UgZm9yIGN1c3RvbSwKPj4gYWNjZXNzaWJpbGl0eS1m
b2N1c2VkIGRpc3Ryb3MuCj4+Cj4+IEFkbWl0dGVkbHksIEknZCBwcm9iYWJseSByZWNvbW1lbmQg
RGViaWFuIHN0YWJsZSB0byBhIHNpZ2h0ZWQgTGludXgKPj4gbmV3YmllLCBidXQgYWNjZXNzaWJp
bGl0eSBpcyBvbmUgYXJlYSB3aGVyZSBEZWJpYW4ncyBmb2N1cyBvbgo+PiBzdGFiaWxpdHkgb3Zl
ciBjdXR0aW5nIGVkZ2UgZG9lcyBtb3JlIGhhcm0gdGhhbiBnb29kLi4uIEknZCBwcm9iYWJseQo+
PiByZWNvbW1lbmQgS25vcHBpeCBydW5uaW5nIGluIEFkcmlhbmUgbW9kZSB0byBhIGJsaW5kIHBl
cnNvbiBpbnRlcmVzdGVkCj4+IGluIGxlYXJuaW5nIExpbnV4LCBidXQgaXQncyBiZWVuIHllYXJz
IHNpbmNlIHRoZXJlIHdlcmUgYW55IG9mZmljaWFsCj4+IEtub3BwaXggaW1hZ2VzIHdpdGggQWRy
aWFuZSBhcyB0aGUgZGVmYXVsdCBib290IG9wdGlvbiwgYW5kIHdoaWxlIGl0J3MKPj4gYSBvbmUg
bGluZSBlZGl0IHRvIGEgc2luZ2xlIHRleHQgZmlsZSB3aXRoaW4gdGhlIElTTyB0byBtYWtlIEFk
cmlhbmUKPj4gdGhlIGRlZmF1bHQsIEkga25vdyBubyBtZWFucyBvZiBkaXJlY3RseSBlZGl0aW5n
IGFuIElTTywgYW5kIHRoZQo+PiBtZXRob2QgSSd2ZSBiZWVuIHVzaW5nIHRvIG1ha2UgQWRyaWFu
ZSBEVkRzIG9mIG1vdW50LCBjb3B5LCBlZGl0LAo+PiByZWJ1aWxkLCBidXJuIGlzIHJhdGhlciBp
bnZvbHZlZC4uLiBQbHVzLCBLbm9wcGl4IGlzIG9ubHkgcmVhbGx5Cj4+IGRlc2lnbmVkIHdpdGgg
bGl2ZSB1c2UgaW4gbWluZCwgc28gd2hpbGUgaXQncyBhbWF6aW5nIGZvciBzeXN0ZW0KPj4gcmVz
Y3VlIG9yIGhhdmluZyBhIHBvcnRhYmxlIGNvcHkgb2YgTGludXgsIGl0J3Mgbm90IHRoZSBiZXN0
IGZvciBhCj4+IHByaW1hcnkgT1MuCj4+Cj4+Cj4+IF9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCj4+IEJsaW51eC1saXN0IG1haWxpbmcgbGlzdAo+PiBCbGlu
dXgtbGlzdEByZWRoYXQuY29tCj4+IGh0dHBzOi8vd3d3LnJlZGhhdC5jb20vbWFpbG1hbi9saXN0
aW5mby9ibGludXgtbGlzdAo+Pgo+Cj4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KPiBCbGludXgtbGlzdCBtYWlsaW5nIGxpc3QKPiBCbGludXgtbGlzdEBy
ZWRoYXQuY29tCj4gaHR0cHM6Ly93d3cucmVkaGF0LmNvbS9tYWlsbWFuL2xpc3RpbmZvL2JsaW51
eC1saXN0CgotLSAKQ2hyaXN0b3BoZXIgKENKKQpDaGFsdGFpbiBhdCBHbWFpbAoKCl9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkJsaW51eC1saXN0IG1haWxp
bmcgbGlzdApCbGludXgtbGlzdEByZWRoYXQuY29tCmh0dHBzOi8vd3d3LnJlZGhhdC5jb20vbWFp
bG1hbi9saXN0aW5mby9ibGludXgtbGlzdA==

