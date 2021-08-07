Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTP id 87A313E354B
	for <lists+blinux-list@lfdr.de>; Sat,  7 Aug 2021 14:12:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1628338334;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=8291rKvAApVMWnQJ4o2tOES1oZx4SjDfricWbXQp60s=;
	b=dq00vd/mq5ADWZWTTpS/7BpW7eAU1fYrh1+ln/gxsV6OE0fTZKkfY1R4EF7iFqLdNCsqVy
	P1FPDlkWPceMH+TWdH4FEhwZ0BjCBucHXnHgHLHongId9RvUqHEy5NobQ/EEMpp7I0iwCn
	rB7t959f/wEm5TbfLa7Bc4GY9fSBLxc=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-44-n5bAXYdZPwGGA2x6DKArTw-1; Sat, 07 Aug 2021 08:12:13 -0400
X-MC-Unique: n5bAXYdZPwGGA2x6DKArTw-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.11])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id A02D7871805;
	Sat,  7 Aug 2021 12:12:09 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id AF00669CBA;
	Sat,  7 Aug 2021 12:12:08 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 137CE4BB7C;
	Sat,  7 Aug 2021 12:12:07 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.rdu2.redhat.com
	[10.11.54.6])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 177CC1op012671 for <blinux-list@listman.util.phx.redhat.com>;
	Sat, 7 Aug 2021 08:12:01 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 4998821602B6; Sat,  7 Aug 2021 12:12:01 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast05.extmail.prod.ext.rdu2.redhat.com [10.11.55.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 4414D21602B5
	for <blinux-list@redhat.com>; Sat,  7 Aug 2021 12:11:57 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [205.139.110.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 91ECB8D1392
	for <blinux-list@redhat.com>; Sat,  7 Aug 2021 12:11:57 +0000 (UTC)
Received: from darkstar.slint.fr (darkstar.slint.fr [172.105.89.79]) by
	relay.mimecast.com with ESMTP id us-mta-64-zKiY4LRiMTW3Q0SmFwUfQA-1;
	Sat, 07 Aug 2021 08:11:55 -0400
X-MC-Unique: zKiY4LRiMTW3Q0SmFwUfQA-1
Received: from ici.slint.fr (sfa89-1-78-208-157-71.fbx.proxad.net
	[78.208.157.71])
	by darkstar.slint.fr (Postfix) with ESMTPSA id 61D75A00A4
	for <blinux-list@redhat.com>; Sat,  7 Aug 2021 12:11:48 +0200 (CEST)
Subject: Re: Slint on the bare metal!
To: blinux-list@redhat.com
References: <946d66cd-defc-83a5-7f85-a44532cb52f3@gmail.com>
	<11738c89-e5c6-2079-c18c-5fd25f33dccf@slint.fr>
Message-ID: <9488db1a-6369-2824-fd12-66f0248a39bf@slint.fr>
Date: Sat, 7 Aug 2021 14:11:49 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
	Thunderbird/78.12.0
MIME-Version: 1.0
In-Reply-To: <11738c89-e5c6-2079-c18c-5fd25f33dccf@slint.fr>
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
	lists01.pubmisc.prod.ext.phx2.redhat.com id 177CC1op012671
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
Content-Language: en-US
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"

Q29ycmVjdGlvbjogSSBzaG91bGQgaGF2ZSB3cml0dGVuOgoxLiBJZiBydW5uaW5nIGVzcGVha3Vw
Cmluc3RlYWQgb2Y6CjEuIElmIHJ1bm5pbmcgc3BlYWt1cAoKVG8gY2xhcmlmeSwgc3BlYWt1cCBp
cyBhIGtlcm5lbCBkcml2ZXIgdXNlZCBieSBib3RoIGVzcGVha3VwIGFuZCBzcGVlY2hkLXVwLAp1
c2VkIGluIGNvbmp1bmN0aW9uIHdpdGggb3RoZXIgc29mdHdhcmUsIGFuZCB2b2ljZXM6CjEuIEJ5
IGVzcGVha3VwIHdpdGggdGhlIGVzcGVhay1uZyBUVFMgYW5kIGFzc29jaWF0ZWQgdm9pY2VzCjIu
IEJ5IHNwZWVjaGQtdXAgd2l0aCBhbnkgVFRTIGFjY2Vzc2VkIHRocm91Z2ggc3BlZWNoLWRpc3Bh
dGNoZXIKYW5kIGFzc29jaWF0ZWQgdm9pY2VzCgpzcGVha3VwIGNhbiBhbHNvIGJlIHVzZWQgZGly
ZWN0bHkgYnkgYSBoYXJkIHN5bnRoZXNpemVyLCB3aXRob3V0CmFkZGl0aW9uYWwgYXBwbGljYXRp
b24uCgpEaWRpZXIKCkxlIDA3LzA4LzIwMjEgw6AgMTM6NTMsIExpbnV4IGZvciBibGluZCBnZW5l
cmFsIGRpc2N1c3Npb24gYSDDqWNyaXTCoDoKPiBIaSBCcmFuZHQsCj4gCj4gMS4gSWYgcnVubmlu
ZyBzcGVha3VwIChub3Qtc3BlZWNoZC11cCksIHJ1bgo+IGxpc3QtZXNwZWFrLW5nLXZvaWNlcwo+
IGFuZCB0aGVuIHNldCB0aGUgY2hvc2VuIHZvaWNlIGFzIHJvb3QgaW46Cj4gL2V0Yy9lc3BlYWt1
cC5jb25mCj4gCj4gMi4gSWYgcnVubmluZyBzcGVlY2hkLXVwCj4gc2V0IHRoZSBsYW5ndWFnZSBh
cyByb290IGluOgo+IC9ldGMvc3BlZWNoZC11cC5jb25mCj4gYW5kIHRoZSBjaG9zZW4gc3ludGhl
c2l6ZXIgaW46Cj4gL2V0Yy9zcGVlY2gtZGlzcGF0Y2hlci9zcGVlY2hkLXVwLmNvbmYKPiAKPiBz
cGQtbGlzdCB0ZWxscyB3aGF0J3MgYXZhaWxhYmxlIGFzIHN5bnRoZXNpemVycyBhbmQgdm9pY2Vz
Lgo+IAo+IFVuZm9ydHVuYXRlbHkgaXQncyBub3QgeWV0IHBvc3NpYmxlIHRvIHNldCB0aGUgdm9p
Y2UgZm9yIHNwZWVjaGQtdXAgCj4gZGlyZWN0bHksCj4gdW5sZXNzIHlvdSB1c2UgdGhlIHZveGlu
IHN5bnRoZXNpemVyIGFuZCBhIHZvaWNlIGRpc3RyaWJ1dGVkIGJ5IG9yYWx1eC4gCj4gVGhlbgo+
IHRoZSBzZXR0aW5nIGlzIGRvbmUgaW46Cj4gL29wdC9vcmFsdXgvdm94aW4vc2hhcmUvY29uZi92
b3hpbi5pbmkKPiAKPiBDaGVlcnMsCj4gRGlkaWVyCj4gCj4gUFMgSSBoYXZlIG1hZGUgYXZhaWxh
YmxlIHNvbWUgc2NyaXB0cyB0aGF0IEkgaGF2ZSB3cml0dGVuIGZvciBTbGludCBpbjoKPiBodHRw
czovL2dpdGh1Yi5jb20vRGlkaWVyU3BhaWVyL3NsaW50LXNjcmlwdHMKPiAKPiBUaGV5IGNhbiBi
ZSB1c2VkIGluIG90aGVyIGRpc3RyaWJ1dGlvbnMsIGluIHNvbWUgY2FzZXMgYWZ0ZXIgYWRhcHRh
dGlvbi4KPiBJIHdpbGwgYWRkIHRoZWlyIGRlc2NyaXB0aW9ucyBpbiB0aGUgUkVBRE1FLgo+IExl
IDA3LzA4LzIwMjEgw6AgMDg6MzIsIExpbnV4IGZvciBibGluZCBnZW5lcmFsIGRpc2N1c3Npb24g
YSDDqWNyaXTCoDoKPj4gSGkgYWxsLAo+Pgo+Pgo+PiBJIHVuZXhwZWN0ZWRseSBoYWQgdGhlIHVz
ZSBvZiBhIHNldCBvZiB3b3JraW5nIGV5ZXMgZm9yIGEgbGl0dGxlIHdoaWxlIAo+PiB5ZXN0ZXJk
YXk7IHNlY3VyZSBib290IHdhcyB0dXJuZWQgb2ZmLCBhbmQgdGhlIGtleSB0byBicmluZyB1cCB0
aGUgCj4+IGJvb3QgbWVudSB3YXMgZm91bmQuCj4+Cj4+Cj4+IEFzIGEgcmVzdWx0IG9mIHRoaXMs
IFdpbmRvd3MgZ290IHJlbW92ZWQgZnJvbSB0aGlzIG1hY2hpbmUsIGFuZCBhcyB0aGUgCj4+IHN1
YmplY3Qgc3RhdGVzLCBTbGludCB0b29rIGl0J3MgcGxhY2UuCj4+Cj4+Cj4+IFRoaXMgbWFjaGlu
ZSBydW5zIGxpa2UgYSBkcmVhbSwgaG93ZXZlciwgSSBkaWQgZXZlcnl0aGluZyBjb3JyZWN0bHkg
Cj4+IGFuZCB0aGUgZW4tdXMgdm9pY2UgdXNlZCBieSBkZWZhdWx0IGJ5IG15IGVzcGVha3VwIGp1
c3QgZG9lc24ndCB3YW50IAo+PiB0byBnbyB0aGUgaGVsbCBhd2F5IQo+Pgo+Pgo+PiBBcyByb290
LCBJIGRpZCB0aGUgZm9sbG93aW5nOgo+Pgo+PiAjc3BlYWstd2l0aCBzcGVlY2hkLXVwCj4+Cj4+
IDo6VGhpcyBpbiBlZmZlY3Qga2lsbHMgZXNwZWFrdXAgd2hpY2ggaXMgbmVlZGVkIGZvciB0aGUg
Zm9sbG93aW5nCj4+Cj4+ICNlc3BlYWt1cCBkZWZhdWx0LXZvaWNlPWVuLWdiCj4+Cj4+IDo6VGhp
cywgaW4gdGhlb3J5IHNob3VsZCBzZXQgdGhlIHZvaWNlIHVzZWQgdG8gdGhlIGJyaXR0aXNoIG9u
ZS4KPj4KPj4gI3NwZWFrLXdpdGggZXNwZWFrdXAKPj4KPj4gOjpEb2VzIHN3aXRjaCB5b3UgYmFj
ayB0byBlc3BlYWt1cC4KPj4KPj4gI2V4aXQKPj4KPj4KPj4gSWYgYW55b25lIGtub3dzIHdoYXQn
cyBnb2luZyBvbiBoZXJlLCBwbGVhc2UsIHBsZWFzZSwgaGVscCEgTXkgaGVhcmluZyAKPj4gaXMg
YWxyZWFkeSBub3QgdGhlIGJlc3QgaW4gdGhlIHdvcmxkLCBJIGRvbid0IG5lZWQgdGhlIGJhZCBV
UyB2b2ljZSB0byAKPj4gbWFrZSB0aGluZ3Mgd29yc2UuCj4+Cj4gCj4gCj4gX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KPiBCbGludXgtbGlzdCBtYWlsaW5n
IGxpc3QKPiBCbGludXgtbGlzdEByZWRoYXQuY29tCj4gaHR0cHM6Ly9saXN0bWFuLnJlZGhhdC5j
b20vbWFpbG1hbi9saXN0aW5mby9ibGludXgtbGlzdAoKCl9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fCkJsaW51eC1saXN0IG1haWxpbmcgbGlzdApCbGludXgt
bGlzdEByZWRoYXQuY29tCmh0dHBzOi8vbGlzdG1hbi5yZWRoYXQuY29tL21haWxtYW4vbGlzdGlu
Zm8vYmxpbnV4LWxpc3Q=

