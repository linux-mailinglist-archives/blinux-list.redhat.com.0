Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTP id 864A634A634
	for <lists+blinux-list@lfdr.de>; Fri, 26 Mar 2021 12:14:39 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1616757278;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=A0Ewq1eN6mBIchl5nQuPH1HODnOQT/X6F0Q11Unssj8=;
	b=XDRFKCl79gNtlu5RwQWTt5edeu7J2+YkO8vw+F3EJgiQnUBmKpglSe7oYCnNRTlLeQ34OK
	DgiWBnhHLH+OsglFtAA5ikpHLt+tmBmbj/p/FEC+5zZarhlUtoGy1yeOYwBF5WfjvjjnMB
	tYcTfUOQf8Z48VUSDUvjfJhx5AZaPME=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-82-WhPynxbpP9SIHt8ZUCTWtA-1; Fri, 26 Mar 2021 07:14:36 -0400
X-MC-Unique: WhPynxbpP9SIHt8ZUCTWtA-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com [10.5.11.13])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 8BA32180FCA6;
	Fri, 26 Mar 2021 11:14:32 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 236B336807;
	Fri, 26 Mar 2021 11:14:30 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id CC1FD1809C83;
	Fri, 26 Mar 2021 11:14:25 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.rdu2.redhat.com
	[10.11.54.4])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 12QBEGqu028345 for <blinux-list@listman.util.phx.redhat.com>;
	Fri, 26 Mar 2021 07:14:16 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id E85082026D48; Fri, 26 Mar 2021 11:14:15 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast03.extmail.prod.ext.rdu2.redhat.com [10.11.55.19])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id E38992026D65
	for <blinux-list@redhat.com>; Fri, 26 Mar 2021 11:14:13 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [205.139.110.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 68AFE811E9C
	for <blinux-list@redhat.com>; Fri, 26 Mar 2021 11:14:13 +0000 (UTC)
Received: from darkstar.slint.fr (darkstar.slint.fr [172.105.89.79]) by
	relay.mimecast.com with ESMTP id us-mta-312-Ji6-k2k5MHCJ8VroYw352Q-1;
	Fri, 26 Mar 2021 07:14:10 -0400
X-MC-Unique: Ji6-k2k5MHCJ8VroYw352Q-1
Received: from darkstar.example.slint (sfa89-1-78-208-157-71.fbx.proxad.net
	[78.208.157.71])
	by darkstar.slint.fr (Postfix) with ESMTPSA id 584F1A402B
	for <blinux-list@redhat.com>; Fri, 26 Mar 2021 11:14:07 +0100 (CET)
Subject: Re: Slint not speaking in Vmware fusion on the Mac.
To: blinux-list@redhat.com
References: <6AA6F9E6-D16A-4D46-8B8A-8383B3D499AD@pipkrokodil.se>
	<5f021569-c2b8-ab3a-7cb8-5d346d928b95@slint.fr>
	<6C70832C-9242-4206-A790-948B98965D55@pipkrokodil.se>
	<DB78830D-1681-47AC-8023-F8FE7901FEC1@gmail.com>
Message-ID: <3bdabda6-fff0-b4b6-46a1-27be364b1d08@slint.fr>
Date: Fri, 26 Mar 2021 12:14:02 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
	Thunderbird/68.12.0
MIME-Version: 1.0
In-Reply-To: <DB78830D-1681-47AC-8023-F8FE7901FEC1@gmail.com>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.4
X-MIME-Autoconverted: from quoted-printable to 8bit by
	lists01.pubmisc.prod.ext.phx2.redhat.com id 12QBEGqu028345
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

SGVsbG8sCgpCcmFpbGxlIGlzIGF2YWlsYWJsZSBkdXJpbmcgaW5zdGFsbGF0aW9uIGFuZCBzcGVl
Y2ggd2l0aCAoZSlzcGVha3VwLgoKQWZ0ZXIgaW5zdGFsbGF0aW9uIHlvdSBoYXZlIHNwZWVjaCBv
biB0aGUgY29uc29sZSB1c2luZyAoZSlzcGVha3VwLCAKZmVucmlyIG9yCnNwZWVjaGQtdXAsIG9y
Y2EgaW4gZ3JhcGhpY2FsIGVudmlyb25tZW50cywgYnJhaWxsZSBldmVyeXdoZXJlLgoKWW91IGtl
ZXAgc3BlZWNoIGFuZCBCcmFpbGxlIHN3aXRjaGluZyBiYWNrIGFuZCBmb3J0aCBiZXR3ZWVuIGNv
bnNvbGUgYW5kCmdyYXBoaWNhbCwgdGhlIGExMXkgc3RhY2sgaXMgYWx3YXlzIGtlcHQgdXAgdG8g
ZGF0ZS4KCkZvciBhIHZpcnR1YWwgbWFjaGluZSwgSSByZWNvbW1lbmQgUWVtdSwgd2hpY2ggaGFz
IHRoZSBiZXN0IHNvdW5kIApzdXBwb3J0LiBXZQpjYW4gaGVscCB5b3Ugc2V0IHVwIFFlbXUgaWYg
d2Uga25vdyBvbiB3aGljaCBob3N0IHlvdSdsbCBpbnN0YWxsIHRoZSBWTS4KClN1cHBvcnQ6CmVt
YWlsIHNsaW50LXJlcXVlc3RAZnJlZWxpc3RzLm9yZyB3aXRoIGFzIHN1YmplY3Q6IHN1YnNjcmli
ZQpJUkM6IGNoYW5uZWwgI3NsaW50IGF0IGlyYy5mcmVlbm9kZS5uZXQKCkxpbmtzOgpodHRwczov
L3NsaW50LmZyCmh0dHA6Ly9zbGFja3dhcmUudWsvc2xpbnQveDg2XzY0L3NsaW50LTE0LjIuMS9S
RUFETUUuaW5zdGFsbGF0aW9uCmh0dHA6Ly9zbGFja3dhcmUudWsvc2xpbnQveDg2XzY0L3NsaW50
LTE0LjIuMS9kb2MvCgpEaWRpZXIKLS0KRGlkaWVyIFNwYWllcgpTbGludCBtYWludGFpbmVyCgpQ
UyBXZSBuZWVkIG1vcmUgdHJhbnNsYXRvcnMsIHZvbHVudGVlcnMgd2VsY29tZS4gTW9yZSBhYm91
dCB0aGF0IGxhdGVyLgo+IEhlbGxvLCB3aGF0IGtpbmQgb2Ygc2NyZWVuIHJlYWRpbmcsIG9yIGJy
YWlsbGUgYWNjZXNzIGNhbiBiZSB1c2VkIHdpdGggdGhpcyBkaXN0cmlidXRpb24/IElmIGl0IHVz
ZXMgYSBzY3JlZW4gcmVhZGVyLCBpcyB0aGlzIHNwZWFrIHVwIG9yIHNvbWV0aGluZyBlbHNlPyBJ
ZiBpdCdzIGdyYXBoaWNhbCBJJ20gZ29pbmcgdG8gYXNzdW1lIHRoYXQgaXQgaXMgb3JjYT8gRG9l
cyBhbnlib2R5IGhhdmUgYW55IHRob3VnaHRzLCB0aGFuayB5b3UgYW5kIGl0IFZhbmNlIG1vcmUg
aWRpb3QgYmFzZSBvbiBob3cgdG8gdHJ5IHRoaXMgZGlzdHJpYnV0aW9uIGluIGEgdmlydHVhbCBt
YWNoaW5lLgo+PiBPbiBNYXIgMjUsIDIwMjEsIGF0IDI6NDIgUE0sIExpbnV4IGZvciBibGluZCBn
ZW5lcmFsIGRpc2N1c3Npb24gPGJsaW51eC1saXN0QHJlZGhhdC5jb20+IHdyb3RlOgo+Pgo+PiBI
aSEKPj4gSSB0aGluayBzbyBidXQgSSBkbyBhbm90aGVyIHRyeS4KPj4gVGhhbmtzIGZvciB5b3Vy
IGxpbmtzIGFuZCBoZWxwLgo+PiAvQQo+Pgo+Pj4gMjUgbWFycyAyMDIxIGtsLiAyMDo1NyBza3Jl
diBMaW51eCBmb3IgYmxpbmQgZ2VuZXJhbCBkaXNjdXNzaW9uIDxibGludXgtbGlzdEByZWRoYXQu
Y29tPjoKPj4+Cj4+PiBmcm9tIERpZGllciBhZ2FpbjoKPj4+Cj4+PiBBcmUgeW91IHN1cmUgeW91
IGFyZSB1c2luZyB0aGUgZ29vZCBJU08/IFRoZSBsYXN0IG9uZSBpcyBoZXJlOgo+Pj4gaHR0cDov
L3NsYWNrd2FyZS51ay9zbGludC94ODZfNjQvc2xpbnQtMTQuMi4xL2lzby8KPj4+Cj4+PiBMZSAy
NS8wMy8yMDIxIMOgIDIwOjAxLCBMaW51eCBmb3IgYmxpbmQgZ2VuZXJhbCBkaXNjdXNzaW9uIGEg
w6ljcml0IDoKPj4+PiBIaSEKPj4+PiBJIGFtIG5vdCBzdXJlIHdoYXQgaXMgZ29pbmcgb24gaGVy
ZS4KPj4+PiBCdXQgSSBhbSB0cnlpbmcgdG8gcnVuIHNsaW50IGZyb20gYW4gaXNvIHVuZGVyIE1h
Yy4KPj4+PiBJIGNhbuKAmXQgZ2V0IGl0IHRvIHNwZWFrIGluIFZNd2FyZSBmdXNpb24gZm9yIHNv
bWUgcmVhc29uLgo+Pj4+IE5vdCBzdXJlIGlmIHRoZXJlIGlzIHNvbWUgc2VjdXJpdHkgc2V0dGlu
ZyBvbiB0aGUgTWFjIHRoYXQgbWlnaHQgYmxvY2sgc29tZXRoaW5nLgo+Pj4+IEFueSB0aG91Z2h0
cy4KPj4+PiAvQQo+Pj4+Cj4+Pgo+Pj4KPj4+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fCj4+PiBCbGludXgtbGlzdCBtYWlsaW5nIGxpc3QKPj4+IEJsaW51
eC1saXN0QHJlZGhhdC5jb20KPj4+IGh0dHBzOi8vbGlzdG1hbi5yZWRoYXQuY29tL21haWxtYW4v
bGlzdGluZm8vYmxpbnV4LWxpc3QKPj4KPj4KPj4gX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18KPj4gQmxpbnV4LWxpc3QgbWFpbGluZyBsaXN0Cj4+IEJsaW51
eC1saXN0QHJlZGhhdC5jb20KPj4gaHR0cHM6Ly9saXN0bWFuLnJlZGhhdC5jb20vbWFpbG1hbi9s
aXN0aW5mby9ibGludXgtbGlzdAo+IAo+IAo+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fCj4gQmxpbnV4LWxpc3QgbWFpbGluZyBsaXN0Cj4gQmxpbnV4LWxp
c3RAcmVkaGF0LmNvbQo+IGh0dHBzOi8vbGlzdG1hbi5yZWRoYXQuY29tL21haWxtYW4vbGlzdGlu
Zm8vYmxpbnV4LWxpc3QKPiAKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwpCbGludXgtbGlzdCBtYWlsaW5nIGxpc3QKQmxpbnV4LWxpc3RAcmVkaGF0LmNv
bQpodHRwczovL2xpc3RtYW4ucmVkaGF0LmNvbS9tYWlsbWFuL2xpc3RpbmZvL2JsaW51eC1saXN0

