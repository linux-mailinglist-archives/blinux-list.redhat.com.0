Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [216.205.24.124])
	by mail.lfdr.de (Postfix) with ESMTP id 5126F3B0822
	for <lists+blinux-list@lfdr.de>; Tue, 22 Jun 2021 17:01:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1624374094;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=ZswYX5PIlL1wV5eOpGRFj+AAugGrmLmATWfsvRLbHxU=;
	b=ctjy8vFvgSC43cmKetOm56+FUgIQ6c9mw2MSci6ixDg1Z74Za/bWcWBdYq0HMuankwsGKE
	WSoyREpca1rivIigeOiOZqFAW6jBoTgNY4lVAD+zQxaUm2Qndn4lXFHL5Uu+n5amsXuEBZ
	ILujGLch7CXuP8io79mhN2f1WiEoZis=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-569--bl-VADHMg-m4NlJzee8_g-1; Tue, 22 Jun 2021 11:01:32 -0400
X-MC-Unique: -bl-VADHMg-m4NlJzee8_g-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com [10.5.11.13])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 2C667100C66A;
	Tue, 22 Jun 2021 15:01:27 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id DD35F83840;
	Tue, 22 Jun 2021 15:01:26 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id BDF234EA2A;
	Tue, 22 Jun 2021 15:01:25 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.rdu2.redhat.com
	[10.11.54.6])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 15MEvtc3022691 for <blinux-list@listman.util.phx.redhat.com>;
	Tue, 22 Jun 2021 10:57:55 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 559FE218B3EE; Tue, 22 Jun 2021 14:57:55 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast04.extmail.prod.ext.rdu2.redhat.com [10.11.55.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 506AB218B3ED
	for <blinux-list@redhat.com>; Tue, 22 Jun 2021 14:57:52 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[205.139.110.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id EC6DB108C0CD
	for <blinux-list@redhat.com>; Tue, 22 Jun 2021 14:57:51 +0000 (UTC)
Received: from darkstar.slint.fr (darkstar.slint.fr [172.105.89.79]) by
	relay.mimecast.com with ESMTP id us-mta-28-Uit1IJeMPC-3ZTYOolwP7w-1;
	Tue, 22 Jun 2021 10:57:49 -0400
X-MC-Unique: Uit1IJeMPC-3ZTYOolwP7w-1
Received: from ici.slint.fr (men75-h08-176-172-247-100.dsl.sta.abo.bbox.fr
	[176.172.247.100])
	by darkstar.slint.fr (Postfix) with ESMTPSA id 7767AA1CCA
	for <blinux-list@redhat.com>; Tue, 22 Jun 2021 15:57:23 +0200 (CEST)
Subject: Re: making an accessible version of Nushell
To: blinux-list@redhat.com
References: <39E7FC5D-C61C-4EE2-8199-F0D94711EF71@cfcl.com>
	<4c93f3ee-a8db-48eb-3675-ebd73d83e4b4@protonmail.com>
Message-ID: <ff8ae695-f32b-599c-d6e1-fba5b5637fc1@slint.fr>
Date: Tue, 22 Jun 2021 16:57:46 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
	Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <4c93f3ee-a8db-48eb-3675-ebd73d83e4b4@protonmail.com>
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
	lists01.pubmisc.prod.ext.phx2.redhat.com id 15MEvtc3022691
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

SGV5LAoKc29ycnkgaWYgdGhpcyBpcyBvZmYgdG9waWMsIGJ1dCB3aXRoIGEgc2ltaWxhciBhaW06
IHdvcmsgdG8gbWFrZSB0aGUgCmFlcmMgZW1haWwKY2xpZW50IG1vcmUgYWNjZXNzaWJsZSB3b3Vs
ZCBiZSB2ZXJ5IGhlbHBmdWwuCgpJdCBzZWVtcyBtZSB0aGF0IGFlcmMgaXMgbm90IGFzIGZyaWdo
dGVuaW5nIGZvciBiZWdpbm5lcnMgYXMgY2FuIGJlIAptdXR0LCBmb3IKaW5zdGFuY2UsIHNvIHRo
aXMgY291bGQgcmVwbGFjZSBUaHVuZGVyYmlyZCBmb3IgZm9sa3Mgbm90IHNvIGF0IGVhc2UgCndp
dGggdGhlCmNvbW1hbmQgbGluZS4KCkxhc3QgdGltZSBJIGFza2VkLCB0aGUgbWFpbiBkZXZlbG9w
ZXIgd2FzIG5vdCBlYWdlciB0byB3b3JrIG9uIHRoYXQgZnJvbnQKaGltc2VsZiBidXQgd2FzIGVh
Z2VyIHRvIHJldmlldyBwcm9wb3NlZCBwYXRjaGVzIGFuZCBoZWxwLgoKbGluazogaHR0cHM6Ly9h
ZXJjLW1haWwub3JnLwoKQ2hlZXJzLApEaWRpZXIKCkxlIDIyLzA2LzIwMjEgw6AgMTY6MTYsIExp
bnV4IGZvciBibGluZCBnZW5lcmFsIGRpc2N1c3Npb24gYSDDqWNyaXTCoDoKPiBIZXkgdGhlcmUs
Cj4gCj4gaG1tLCB0aGlzIHNvdW5kcyBkZWZpbml0ZWx5IGludGVyZXN0aW5nIQo+IAo+IAo+IEkg
d2FudGVkIHRvIG1ha2Ugc29tZXRoaW5nIHNpbWlsYXIgbXlzZWxmLCBhcyB0aGUgY3VycmVudCBz
dGF0ZSBpcwo+IHF1aXRlLi4uIHByb2JsZW1hdGljLgo+IAo+IExpa2UgeWVzLCB3ZSBjYW4gcmVh
ZCB0aGUgb3V0cHV0IG9mIHRlcm1pbmFsIHdpdGggT3JjYSdzIGZsYXQgcmV2aWV3LAo+IGJ1dCB0
aGF0J3MgbGlrZSBhbGwgYWJvdXQgaXQuCj4gCj4gV2hlbiBpdCBjb21lcyB0byBzdHJ1Y3R1cmVz
LCBsaWtlIHRhYmxlcywgcmVhZGluZyB0aGVtIGlzIHJlYWxseSBhIHBhaW4uCj4gCj4gVGhlcmUg
YXJlIHRoZSBmdW5jdGlvbnMgdG8gbmF2aWdhdGUgdG8gdGhlIHdvcmQgYWJvdmUgYW5kIGJlbG93
LCB0aGF0J3MKPiBoYW5keSwgYnV0IGl0IHRha2VzIHF1aXRlIGEgbG90IG9mIHRpbWUgdG8gbW92
ZSAoZmV3IHNlY29uZHMpIGFuZCB3aGVuCj4gdGhlIGRpc3BsYXkgaXMgcmVmcmVzaGluZywgdGhl
IGZsYXQgcmV2aWV3IGN1cnNvciBnZXRzIGxvc3QgY29tcGxldGVseQo+IGFmdGVyIHNvbWUgdGlt
ZS4KPiAKPiAKPiBNeSBPcmNhIHZlcnNpb24gaXMgc3RpbGwgMy4zOS4xIHByZSwgbWF5IGJlIEkg
c2hvdWxkIHRyeSB0byB1cGRhdGUgdG8KPiBtYXN0ZXIgdG8gc2VlIGlmIHNvbWV0aGluZyBoYXMg
YmVlbiBkb25lIGFib3V0IHRoaXMsIEkgdGhpbmsgSSBzYXcgc29tZQo+IGRpc2N1c3Npb24gYWJv
dXQgcmV3b3JraW5nIHRoZSBmbGF0IHJldmlldyBpZiBJIHJlbWVtYmVyIGNvcnJlY3RseS4KPiAK
PiAKPiBCZXN0IHJlZ2FyZHMKPiAKPiAKPiBSYXN0aXNsYXYKPiAKPiAKPiBExYhhIDIxLiA2LiAy
MDIxIG8gMjI6MjQgTGludXggZm9yIGJsaW5kIGdlbmVyYWwgZGlzY3Vzc2lvbiBuYXDDrXNhbChh
KToKPj4gTnVzaGVsbCAoaHR0cHM6Ly93d3cubnVzaGVsbC5zaCkgaXMgYSByZS1pbWFnaW5lZCBz
aGVsbCBmb3IgTGludXggKGV0Yykgc3lzdGVtcy4gIFRoZXJlIGFyZSBhIG51bWJlciBvZiB0aGlu
Z3MgdG8gbGlrZSBhYm91dCBpdCwgSU1ITy4gIEZpcnN0LCBpdCBhdHRlbXB0cyB0byBoYW5kbGUg
cHJvZ3JhbSBvdXRwdXQgYXMgc3RydWN0dXJlZCBkYXRhLiAgVGhpcyBtZWFucyB0aGF0LCBmb3Ig
ZXhhbXBsZSwgdGFidWxhciBvdXRwdXQgY2FuIGJlIGZpbHRlcmVkLCBzb3J0ZWQsIGV0Yy4gIEl0
IGlzIGFsc28gYmVpbmcgd3JpdHRlbiBpbiBSdXN0LCB3aGljaCBzaG91bGQgaGVscCB0byBwcmV2
ZW50IGEgbGFyZ2UgY2xhc3Mgb2Ygc2VjdXJpdHkgaXNzdWVzLgo+Pgo+PiBIb3dldmVyLCB0aGUg
dXNlIG9mIHRleHQtYmFzZWQgbGF5b3V0IGZvciB0YWJ1bGFyIG91dHB1dCBpc24ndCB3ZWxsIHN1
aXRlZCBmb3IgdXNlIHdpdGggc2NyZWVuIHJlYWRlcnMsIGV0Yy4gIFNvLCBJIHBvc3RlZCBhbiBp
c3N1ZSBvbiB0aGUgTnVzaGVsbCBHaXQgcmVwb3NpdG9yeSwgc3VnZ2VzdGluZyB0aGF0IHNvbWVv
bmUgbG9vayBpbnRvIHRoZSBub3Rpb24gb2YgY3JlYXRpbmcgYSB3ZWItYmFzZWQgdmVyc2lvbi4g
IEhhcHBpbHksIHNvbWUgd29yayBoYXMgYWxyZWFkeSBiZWVuIGRvbmUgb24gdGhpcywgbW9zdGx5
IHRvIHN1cHBvcnQgYW4gb25saW5lIGRlbW8uCj4+Cj4+IElmIHlvdSBmaW5kIHRoaXMgdG8gYmUg
aW50ZXJlc3RpbmcsIHlvdSBtaWdodCB3YW50IHRvIGJyb3dzZSBvdmVyIHRvIHRoZWlyIHNpdGVz
IGFuZCBjaGVjayBvdXQgd2hhdCB0aGV5IGhhdmUgc28gZmFyLiAgU3BlY2lmaWMgc3VnZ2VzdGlv
bnMgb24gd2F5cyB0byBtYWtlIHRoZSBpbnRlcmZhY2Ugd29yayBiZXR0ZXIgd2l0aCBzY3JlZW4g
cmVhZGVycyAoZXRjKSB3b3VsZCBiZSB2ZXJ5IHZhbHVhYmxlLiAgSGVyZSBhcmUgc29tZSBsaW5r
czoKPj4KPj4gaHR0cHM6Ly93d3cubnVzaGVsbC5zaAo+PiBodHRwczovL3d3dy5udXNoZWxsLnNo
L2RlbW8KPj4KPj4gaHR0cHM6Ly9naXRodWIuY29tL251c2hlbGwvbnVzaGVsbAo+PiBodHRwczov
L2dpdGh1Yi5jb20vbnVzaGVsbC9udXNoZWxsL2lzc3Vlcy8zNjYzCj4+Cj4+IC1yIChSaWNoIE1v
cmluKQo+Pgo+Pgo+Pgo+PiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwo+PiBCbGludXgtbGlzdCBtYWlsaW5nIGxpc3QKPj4gQmxpbnV4LWxpc3RAcmVkaGF0
LmNvbQo+PiBodHRwczovL2xpc3RtYW4ucmVkaGF0LmNvbS9tYWlsbWFuL2xpc3RpbmZvL2JsaW51
eC1saXN0Cj4+Cj4gCj4gCj4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KPiBCbGludXgtbGlzdCBtYWlsaW5nIGxpc3QKPiBCbGludXgtbGlzdEByZWRoYXQu
Y29tCj4gaHR0cHM6Ly9saXN0bWFuLnJlZGhhdC5jb20vbWFpbG1hbi9saXN0aW5mby9ibGludXgt
bGlzdAo+IAoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
CkJsaW51eC1saXN0IG1haWxpbmcgbGlzdApCbGludXgtbGlzdEByZWRoYXQuY29tCmh0dHBzOi8v
bGlzdG1hbi5yZWRoYXQuY29tL21haWxtYW4vbGlzdGluZm8vYmxpbnV4LWxpc3Q=

