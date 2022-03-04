Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id B79524CDC87
	for <lists+blinux-list@lfdr.de>; Fri,  4 Mar 2022 19:32:09 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1646418728;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=a9bkF8mwWHSZWsBGbRLWOoHOzviWCHPpFfdJKv4MF3g=;
	b=CLOqeZg9GEO+Yf0I1q4gr6j5W+1Y9ABbZvVFxW/PbpyNgz4cnvonZsRs2+9EgAv6OAZry5
	nrAAyGi6Bwb32mzH3d7a6WN7+c6faBUuwHe6osYhYAYG3LACjZ7x9S42fb2poijw5/y4JG
	BHNNwoKFXZwTggHg4ozLDSw1LPtuKN8=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-652-PPGaUmNmNwa2nhxXCJjUFA-1; Fri, 04 Mar 2022 13:32:05 -0500
X-MC-Unique: PPGaUmNmNwa2nhxXCJjUFA-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com [10.5.11.23])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 293A7520F;
	Fri,  4 Mar 2022 18:32:01 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 92B6AE728;
	Fri,  4 Mar 2022 18:32:00 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id A2D911809C98;
	Fri,  4 Mar 2022 18:31:59 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx09.intmail.prod.int.rdu2.redhat.com
	[10.11.54.9])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 224IVuHr029976 for <blinux-list@listman.util.phx.redhat.com>;
	Fri, 4 Mar 2022 13:31:56 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 0581D469A57; Fri,  4 Mar 2022 18:31:56 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast09.extmail.prod.ext.rdu2.redhat.com [10.11.55.25])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 017F4469A55
	for <blinux-list@redhat.com>; Fri,  4 Mar 2022 18:31:55 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [205.139.110.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id CD1D22A2AD74
	for <blinux-list@redhat.com>; Fri,  4 Mar 2022 18:31:55 +0000 (UTC)
Received: from ams1.kyle.tk (kyle.tk [45.148.122.133]) by relay.mimecast.com
	with ESMTP with STARTTLS (version=TLSv1.2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-410-jokDsn3cMBysZj_BC2XnhA-1; Fri, 04 Mar 2022 13:31:54 -0500
X-MC-Unique: jokDsn3cMBysZj_BC2XnhA-1
Received: from localhost (localhost [127.0.0.1])
	by ams1.kyle.tk (Postfix) with ESMTP id A27F01BBE00
	for <blinux-list@redhat.com>; Fri,  4 Mar 2022 18:31:52 +0000 (UTC)
X-Virus-Scanned: Debian amavisd-new at ams1.kyle.tk
Received: from ams1.kyle.tk ([127.0.0.1])
	by localhost (ams1.kyle.tk [127.0.0.1]) (amavisd-new, port 10026)
	with LMTP id lEW5bVhXuUxC for <blinux-list@redhat.com>;
	Fri,  4 Mar 2022 18:31:51 +0000 (UTC)
Received: from [IPV6:2603:6080:6302:e002:8616:d376:ace:323b]
	(2603-6080-6302-e002-8616-d376-0ace-323b.res6.spectrum.com
	[IPv6:2603:6080:6302:e002:8616:d376:ace:323b])
	(Authenticated sender: kyle@free2.ml)
	by ams1.kyle.tk (Postfix) with ESMTPSA id AA3621BB099
	for <blinux-list@redhat.com>; Fri,  4 Mar 2022 18:31:51 +0000 (UTC)
Message-ID: <69aeb26c-58e1-734c-5109-607e23808a95@free2.ml>
Date: Fri, 4 Mar 2022 13:31:48 -0500
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
	Thunderbird/91.5.0
Subject: Re: Google is nuking simple username/password sign ins?
To: Linux for blind general discussion <blinux-list@redhat.com>
References: <YiHciAX/R+L65BU3@waffles>
	<f49b0dd9-8fe2-9ec1-1d49-ff5ce164ded9@free2.ml>
	<9a21f28f-c957-cb53-af3e-8c0ad9f24c5@panix.com>
	<dee2c9a3-7810-1fad-c87c-16007ad8e739@free2.ml>
	<7ac5cb2e-7110-4b77-a396-1e53393934a0@verizon.net>
In-Reply-To: <7ac5cb2e-7110-4b77-a396-1e53393934a0@verizon.net>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.85 on 10.11.54.9
X-MIME-Autoconverted: from quoted-printable to 8bit by
	lists01.pubmisc.prod.ext.phx2.redhat.com id 224IVuHr029976
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
Content-Language: en-US
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"

RG8geW91IGhhdmUgcG9pbnRlcnMgdG8gaW5mb3JtYXRpb24gaG93IHRvIGRvIHRoYXQ/wqAgSSdt
IG5vbmUgdG9vIHN1cmUgSSAKa25vdyBlbm91Z2gsIGJ1dCBJJ2QgbGlrZSB0byBjaGVjayBpdCBv
dXQuCgoKU3VyZS4gQXNpZGUgZnJvbSBteSBleHBlcmllbmNlcyB3aXRoIExpbmVhZ2VPUyBmb3Ig
TWljcm9HCgpodHRwczovL2xpbmVhZ2UubWljcm9nLm9yZy8KCnRoYXQgSSBqdXN0IHBvc3RlZCwg
SSBoYXZlIGEgdnBzIHRoYXQgcnVucyBlbWFpbCwgYW5kIGl0IGFsc28gaGFzIApOZXh0Q2xvdWQg
cnVubmluZyBvbiBpdC4gSW4gb3JkZXIgdG8gc2VsZi1ob3N0IHdlYnNpdGVzIGFuZCBldmVuIHlv
dXIgCk5leHRDbG91ZCwgeW91IGNhbiBwcm9iYWJseSB1c2UgYSBob21lLWJhc2VkIHNlcnZlciBp
ZiB5b3VyIGNvbm5lY3Rpb24gCmlzIGdvb2QgZW5vdWdoLCBidXQgYmVjYXVzZSBlbWFpbCBwcm92
aWRlcnMgaGF2ZSBkb25lIGFsbCB0aGV5IGNhbiB0byAKa2VlcCByZWd1bGFyIHVzZXJzIGZyb20g
YmVpbmcgYWJsZSB0byBob3N0IHRoZWlyIG93biBlbWFpbCBzbyB0aGF0IHRoZXkgCmNhbiBnZXQg
YWxsIHRoZSB0cmFmZmljLCBiYWNrIGluIHRoZSBkYXkgdGhleSB1c2VkIHRvIGNhbGwgdGhhdCB0
cmFmZmljIApwdW1waW5nLCBhbmQgaXQgd2FzIGZyb3duZWQgdXBvbiwgd2VsbCB0aGVzZSBkYXlz
LCB0aGV5IGNhbGwgaXQgc2VjdXJpdHkgCmFuZCB0aGF0IG1ha2VzIGV2ZXJ5dGhpbmcgT0suIElu
IGFueSBjYXNlLCBub3cgeW91IG5lZWQgYSBWUFMgKHZpcnR1YWwgCnByaXZhdGUgc2VydmVyKSBp
biBvcmRlciB0byBzZW5kIGVtYWlsIHRoYXQgd29uJ3QgZ2V0IG1hcmtlZCBhcyBzcGFtIG9yIApv
dXRyaWdodCByZWplY3RlZCBieSBtb3N0IG9mIHRoZSBiaWcgbmFtZXMgdGhhdCB3aWxsIGxpa2Vs
eSBob2xkIHRoZSAKZW1haWwgYWRkcmVzc2VzIGZvciB0aGUgcmVjaXBpZW50cyBvZiBtb3N0IG9m
IHlvdXIgZW1haWxzLiBUaGUgZWFzaWVzdCAKYW5kIGxlYXN0IGV4cGVuc2l2ZSB3YXkgdG8gZ2V0
IHN0YXJ0ZWQgd2l0aCB0aGF0IGlzIGJ5IHVzaW5nCgpjbG91ZC5vcmFjbGUuY29tLwoKd2hpY2gg
aGFzIGEgY29tcGxldGVseSBmcmVlIGZvcmV2ZXIgcHJpY2luZyB0aWVyLiBZb3UgY2FuIGdldCAy
MDBHQiBvZiAKZGlzayBzcGFjZSwgMSA2NC1iaXQgc2luZ2xlLWNvcmUgQU1EIHZpcnR1YWwgbWFj
aGluZSB3aXRoIDFHQiBvZiBSQU0gYW5kIAphcyBtYW55IGFzIDQgQW1wZXJlIEFSTSBwcm9jZXNz
b3IgY29yZXMgd2l0aCAyNEdCIG9mIFJBTSwgYWxsIGNvbXBsZXRlbHkgCmZyZWUuIFRoZXkgYWxz
byBoYXZlIHNvbWUgZGF0YWJhc2Ugc3R1ZmYgYW1vbmcgb3RoZXIgdGhpbmdzIHRoYXQgeW91IGNh
biAKZ2V0IHRvIGdvIGFsb25nIHdpdGggdGhhdCzCoCBidXQgSSBmaW5kIHRoZSBjb21wbGV0ZSB2
aXJ0dWFsIHNlcnZlciAKY29uZmlndXJhdGlvbnMgdG8gYmUgdGhlIG1vc3QgZWZmZWN0aXZlIGZv
ciBteSBob3N0aW5nIG5lZWRzLiBUaGVpciBPUyAKaW1hZ2VzIGFyZSBsaW1pdGVkIHRvIHByaW1h
cmlseSBVYnVudHUgTFRTIGFuZCBPcmFjbGUgTGludXgsIHdoaWNoIGlzIAplc3NlbnRpYWxseSBD
ZW50T1MgKGJlZm9yZSBpdCB3YXMgQ2VudE9TIFN0cmVhbSksIHNvIEkgd291bGQgd2FpdCB1bnRp
bCAKVWJ1bnR1IDIyLjA0IGlzIHJlbGVhc2VkIGFuZCBiZWNvbWVzIGF2YWlsYWJsZSwgYXMgeW91
IHByb2JhYmx5IGRvbid0IAp3YW50IDIwLjA0IG5vdy4gVGhpcyBmcmVlIHByaWNpbmcgdGllciB3
aWxsIGhlbHAgbW9zdCBwZW9wbGUgd2hvIGp1c3QgCndhbnQgdG8gaG9zdCB0aGVpciBvd24gc3R1
ZmYsIGFsbCBleGNlcHQgbWFpbCwgd2hpY2ggbWF5IHJlcXVpcmUgcGF5aW5nIAphIHNtYWxsIGZl
ZSB0byBnZXQgc3VwcG9ydCB0byBzZXQgdXAgdGhlIHJldmVyc2UgRE5TIGZvciBlbWFpbCBob3N0
aW5nLiAKVGhlcmUgaXMgbm90aGluZyBlbHNlIGZyZWUgb3IgZXZlbiBjbG9zZSB0aGF0IHdpbGwg
ZG8gYWxsIG9mIHdoYXQgeW91IApjYW4gaG9zdCB3aXRoIE9yYWNsZSwgYnV0IG1hbnkgcGVvcGxl
IHdpbGwgd2FudCB0byBhdm9pZCB0aGVtIGFzIHdlbGwsIAphbmQgSSBvbmx5IG1lbnRpb24gdGhl
bSBiZWNhdXNlIG9mIHRoZSBwcmljZSwgd2hpY2ggdHJ1bHkgaXMgdW5iZWF0YWJsZSAKZm9yIGFs
bCB5b3UgY2FuIGdldC4gVGhhdCBzYWlkLCBJIGN1cnJlbnRseSBoYXZlIG15IHNlbGYtaG9zdGVk
IGVtYWlsLCAKTmV4dENsb3VkIGFuZCBvdGhlciB3ZWJzaXRlcyBvbiBhIHNlcnZlciBhdCBTS0Ig
RW50ZXJwcmlzZSwgaG9zdGVkIGluIApBbXN0ZXJkYW0sICJvbmUgb2YgdGhlIGJpZ2dlc3QgaW50
ZXJuZXQgaHVicyBvZiB0aGUgd29ybGQsIiBiZWNhdXNlIApPcmFjbGUgaGFzIG5vdCBleGFjdGx5
IGJlZW4gdHJ1c3R3b3J0aHkgb3ZlciB0aGUgeWVhcnMsIGFuZCBhbHNvIGJlY2F1c2UgCkkganVz
dCBmb3VuZCBvdXQgYWJvdXQgMyBtb250aHMgYWdvIGFib3V0IE9yYWNsZSBDbG91ZCwgYW5kIGFj
dHVhbGx5LCAKdGhleSBoYXZlbid0IGRpc2FwcG9pbnRlZCBtZSB5ZXQsIHdpdGggdGhlIGV4Y2Vw
dGlvbiBvZiB0aGUgcmV2ZXJzZSBETlMgCihQVFIgcmVjb3JkKSB0aGF0IHRoZXkgZG9uJ3QgaGF2
ZSBpbiB0aGUgY29uc29sZSB3aGVyZSBJIGNhbiBzZXQgaXQgdXAgCm15c2VsZiwgc28gZW1haWwg
d291bGQgYmUgYSBwYWluIHRvIGdldCBnb2luZyB3aXRob3V0IGdldHRpbmcgY2F1Z2h0IGJ5IApt
b3N0IHNwYW0gZGV0ZWN0aW9uIHN5c3RlbXMuIEkgaGF2ZSBhIHJlZmVycmFsIGxpbmsgZm9yIFNL
QiBFbnRlcnByaXNlIAp0aGF0IHlvdSBjYW4gY2hlY2sgb3V0IGJ5IGdvaW5nIHRvCgpodHRwczov
L2NsaWVudHMuc2tiLWVudGVycHJpc2UuY29tL2FmZi5waHA/YWZmPTk0CgpUaGUgcHJpY2UgZm9y
IGEgMTAwR0IgZGlzaywgMiBBTUQgQ1BVIGNvcmVzIGFuZCA0R0Igb2YgUkFNIGlzIDYuNTAgCmV1
cm9zLG9yIHRoZXkgaGF2ZSBhIDUwR0IgZGlzaywgYSBzaW5nbGUgQU1EIGNvcmUgYW5kIDJHQiBv
ZiBSQU0sIApzdWl0YWJsZSBmb3IgbW9zdCBiYXNpYyBzZXJ2aWNlcyB5b3UgbWF5IHdhbnQgdG8g
c2VsZi1ob3N0LCBmb3IgMy41MCBldXJvcy4KCgouIEkgaGF2ZSBhbHNvIHVzZWQgQ2h1bmtIb3N0
CgpodHRwczovL2NodW5raG9zdC5jb20vci9LeWxlCgp3aGljaCBvZmZlcnMgNTBHQiBvZiBkaXNr
IHNwYWNlLCBhIHNpbmdsZSBBTUQgQ1BVIGNvcmUgYW5kIDJHQiBvZiBSQU0sIApkb3VibGVkIHRv
IDRHQiBpZiB5b3UgcGF5IGZvciBhIGZ1bGwgeWVhciwgZm9yICQ1L21vbnRoICgkNjAveWVhciks
IApob3N0ZWQgaW4gTG9zIEFuZ2VsZXMsIENhbGlmb3JuaWEsIHdoaWNoIGFsc28gaGFzIGZhaXJs
eSBnb29kIGNvbm5lY3Rpdml0eS4KCgpBcyBmb3IgZ2V0dGluZyBlbWFpbCBhbmQgd2Vic2l0ZXMg
dGhlbXNlbHZlcyB1cCBhbmQgcnVubmluZywgdGhlIGJlc3QgCmFuZCBlYXNpZXN0IHRoaW5nIEkn
dmUgZm91bmQgaXMgSVNQQ29uZmlnCgpodHRwczovL2lzcGNvbmZpZy5vcmcvCgpJdCdzIGp1c3Qg
YSBjb250cm9sIHBhbmVsIHRoYXQgeW91IGluc3RhbGwgb24geW91ciBVYnVudHUsIERlYmlhbiBv
ciAKQ2VudE9TIHNlcnZlciwgYW5kIGl0IG1ha2VzIHNldHRpbmcgdXAgd2Vic2l0ZXMgYW5kIGVz
cGVjaWFsbHkgZW1haWwgCmJveGVzIG5lYXJseSBhcyBlYXN5IGFzIHRoZSBwcm92ZXJiaWFsIHBp
ZS4gSSBwZXJzb25hbGx5IGxpa2UgCmNhZGR5c2VydmVyIGZvciB3ZWJzaXRlcywgYnV0IGl0IGRv
ZXNuJ3QgZG8gZm9yIG1haWwgd2hhdCBpdCBkb2VzIGZvciAKd2Vic2l0ZXMsIGFuZCBJU1BDb25m
aWcgZG9lc24ndCBzdXBwb3J0IGl0LiBCdXQgaXQgZG9lcyBzdXBwb3J0IEFwYWNoZSwgCndoaWNo
IGlzIG9uZSBvZiB0aGUgb25seSBzZXJ2ZXJzIGF2YWlsYWJsZSB0aGF0IHN1cHBvcnRzIC5odGFj
Y2VzcyBmb3IgCmV2ZXJ5dGhpbmcgZnJvbSByZXdyaXRlcyB0byBjdXN0b20gZXJyb3IgcGFnZXMg
d3JpdHRlbiBpbiBwaHAgdG8gYWxsIApraW5kcyBvZiBvdGhlciB0aGluZ3MgdGhhdCBhcmUgZGlz
dHJpYnV0ZWQgd2l0aCBtb3N0IG9wZW4gc291cmNlIHdlYiAKYXBwbGljYXRpb25zLCBzbyBJJ20g
Z29vZCB3aXRoIHRoYXQuIElTUENvbmZpZyBkb2VzIHJlcXVpcmUgc29tZSAKZW11bGF0ZWQgbW91
c2UgY2xpY2tzIHVzaW5nIE9yY2EsIGJ1dCBpdCByZWFsbHkgaXMgb25lIG9mIHRoZSBlYXNpZXN0
IAp3YXlzIHRvIGdldCB0aGluZ3MgZ29pbmcsIGFuZCB0aGUgUGVyZmVjdCBTZXJ2ZXIgdHV0b3Jp
YWxzIG9uIEhvd3RvRm9yZ2UgCmFyZSBoaWdobHkgdmFsdWVkIGFzIHdlbGwuCgoKV2VsbCwgdGhp
cyBpcyBnZXR0aW5nIHJhdGhlciBsb25nLCBhbmQgcHJvYmFibHkgbW9yZSBpbnZvbHZlZCB0aGFu
IHdoYXQgCnlvdSB3YW50ZWQsIGJ1dCB0aGF0J3MgbXkgYmFzaWMgc3RhcnRlciBraXQsIHNvIGZl
ZWwgZnJlZSB0byBhc2sgbWUgYW55IApxdWVzdGlvbnMuCgp+S3lsZQoKCl9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkJsaW51eC1saXN0IG1haWxpbmcgbGlz
dApCbGludXgtbGlzdEByZWRoYXQuY29tCmh0dHBzOi8vbGlzdG1hbi5yZWRoYXQuY29tL21haWxt
YW4vbGlzdGluZm8vYmxpbnV4LWxpc3Q=

