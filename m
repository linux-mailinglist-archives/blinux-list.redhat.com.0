Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTP id 4F964370387
	for <lists+blinux-list@lfdr.de>; Sat,  1 May 2021 00:34:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1619822076;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=cCvgEyLGs4DGSckPDvhdBiaEziK+6biFQLLLHY8avBw=;
	b=JL3nFjPpk1rEqS8MxSkwhTkXYspgv+d1DrE4s4VUFAJTZ2YLt38QosccpZXPfiI1LZmHs5
	cdjudzlB58s1L1kwNWiMOM+bHpXIukTAX78ZgP60nHXQjxZx8Ywho9pbejYC18FCdTXe1w
	FwzEltMPle0FqB53tFp2hiYdDl3uUGw=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-134-bFFZF37BOK-iuQ7LhlA5tQ-1; Fri, 30 Apr 2021 18:34:34 -0400
X-MC-Unique: bFFZF37BOK-iuQ7LhlA5tQ-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.12])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id CFCC68049CD;
	Fri, 30 Apr 2021 22:34:30 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id E89CC60C04;
	Fri, 30 Apr 2021 22:34:29 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 0593B1800BBE;
	Fri, 30 Apr 2021 22:34:29 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.rdu2.redhat.com
	[10.11.54.5])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 13UMWQ3E004109 for <blinux-list@listman.util.phx.redhat.com>;
	Fri, 30 Apr 2021 18:32:26 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 5572D11FC9A; Fri, 30 Apr 2021 22:32:26 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast01.extmail.prod.ext.rdu2.redhat.com [10.11.55.17])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 4C8FF11FC9C
	for <blinux-list@redhat.com>; Fri, 30 Apr 2021 22:32:22 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[205.139.110.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 44AAC858F0D
	for <blinux-list@redhat.com>; Fri, 30 Apr 2021 22:32:22 +0000 (UTC)
Received: from mailbackend.panix.com (mailbackend.panix.com [166.84.1.89])
	(Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-54-KohFzgRWNjqofvVOYX-cJw-1; Fri, 30 Apr 2021 18:32:19 -0400
X-MC-Unique: KohFzgRWNjqofvVOYX-cJw-1
Received: from panix1.panix.com (panix1.panix.com [166.84.1.1])
	by mailbackend.panix.com (Postfix) with ESMTP id 4FX6Yv3R5szNL2
	for <blinux-list@redhat.com>; Fri, 30 Apr 2021 18:32:19 -0400 (EDT)
Received: by panix1.panix.com (Postfix, from userid 20712)
	id 4FX6Yv2glRzcbc; Fri, 30 Apr 2021 18:32:19 -0400 (EDT)
Received: from localhost (localhost [127.0.0.1])
	by panix1.panix.com (Postfix) with ESMTP id 4FX6Yv2JWszcbW
	for <blinux-list@redhat.com>; Fri, 30 Apr 2021 18:32:19 -0400 (EDT)
Date: Fri, 30 Apr 2021 18:32:19 -0400
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: Best Distro for Blind
In-Reply-To: <3BAC4A96-38E0-406A-B953-9ABEC697F9BF@yahoo.com>
Message-ID: <alpine.NEB.2.23.451.2104301825160.29373@panix1.panix.com>
References: <83f266d2-b046-11a3-f738-3a537a26cc86@gmail.com>
	<3BAC4A96-38E0-406A-B953-9ABEC697F9BF@yahoo.com>
MIME-Version: 1.0
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.79 on 10.11.54.5
X-MIME-Autoconverted: from QUOTED-PRINTABLE to 8bit by
	lists01.pubmisc.prod.ext.phx2.redhat.com id 13UMWQ3E004109
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SSB0aGluayBpdCBtYXkgYmUgcG9zc2libGUgd2l0aCB1YnVudHUgbWF0ZSB0byB0b3RhbGx5IGRp
c2FibGUgdGhlCmdyYXBoaWNhbCB1c2VyIGVudmlyb25tZW50IGJ5IG1lYW5zIG9mIGEgc3VkbyBz
eXN0ZW1jdGwgZGlzYWJsZQpkaXNwbGF5LW1hbmFnZXIuc2VydmljZS4KVGhhdCB3YXkgdGhvc2Ug
d2hvIGZ1bmN0aW9uIGJldHRlciBpbiBjb21tYW5kIGxpbmUgZW52aXJvbm1lbnRzIHdvdWxkIGJl
CmFibGUgdG8gdXNlIHRoYXQgZGlzdHJvIGFuZCBoYXZlIGl0IGJvb3QgaW50byBjb25zb2xlLiAg
ZXNwZWFrdXAgb3IgZmVucmlyCndvdWxkIG5lZWQgaW5zdGFsbGluZyBiZWZvcmUgdGhlIGZpcnN0
IHJlYm9vdCBhbmQgZmVucmlyIHdvdWxkIG5lZWQKY29uZmlndXJpbmcgYW5kIGVuYWJsaW5nLgpJ
IGNvdWxkIGxpdmUgd2l0aCB1YnVudHUgY29taW5nIHVwIGluIGNvbnNvbGUgYW5kIHRoZW4gaGF2
ZSB0aGUgb3B0aW9uCnVzaW5nIHN0YXJ0eCB0byBzdGFydCB1cCBtYXRlIGFuZCBvcmNhIGJ1dCBJ
J20gdGhpbmtpbmcgdGhhdCB3b3VsZCBuZWVkCm1vcmUgY29uZmlndXJpbmcgb2YgdWJ1bnR1IHRv
IGdldCB0aGF0IHdvcmtpbmcgcHJvcGVybHkuCkluIGFueSBldmVudCB0aGUgbmVjZXNzYXJ5IGNv
bmZpZ3VyYXRpb24gc3RlcHMgdG8gZG8gdGhpcyB3b3VsZCBiZSBoZWxwZnVsCmZvciB1cyBwcmlt
YXJpbHkgY29uc29sZSB1c2VycyB3aGVuIHdlIGhhdmUgdG8gdXNlIHVidW50dSBhbmQgaGF2ZSB0
aGF0CmRvY3VtZW50ZWQgb24gdGhlIHVidW50dSB3aWtpIGluIGFuIGFwcHJvcHJpYXRlIGxvY2F0
aW9uLgoKCgpPbiBGcmksIDMwIEFwciAyMDIxLCBMaW51eCBmb3IgYmxpbmQgZ2VuZXJhbCBkaXNj
dXNzaW9uIHdyb3RlOgoKPiBJIGFsc28gdmVyeSBtdWNoIHN1Z2dlc3QgVWJ1bnR1IE1hdGUuCj4K
PiA/IE5ldmVyIGJlbmQgeW91ciBoZWFkLiBBbHdheXMgaG9sZCBpdCBoaWdoLiBMb29rIHRoZSB3
b3JsZCBzdHJhaWdodCBpbiB0aGUgZXllLj8KPiB+IEhlbGVuIEtlbGxlcgo+Cj4gPiBPbiBBcHIg
MzAsIDIwMjEsIGF0IDQ6NTMgUE0sIExpbnV4IGZvciBibGluZCBnZW5lcmFsIGRpc2N1c3Npb24g
PGJsaW51eC1saXN0QHJlZGhhdC5jb20+IHdyb3RlOgo+ID4KPiA+IO+7v01hdHRoZXcKPiA+Cj4g
Pgo+ID4KPiA+IEFyZSB5b3UgbG9va2luZyBmb3Igc29tZXRoaW5nIHdpdGhhIEdVSSBpbnN0YWxs
ZXI/IElmIHNvLCBVYnVudHUgbWF0ZSBzaG91bGQgYmUgZ29vZC4gIEFsc28sIEkgYW0gdXNpbmcg
ZmVkb3JhIG1hdGUgc3BpbiBhbmQgaXMgdmVyeSBhY2Nlc3NpbmJsZS4gIFRoZXJlIGlzIGFsc28g
YWNjZXNzaWJsZSBhY2NvY2FudXQgd2hpY2ggaXMgYmFzZWQgb24gdWJ1bnR1IDIwLmpkLiAgQWxz
byBpZiB5b3Ugd2FudCBhIHRleHQgaW5zdGFsbGVyLCBzbGludCBpcyBhIHZlcnkgZ29vZCBjaG9p
Y2UuICAgYWxzbyBkZWJpYW4gaXMgYWxzbyBnb29kLiAgU28sIGFzIHlvdSBjYW4gc2VlIHRoZXJl
IGFyZSBhIGZldyBnb29kIGNob2ljZXMgYXZhbGlibGUuCj4gPgo+ID4KPiA+Cj4gPiBIaSwKPiA+
Cj4gPgo+ID4KPiA+Cj4gPj4gT24gNC8zMC8yMDIxIDE6MjAgUE0sIExpbnV4IGZvciBibGluZCBn
ZW5lcmFsIGRpc2N1c3Npb24gd3JvdGU6Cj4gPj4gSGVsbG8sCj4gPj4KPiA+Pgo+ID4+IEkgYW0g
YSB0b3RhbGx5IGJsaW5kIHBlcnNvbiBhbmQgYSBMT05HIHRpbWUgV2luZG93cy9KYXdzL05WREEg
dXNlci4gSSBhbSB3b25kZXJpbmcgd2hhdCB3b3VsZCBiZSBhIHJlY29tbWVuZGF0aW9uIGZvciB0
aGUgYmVzdCBkaXN0cm8vR1VJIGVudmlyb25tZW50IHRvIGJlZ2luIHVzaW5nPyAgSSB3b3VsZCBs
b3ZlIHRvIGJlIGFibGUgdG8gbW92ZSBhd2F5IGZyb20gV2luZG93cyBhbmQgdXNlIExpbnV4IGZ1
bGwgdGltZSBmb3IgYnJvd3NpbmcsIGVtYWlsLCB3b3JkIHByb2Nlc3NpbmcgYW5kIHNwcmVhZHNo
ZWV0cy4gSSBoYXZlIGEgVGhpbmtwYWQgWDIyMCB0aGF0IEkgY2FuIHVzZSBmb3IgTGludXguIEFi
b3V0IDE1IHllYXJzIGFnbywgSSBwbGF5ZWQgYXJvdW5kIHdpdGggVmVudXgsIGJ1dCB0aGF0IHBy
b2plY3Qgc2VlbXMgdG8gYmUgZG9ybWFudCBub3cuIEkgaGF2ZSBhIFBpIDNCKyBydW5uaW5nIHNv
bWUgaGFtIHJhZGlvIHNvZnR3YXJlIGFuZCBJIGhhdmUgdG8gU1NIIGludG8gaXQgb2NjYXNpb25h
bGx5IGFuZCBwZXJmb3JtIHNvbWUgY29tbWFuZCBsaW5lIHN0dWZmLiBGb3IgZGFpbHkgdXNhZ2Us
IEkgd2FudCBhIGZ1bGwgR1VJIGVudmlyb25tZW50Lgo+ID4+Cj4gPj4KPiA+PiBUaGFua3MgaW4g
YWR2YW5jZSBmb3IgYW55IHN1Z2dlc3Rpb25zLgo+ID4+Cj4gPj4KPiA+PiBKb2huCj4gPj4KPiA+
Pgo+ID4+Cj4gPj4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KPiA+PiBCbGludXgtbGlzdCBtYWlsaW5nIGxpc3QKPiA+PiBCbGludXgtbGlzdEByZWRoYXQu
Y29tCj4gPj4gaHR0cHM6Ly9saXN0bWFuLnJlZGhhdC5jb20vbWFpbG1hbi9saXN0aW5mby9ibGlu
dXgtbGlzdAo+ID4KPiA+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fCj4gPiBCbGludXgtbGlzdCBtYWlsaW5nIGxpc3QKPiA+IEJsaW51eC1saXN0QHJlZGhh
dC5jb20KPiA+IGh0dHBzOi8vbGlzdG1hbi5yZWRoYXQuY29tL21haWxtYW4vbGlzdGluZm8vYmxp
bnV4LWxpc3QKPiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
Xwo+IEJsaW51eC1saXN0IG1haWxpbmcgbGlzdAo+IEJsaW51eC1saXN0QHJlZGhhdC5jb20KPiBo
dHRwczovL2xpc3RtYW4ucmVkaGF0LmNvbS9tYWlsbWFuL2xpc3RpbmZvL2JsaW51eC1saXN0CgoK
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KQmxpbnV4LWxp
c3QgbWFpbGluZyBsaXN0CkJsaW51eC1saXN0QHJlZGhhdC5jb20KaHR0cHM6Ly9saXN0bWFuLnJl
ZGhhdC5jb20vbWFpbG1hbi9saXN0aW5mby9ibGludXgtbGlzdA==

