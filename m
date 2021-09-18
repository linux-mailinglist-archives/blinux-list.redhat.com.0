Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTP id E78E9410788
	for <lists+blinux-list@lfdr.de>; Sat, 18 Sep 2021 18:08:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1631981283;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=tsJJSzDfsHeIYkAGjQsRiGUmHtz2RABSQJrsaeSz4Ac=;
	b=HfNdz2dz0g/7J715hgc5DmwgsOcgQ7S4k3bFvRqKwo3zmkuPxW2DW26laZmW4uJpVOx8hu
	fgkGg2M9/apSH8rQfa7KE/H9psyOi0J6b7jHPvVTqOB5TsYxE0DHbLUPpBF29wO10woPd9
	D0gkaI/kUiMn8mVwLFoXvK2ecxK3EkY=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-166-rWi33RSwOLaNRTRCJvBMiw-1; Sat, 18 Sep 2021 12:08:02 -0400
X-MC-Unique: rWi33RSwOLaNRTRCJvBMiw-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com [10.5.11.16])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 06B038010F4;
	Sat, 18 Sep 2021 16:07:58 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 5BFF55C1CF;
	Sat, 18 Sep 2021 16:07:56 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 7B7411803B30;
	Sat, 18 Sep 2021 16:07:53 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.rdu2.redhat.com
	[10.11.54.5])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 18IG7oe7002325 for <blinux-list@listman.util.phx.redhat.com>;
	Sat, 18 Sep 2021 12:07:50 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 107B7DAF37; Sat, 18 Sep 2021 16:07:50 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast04.extmail.prod.ext.rdu2.redhat.com [10.11.55.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 08EA9DAF3F
	for <blinux-list@redhat.com>; Sat, 18 Sep 2021 16:07:47 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[205.139.110.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 6A5B5106655A
	for <blinux-list@redhat.com>; Sat, 18 Sep 2021 16:07:47 +0000 (UTC)
Received: from darkstar.slint.fr (darkstar.slint.fr [172.105.89.79]) by
	relay.mimecast.com with ESMTP id us-mta-10-qD6U2JyYOo29x79R6cEUDA-1;
	Sat, 18 Sep 2021 12:07:44 -0400
X-MC-Unique: qD6U2JyYOo29x79R6cEUDA-1
Received: from [192.168.1.37] (men75-h08-176-172-247-100.dsl.sta.abo.bbox.fr
	[176.172.247.100])
	by darkstar.slint.fr (Postfix) with ESMTPSA id E0FCAA3F68
	for <blinux-list@redhat.com>; Sat, 18 Sep 2021 16:07:24 +0200 (CEST)
Message-ID: <b723b98a-aec9-938f-fae3-53e2259ac145@slint.fr>
Date: Sat, 18 Sep 2021 18:07:42 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
	Thunderbird/91.1.0
Subject: Re: rhvoice broken on Arch
To: blinux-list@redhat.com
References: <YUXl/70G69mzJqvV@rednote.net> <YUYJPmtUN850ISXK@rednote.net>
In-Reply-To: <YUYJPmtUN850ISXK@rednote.net>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.79 on 10.11.54.5
X-MIME-Autoconverted: from quoted-printable to 8bit by
	lists01.pubmisc.prod.ext.phx2.redhat.com id 18IG7oe7002325
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"

SGkgSmFuaW5hLAoKSSBhbSBidXQgcHV6emxlZCBhcyBSSFZvaWNlIDEuNC4yIHdvcmtzIGhlcmUg
KFNsaW50KS4KCkFGQUlLIHRoZSBvbmx5IHRoaW5nIHRoYXQgY2hhbmdlZCBzaW5jZSBJIGhhdmUg
YnVpbHQgaXQgaXMgdGhlIHBhY2thZ2luZy4KCklzIHJodm9pY2UgbGlzdGVkIGFtb25nIHRoZSBh
dmFpbGFibGUgc3ludGhlc2l6ZXJzIGluIHRoZSBPcmNhIApwcmVmZXJlbmNlcyBHVUk/CgpDaGVl
cnMsCkRpZGllcgoKTGUgMTgvMDkvMjAyMSDDoCAxNzo0MywgTGludXggZm9yIGJsaW5kIGdlbmVy
YWwgZGlzY3Vzc2lvbiBhIMOpY3JpdMKgOgo+IERlYXIgQWxsOgo+IAo+IEFzIGlzIG15IHVzdWFs
IHByYWN0aWNlLCBJIGRpZCBhIGZ1bGwgLVN5dSB1cGdyYWRlIG9mIG15IHR3byBBcmNoIExpbnV4
Cj4gc3lzdGVtcyB0aGlzIG1vcm5pbmcuCj4gCj4gcmh2b2ljZSBpcyBvbmUgcGFja2FnZSB0aGF0
IHdhcyBuZXcgdGhpcyB3ZWVrLiBJdCdzIG5vdCB3b3JraW5nIHdpdGgKPiBTcGVlY2gtRGlzcGF0
Y2hlci4gV2hlbiBJIGRvIGEgQWx0K0YyIGFuZCB0eXBlICdvcmNhIC1yJyBJIGhlYXIgdGhlCj4g
ZHVtbXkgZHJpdmVyIGF1ZGlvIG1lc3NhZ2UuCj4gCj4gSSd2ZSByZXNldCBmb3IgZXNwZWFrLW5n
IGluIG15IC9ldGMvU3BlZWNoLURpc3BhdGNoZXIvc3BlZWNoZC5jb25mLCBhbmQKPiBPcmNhIGlz
IGhhcHB5LiBZZXMsIEkgd2FzIHByZXZpb3VzbHkgbm90IGxvYWRpbmcgdGhhdCBtb2RlbCAobm9y
IFZveGluKS4KPiAKPiBTb3JyeSwgQWxleGFuZGVyIQo+IAo+IEJlc3QsCj4gCj4gSmFuaW5hCj4g
Cj4gTGludXggZm9yIGJsaW5kIGdlbmVyYWwgZGlzY3Vzc2lvbiB3cml0ZXM6Cj4+IEhpLCBBbGw6
Cj4+Cj4+IEkgdGhvdWdodCBJIHNob3VsZCBmb3J3YXJkIG15IHJlc3BvbnNlIHRvIEtpcmsgUmVp
c2VyIGJlbG93IHRvIHRoZQo+PiBibGludXggbGlzdCwgYXMgd2UndmUgZGlzY3Vzc2VkIHRoaXMg
aGVyZSBwcmV2aW91c2x5Lgo+Pgo+PiBJJ3ZlIG5vIGlkZWEgd2hldGhlciBvciBub3QgS2lyaydz
IHByb2JsZW0gd2l0aCBEZWJpYW4gaXMgdGhlIHNhbWUuIEkKPj4gY2FuIG9ubHkgY29uZmlybSB0
aGF0IEVzcGVha3VwLTAuOTAgYW5kIGFsc2EtbGliLTEuMi41IGFyZSBzdGlsbAo+PiBub25mdW5j
dGlvbmFsIGZvciBtZSB3aXRoIEFyY2guCj4+Cj4+IEhlcmUncyBteSBlbWFpbCB0byBLaXJrIG9u
IHRoZSBTcGVha3VwIGxpc3QgLi4uCj4+Cj4+Cj4+IEhpLCBLaXJrOgo+Pgo+PiBJJ20gb24gQXJj
aCwgbm90IERlYmlhbiwgYnV0IEkndmUgaGFkIGJyb2tlbiBFc3BlYWt1cCBldmVyIHNpbmNlCj4+
IGFsc2EtbGliLTEuMi41IHNob3dlZCB1cC4gU2luY2UgdGhlbiBFc3BlYWt1cCBoYXMgYmVlbiB1
cHZlcnNpb25lZCB0bwo+PiAwLjkwLCBidXQgdGhpcyBoYXMgbm90IGZpeGVkIHRoaW5ncyBmb3Ig
bWUsIHRob3VnaCBhcHBhcmVudGx5IGl0IGhhcyBmb3IKPj4gQWxleGFuZGVyIG5vdyBtYWludGFu
aW5nIEVzcGVha3VwLgo+Pgo+PiBJIGN1cnJlbnRseSBoYXZlIHR3byBmdW5jdGlvbmFsIExpbnV4
IG1hY2hpbmVzLCBib3RoIGZ1bGx5IHVwZ3JhZGVkIGFzCj4+IG9mIGp1c3QgYWJvdXQgaGFsZiBh
biBob3VyIGFnbyBleGNlcHQgYXMgZGVzY3JpYmVkIGJlbG93Lgo+Pgo+PiBUaGUgbmV3ZXIgaGFy
ZHdhcmUgd2lsbCBydW4gYnkgaGFuZCB3aXRoIHRoZSBjb21tYW5kOiAnZXNwZWFrdXAgLWQnLCBi
dXQKPj4gaXQncyBoaWdobHkgYnJpdHRsZSBhbmQgcHJvbmUgdG8gY3Jhc2ggdGhlIHN5c3RlbSBz
byB0aGF0IGEgdGhyZWUgZmluZ2VyCj4+IHNhbHV0ZSBpcyBuZWVkZWQuCj4+Cj4+IElmIEkgd2Fu
dCBjb25zb2xlIGFjY2VzcyBvbiB0aGlzIDIwMjAgZXJhIGJveCwgSSBoYXZlIHRvIHR1cm4gdG8g
ZmVucmlyLAo+PiB3aGljaCBJJ20ganVzdCBub3QgYXMgY29tZm9ydGFibGUgd2l0aC0tYnV0IHRo
YXQncyBhbm90aGVyIHN0b3J5Lgo+Pgo+PiBNeSBvbGRlciBtYWNoaW5lIGlzIHByZXZlbnRlZCBi
eSBteSAvZXRjL3BhY21hbi5jb25mIGZyb20gdXBkYXRpbmcKPj4gYWxzYS1saWIgYW5kIGVzcGVh
a3VwLCBhbmQgaXQgcnVucyBqdXN0IGZpbmUuCj4+Cj4+IFNvLCBteSBzdWdnZXN0aW9uIGlzIGJh
Y2sgb2ZmIHRvIHRoZSBsYXRlc3QgYWxzYS1saWItMS4yLjQsIGFuZCB0aGUKPj4gbGF0ZXN0IGVz
cGVha3VwLTAuOCB5b3UgaGF2ZSwgYW5kIHlvdSBzaG91bGQgYmUgZmluZSB1bnRpbCBzb21lb25l
Cj4+IGZpZ3VyZXMgb3V0IHdoYXQncyByZWFsbHkgZ29pbmcgb24uCj4+Cj4+IEZvciBhbnlvbmUg
cnVubmluZyBBcmNoIHlvdSB3YW50IHRoZSBmb2xsb3dpbmcgaW4geW91ciAvZXRjL3BhY21hbi5j
b25mOgo+Pgo+PiBJZ25vcmVQa2cgICA9ZXNwZWFrdXAKPj4gSWdub3JlUGtnICAgPWFsc2EtbGli
Cj4+Cj4+IElmIHlvdSd2ZSBhbHJlYWR5IHVwZGF0ZWQgeW91ciBBcmNoIGJleW9uZCB0aGVzZSB2
ZXJzaW9ucywgeW91IGNhbgo+PiBkb3duZ3JhZGUuIFlvdSdsbCBmaW5kIGEgY2FjaGUgb2YgcHJl
dmlvdXMgdmVyc2lvbnMgaW46Cj4+Cj4+IC92YXIvY2FjaGUvcGFjbWFuL3BrZy8KPj4gSnVzdCBj
ZCBvbiBvdmVyIHRoZXJlIGFzIHJvb3QgYW5kIGNoZWNrIHdoYXQgeW91IGhhdmUgd2l0aCBhIGNv
bW1hbmQKPj4gbGlrZToKPj4KPj4gbHMgLTEgYWxzYS1saWIqIGVzcGVha3VwKgo+Pgo+PiBZb3Ug
Y2FuIHRoZW4gZG93bnZlcnNpb24gd2l0aCBwYWNtYW4gbGlrZSB0aGlzOgo+Pgo+PiBwYWNtYW4g
LVUgLi9bZmlsZW5hbWVdCj4+Cj4+IHdoZXJlIFtmaWxlbmFtZV0gaXMgdGhlIGZ1bGwgbmFtZSB5
b3UgZ290IGZyb20gbHMuIEkgcmVjb21tZW5kIHVzaW5nIHRoZQo+PiBTcGVha3VwIGNsaXBib2Fy
ZCB0byBnZXQgdGhlIGNvbW1hbmQgcmlnaHQuCj4+Cj4+IEJlc3QsCj4+Cj4+IEphbmluYQo+Pgo+
Pgo+PiBLaXJrIFJlaXNlciB3cml0ZXM6Cj4+PiBIaSBmb2xrczogRG9lcyBhbnlvbmUgaGF2ZSBl
c3BlYWt1cCBydW5uaW5nIG9uIGRlYmlhbiBzaWQgd2l0aAo+Pj4gbGliYXNvdW5kMiAxLjIuNT8g
QWZ0ZXIgSSB1cGdyYWRlZCBhIGZldyBkYXlzIGFnbyBJIGxvc3QgbXkgc3BlZWNoCj4+PiBvdXRw
dXQuIEkgaGF2ZSBidWlsdCBlc3BlYWt1cCBhbmQgZXNwZWFrLW5nIGZyb20gdGhlIGN1cnJlbnQg
cmVwbyBvbgo+Pj4gdGhlbSB3aXRoIG5vIGpveSBlaXRoZXIuCj4+Pgo+Pj4gQ3VyaW91cyBtaW5k
cyBhbmQgYWxsIHRoYXQgdHlwZSB0aGluZy4KPj4+Cj4+PiAgICBLaXJrCj4+Pgo+Pgo+PiAtLSAK
Pj4KPj4gSmFuaW5hIFNhamthCj4+IGh0dHBzOi8vbGlua2VkaW4uY29tL2luL2pzYWprYQo+Pgo+
PiBMaW51eCBGb3VuZGF0aW9uIEZlbGxvdwo+PiBFeGVjdXRpdmUgQ2hhaXIsIEFjY2Vzc2liaWxp
dHkgV29ya2dyb3VwOglodHRwOi8vYTExeS5vcmcKPj4KPj4gVGhlIFdvcmxkIFdpZGUgV2ViIENv
bnNvcnRpdW0gKFczQyksIFdlYiBBY2Nlc3NpYmlsaXR5IEluaXRpYXRpdmUgKFdBSSkKPj4gQ28t
Q2hhaXIsIEFjY2Vzc2libGUgUGxhdGZvcm0gQXJjaGl0ZWN0dXJlcwlodHRwOi8vd3d3LnczLm9y
Zy93YWkvYXBhCj4+Cj4+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fCj4+IEJsaW51eC1saXN0IG1haWxpbmcgbGlzdAo+PiBCbGludXgtbGlzdEByZWRoYXQu
Y29tCj4+IGh0dHBzOi8vbGlzdG1hbi5yZWRoYXQuY29tL21haWxtYW4vbGlzdGluZm8vYmxpbnV4
LWxpc3QKPiAKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
XwpCbGludXgtbGlzdCBtYWlsaW5nIGxpc3QKQmxpbnV4LWxpc3RAcmVkaGF0LmNvbQpodHRwczov
L2xpc3RtYW4ucmVkaGF0LmNvbS9tYWlsbWFuL2xpc3RpbmZvL2JsaW51eC1saXN0

