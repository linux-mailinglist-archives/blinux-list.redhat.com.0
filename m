Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [216.205.24.124])
	by mail.lfdr.de (Postfix) with ESMTP id 917033CB702
	for <lists+blinux-list@lfdr.de>; Fri, 16 Jul 2021 13:51:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1626436271;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=E7ocsiVVSRneLUaTpOwYBBOViQ5pBxurVBjggUwaKNU=;
	b=LJwOQVoVXTd7DY50rMNAS1/cxDpS40OJu7dJhqjXt/J4xXMGvBcXbInM9m9/9EChXDWLAZ
	pb3PnoFC42MdNhNtLE4SCECfcYSBcJFfZFlMKrb9N4OZ3NrmvZB0AMR/j6TsP3WvVS7KJ7
	dvN19p0Q/Iep2qCsedViX+XeaVtc6NQ=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-33-WppMaQfAP92V9VYJhsvjig-1; Fri, 16 Jul 2021 07:51:10 -0400
X-MC-Unique: WppMaQfAP92V9VYJhsvjig-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com [10.5.11.13])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id A68E8804141;
	Fri, 16 Jul 2021 11:51:05 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 3787460862;
	Fri, 16 Jul 2021 11:51:04 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id A3D861809C99;
	Fri, 16 Jul 2021 11:51:00 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.rdu2.redhat.com
	[10.11.54.3])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 16GBoqfY014782 for <blinux-list@listman.util.phx.redhat.com>;
	Fri, 16 Jul 2021 07:50:52 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 7838410545B8; Fri, 16 Jul 2021 11:50:52 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast06.extmail.prod.ext.rdu2.redhat.com [10.11.55.22])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 741BE10545AF
	for <blinux-list@redhat.com>; Fri, 16 Jul 2021 11:50:49 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [207.211.31.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
	bits)) (No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 7931F187506C
	for <blinux-list@redhat.com>; Fri, 16 Jul 2021 11:50:49 +0000 (UTC)
Received: from darkstar.slint.fr (darkstar.slint.fr [172.105.89.79]) by
	relay.mimecast.com with ESMTP id us-mta-535-Wm4fHTyKNCelMjExCe35Kw-1;
	Fri, 16 Jul 2021 07:50:47 -0400
X-MC-Unique: Wm4fHTyKNCelMjExCe35Kw-1
Received: from ici.slint.fr (sfa89-1-78-208-157-71.fbx.proxad.net
	[78.208.157.71])
	by darkstar.slint.fr (Postfix) with ESMTPSA id 9E3F1A41A8
	for <blinux-list@redhat.com>; Fri, 16 Jul 2021 12:50:14 +0200 (CEST)
Subject: Re: Transfering Thunderbird folder
To: blinux-list@redhat.com
References: <4037ad15-b52e-f0a5-4af5-2b8b6f782205@gmail.com>
	<388d8a75-302b-1519-cf7d-17cdc5c81345@protonmail.com>
	<c917c3f4-6ee3-4a42-cf5f-cf59c22ae981@gmail.com>
	<a5fd7406-b1df-33d6-caad-e3a6e7b0a94a@slint.fr>
	<1c45b30a-c424-b5a4-9209-63334e097712@gmail.com>
Message-ID: <02c45c05-f8da-31a1-ae6f-e0a761823b3f@slint.fr>
Date: Fri, 16 Jul 2021 13:50:36 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
	Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <1c45b30a-c424-b5a4-9209-63334e097712@gmail.com>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.3
X-MIME-Autoconverted: from quoted-printable to 8bit by
	lists01.pubmisc.prod.ext.phx2.redhat.com id 16GBoqfY014782
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"

WW91IGFyZSB3ZWxjb21lLCBnbGFkIGlmIHdoZW4gSSBjYW4gYmUgb2Ygc29tZSBoZWxwLgoKQ29y
cmVjdGlvbiBvZiBteSBwcmV2aW91cyBwb3N0OiB0aGUgY29tbWFuZCBzaG91bGQgYmU6Cgp0aHVu
ZGVyYmlyZCAtUCAtLWFsbG93LWRvd25ncmFkZQoKUGxlYXNlIG5vdGUgdGhhdCB0aGVyZSBhcmUg
dHdvICItIiBiZWZvcmUgImFsbG93IiwgYnV0IG9ubHkgb25lIGJldHdlZW4KImFsbG93IiBhbmQg
ImRvd25ncmFkZSIKCkRpZGllcgoKTGUgMTYvMDcvMjAyMSDDoCAxMzoyNSwgTGludXggZm9yIGJs
aW5kIGdlbmVyYWwgZGlzY3Vzc2lvbiBhIMOpY3JpdMKgOgo+IE1hbnkgbWFueSB0aGFua3MsIHRo
aXMgd29ya3MgcGVyZmVjdGx5Lgo+IAo+IFBhdmVsCj4gCj4gCj4gRG5lIDE2LiAwNy4gMjEgdiAx
MzowNyBMaW51eCBmb3IgYmxpbmQgZ2VuZXJhbCBkaXNjdXNzaW9uIG5hcHNhbChhKToKPj4gSGks
Cj4+Cj4+IFRodW5kZXJiaXJkIGNyZWF0ZXMgYSBuZXcgZm9sZGVyIGJ1dCB5b3UgY2FuIHN0aWxs
IHVzZSBhbm90aGVyIG9uZS4gCj4+IEp1c3Qgc3RhcnQgaXQgbGlrZSB0aGlzOgo+Pgo+PiB0aHVu
ZGVyYmlyZCAtUCAtLWFsbG93LS1kb3duZ3JhZGUKPj4KPj4gYW5kIHNlbGVjdCB0aGUgcHJvZmls
ZSB5b3Ugd2FudC4KPj4KPj4gQmVmb3JlIGRvaW5nIHRoYXQsIHB1dCB0aGUgcHJvZmlsZXMgeW91
IHdhbnQgaW4gfi8udGh1bmRlcmJpcmQKPj4KPj4gRm9yIGluc3RhbmNlIG15IHByb2ZpbGVzIGFy
ZSBpbjoKPj4KPj4gL2hvbWUvZGlkaWVyLy50aHVuZGVyYmlyZAo+Pgo+PiBDaGVlcnMsCj4+IERp
ZGllcgo+PiAtLSAKPj4gRGlkaWVyIFNwYWllcgo+PiBTbGludCBtYWludGFpbmVyCj4+IGRpZGll
cmF0c2xpbnRkb3Rmcgo+PiBodHRwczovL3NsaW50LmZyCj4+Cj4+Cj4+Cj4+IExlIDE2LzA3LzIw
MjEgw6AgMTI6MzQsIExpbnV4IGZvciBibGluZCBnZW5lcmFsIGRpc2N1c3Npb24gYSDDqWNyaXTC
oDoKPj4+IE9rYXksIFRodW5kZXJiaXJkIGFic29sdXRlbGx5IGlnbm9yZXMgbXkgcHJvZmlsZSBh
bmQgY3JlYXRlcyBhIG5ldyAKPj4+IG9uZSwgc28gSSB0aGluayBzb21ldGhpbmcgY2hhbmdlZCBp
biBwcm9maWxlcy5pbmkgb3IgaW5zdGFsbHMuaW5pLiAKPj4+IFdoZW4gSSB0cmFuc2ZlciBteSBw
cm9maWxlIGZyb20gV2luIHRvIFdpbiwgaXQgd29ya3MsIGJ1dCBmcm9tIFdpbiB0byAKPj4+IExp
bnV4IG5vdCwgc28gSSB3aWxsIGNyZWF0ZSBhbGwgbXkgc2V0dXAgYWdhaW4sIGl0IHdpbGwgYmUg
ZWFzeWVyIGZvciAKPj4+IG1lLgo+Pj4KPj4+IFBhdmVsCj4+Pgo+Pj4KPj4+IERuZSAxNS4wNy4y
MDIxIHYgMjI6NDkgTGludXggZm9yIGJsaW5kIGdlbmVyYWwgZGlzY3Vzc2lvbiBuYXBzYWwoYSk6
Cj4+Pj4gSGVsbG8sCj4+Pj4KPj4+PiB3ZWxsLCBJIGhhdmUgcXVpdGUgYmFkIGV4cGVyaWVuY2Vz
IGRvaW5nIHRoaXMgYW55d2hlcmUgYXQgYW55IHRpbWUsCj4+Pj4gaW5kZXBlbmRlbnRseSBvbiBw
bGF0Zm9ybSBvciBUQiB2ZXJzaW9uLCBzbyBJIHBlcnNvbmFsbHkgcHJlZmVyIHRvIHNldAo+Pj4+
IHVwIHRoaW5ncyBmcm9tIHNjcmF0Y2ggYXMgbW9zdCBvZiB0aGUgY29uZmlndXJhdGlvbiBpcyBk
b25lIG9uIHRoZQo+Pj4+IHNlcnZlciBhbnl3YXkuCj4+Pj4KPj4+Pgo+Pj4+IEJ1dCB5b3UgY2Fu
IHRyeSBpdCBvdXQgaWYgeW91IHdhbnQuIEp1c3QgbGV0IFRCIGNyZWF0ZSBhIHByb2ZpbGUgZm9s
ZGVyCj4+Pj4gYW5kIHJlcGxhY2UgdGhlIGNvbnRlbnQgb2YgdGhlIGZvbGRlciB3aXRoIHlvdXIg
b3duLCB0aGF0IHNob3VsZCAKPj4+PiB3b3JrIGlmCj4+Pj4geW91ciBwcmV2aW91cyB2ZXJzaW9u
IG9mIFRCIHdhcyB1cGdyYWRlZCB0byB2ZXJzaW9uIDc4IHdpdGggdGhlIAo+Pj4+IHByb2ZpbGUu
Cj4+Pj4KPj4+Pgo+Pj4+IEJlc3QgcmVnYXJkcwo+Pj4+Cj4+Pj4KPj4+PiBSYXN0aXNsYXYKPj4+
Pgo+Pj4+Cj4+Pj4gRMWIYSAxNS4gNy4gMjAyMSBvIDE3OjM1IExpbnV4IGZvciBibGluZCBnZW5l
cmFsIGRpc2N1c3Npb24gbmFww61zYWwoYSk6Cj4+Pj4+IEhpLAo+Pj4+Pgo+Pj4+PiBJIHdhbnQg
dG8gdHJhbnNmZXIgbXkgVGh1bmRlcmJpcmQgZm9sZGVyIGZyb20gV2luIHRvIExpbnV4LiBJdCB3
YXMKPj4+Pj4gcG9zc2libGUgMyA0IHllYXJzIGFnbyB3aXRob3V0IGFueSBpc3N1ZXMsIGJ1dCBm
cm9tIHNvbWUgbmV3IAo+Pj4+PiBUaHVuZGVyYmlyZAo+Pj4+PiB2ZXJzaW9uLCBzb21ldGhpbmcg
bXVzdCBiZSBjaGFuZ2V0IHRvIGdldCB0cmFuc2ZlcmVkIGZvbGRlciB3b3JraW5nIGFzCj4+Pj4+
IGV4cGVjdGVkLiBDYW4geW91IGhlbHAgcGxlYXNlPyBXaGVuIEkgdHJhbnNmZXIgbXkgZm9sZGVy
IHRvCj4+Pj4+IC5UaHVuZGVyYmlyZCwgYXBwIGlnbm9yZXMgYWxsIGV4aXN0aW5nIHByb2ZpbGVz
IGFuZCBjcmVhdGVzIGFub3RoZXIgCj4+Pj4+IGFuZAo+Pj4+PiBhc2tzIG1lIHRvIGxvZ2luIHRv
IG15IG1haWwgYWNjb3VudHMuCj4+Pj4+Cj4+Pj4+IFRoYW5rcywKPj4+Pj4KPj4+Pj4gUGF2ZWwK
Pj4+Pj4KPj4+Pj4KPj4+Pj4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KPj4+Pj4gQmxpbnV4LWxpc3QgbWFpbGluZyBsaXN0Cj4+Pj4+IEJsaW51eC1saXN0
QHJlZGhhdC5jb20KPj4+Pj4gaHR0cHM6Ly9saXN0bWFuLnJlZGhhdC5jb20vbWFpbG1hbi9saXN0
aW5mby9ibGludXgtbGlzdAo+Pj4+Pgo+Pj4+Cj4+Pj4gX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KPj4+PiBCbGludXgtbGlzdCBtYWlsaW5nIGxpc3QKPj4+
PiBCbGludXgtbGlzdEByZWRoYXQuY29tCj4+Pj4gaHR0cHM6Ly9saXN0bWFuLnJlZGhhdC5jb20v
bWFpbG1hbi9saXN0aW5mby9ibGludXgtbGlzdAo+Pj4KPj4+IF9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fCj4+PiBCbGludXgtbGlzdCBtYWlsaW5nIGxpc3QK
Pj4+IEJsaW51eC1saXN0QHJlZGhhdC5jb20KPj4+IGh0dHBzOi8vbGlzdG1hbi5yZWRoYXQuY29t
L21haWxtYW4vbGlzdGluZm8vYmxpbnV4LWxpc3QKPj4KPj4KPj4gX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KPj4gQmxpbnV4LWxpc3QgbWFpbGluZyBsaXN0
Cj4+IEJsaW51eC1saXN0QHJlZGhhdC5jb20KPj4gaHR0cHM6Ly9saXN0bWFuLnJlZGhhdC5jb20v
bWFpbG1hbi9saXN0aW5mby9ibGludXgtbGlzdAo+IAo+IF9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fCj4gQmxpbnV4LWxpc3QgbWFpbGluZyBsaXN0Cj4gQmxp
bnV4LWxpc3RAcmVkaGF0LmNvbQo+IGh0dHBzOi8vbGlzdG1hbi5yZWRoYXQuY29tL21haWxtYW4v
bGlzdGluZm8vYmxpbnV4LWxpc3QKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwpCbGludXgtbGlzdCBtYWlsaW5nIGxpc3QKQmxpbnV4LWxpc3RAcmVkaGF0
LmNvbQpodHRwczovL2xpc3RtYW4ucmVkaGF0LmNvbS9tYWlsbWFuL2xpc3RpbmZvL2JsaW51eC1s
aXN0

