Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 83B7349DC2C
	for <lists+blinux-list@lfdr.de>; Thu, 27 Jan 2022 09:04:59 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1643270698;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=yjNHJKe0KD1xoN1UaI0UqrzwvK9UjwA2DMUUdm2joJA=;
	b=UYdA6M7o2feMzcWMzf2QUKDvwdm9yWkBkF+qme/4keYA/Bd6XLABX24aR/ALEnvmjIeASA
	Or6/V/wCwcrSKBCC+kOOTJ5cd1DqOfP0Hj84uqV9s8OBV8J02YF4ZKLYH9GD/96UBXNOiE
	RAoebn5O9eU3L/6QOoHaCkxgFUrUg3I=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-135-AiCSf4vCN9Sk0SrMx3vNDg-1; Thu, 27 Jan 2022 03:04:55 -0500
X-MC-Unique: AiCSf4vCN9Sk0SrMx3vNDg-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com [10.5.11.14])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 12359835B50;
	Thu, 27 Jan 2022 08:04:49 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 267C560C2E;
	Thu, 27 Jan 2022 08:04:47 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id C1BE01809CB9;
	Thu, 27 Jan 2022 08:04:42 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.rdu2.redhat.com
	[10.11.54.7])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 20R84YrP007317 for <blinux-list@listman.util.phx.redhat.com>;
	Thu, 27 Jan 2022 03:04:34 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 6023F1454559; Thu, 27 Jan 2022 08:04:34 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast01.extmail.prod.ext.rdu2.redhat.com [10.11.55.17])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 5C6681454539
	for <blinux-list@redhat.com>; Thu, 27 Jan 2022 08:04:34 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[205.139.110.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 4405A85A5A8
	for <blinux-list@redhat.com>; Thu, 27 Jan 2022 08:04:34 +0000 (UTC)
Received: from mxd1.seznam.cz (mxd1.seznam.cz [77.75.78.210]) by
	relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-626-0SETYGFQNMGXyxh05JQPcQ-1; Thu, 27 Jan 2022 03:04:32 -0500
X-MC-Unique: 0SETYGFQNMGXyxh05JQPcQ-1
Received: from email.seznam.cz
	by email-smtpc18b.ko.seznam.cz (email-smtpc18b.ko.seznam.cz
	[10.53.18.21]) id 4617638a538f30d047fd9296;
	Thu, 27 Jan 2022 09:04:31 +0100 (CET)
Received: from [192.168.1.142] (host-213-235-142-85.ip.topnet.cz
	[213.235.142.85])
	by email-relay12.ko.seznam.cz (Seznam SMTPD 1.3.136) with ESMTP;
	Thu, 27 Jan 2022 09:04:26 +0100 (CET)
Message-ID: <4de3725e-96dd-bd73-96a8-48a4a0afc0e0@seznam.cz>
Date: Thu, 27 Jan 2022 09:04:25 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux armv7l; rv:91.0) Gecko/20100101
	Thunderbird/91.5.0
Subject: Re: Why do you use Linux? expanded from Converting text to mp3
To: Linux for blind general discussion <blinux-list@redhat.com>
References: <cf56de9a-9035-bbe0-ef8c-1e9e6468e8c@hubert-humphrey.com>
	<Pine.LNX.4.64.2201261620360.2109039@server2.shellworld.net>
	<571c96f3-44ae-eba3-bff9-39d1449e61d3@hubert-humphrey.com>
	<Pine.LNX.4.64.2201261646080.2109442@server2.shellworld.net>
	<cfcd28b0-26c2-77b8-fca9-b8a99955c092@gmail.com>
	<Pine.LNX.4.64.2201261716150.2109950@server2.shellworld.net>
	<YfHMypPcZ5/yJq+k@panix.com>
	<Pine.LNX.4.64.2201261947360.2111580@server2.shellworld.net>
	<YfHvt+4aziezYwjx@panix.com>
	<Pine.LNX.4.64.2201262008180.2112285@server2.shellworld.net>
	<YfH3P14/As9FjG9P@panix.com>
	<Pine.LNX.4.64.2201262104141.2112985@server2.shellworld.net>
	<5929a81c-ed88-909b-cd50-ad9db6bf2f62@hubert-humphrey.com>
In-Reply-To: <5929a81c-ed88-909b-cd50-ad9db6bf2f62@hubert-humphrey.com>
X-szn-frgn: <eb26e3ea-18bd-47e1-9f19-2c0ae6013573>
X-szn-frgc: <0>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.85 on 10.11.54.7
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

SGVsbG8sCgpJIGhhdmUgY29tcHV0ZXIgZnJvbSAyMDAzLiBJIGdvdCBXaW5kb3dzIFhQIGFuZCBX
aW5kb3ctZXllcyAKc2NyZWVucmVhZGVyLiBBZnRlciA1IHllYXJzIEkgaGFkIFdpbmRvd3MgWFAg
YWdhaW4gYW5kIFdpbm1vbml0b3IsIEN6ZWNoIApzY3JlZW5yZWFkZXIuIEkgdHJpZWQgYWxsIHNj
cmVlbnJlYWRlcnMgLSBKYXdzLCBEb2xwaGluIFNjcmVlbnJlYWRlciAKKGZvcm1lcmx5IEhhbCku
IENvbWJpbmF0aW9uIEhhbCBhbmQgTlZEQSB3YXMgdGhlIGJlc3QgZm9yIG1lLiBJbiAyMDA5IApp
J3ZlIGZpcnN0IG1lZXQgbGludXgsIGVkaXRpb24gQmxpbmR1YnVudHUuIEFmdGVyIHR3byB5ZWFy
cywgaW4gMjAxMSwgbXkgCmNvbXB1dGVyIGluc3RydWN0b3Igc2hvdyBtZSBsaW51eCwgVWJ1bnR1
IDExLjA0LiBJdCB3YXMgcmVhbGx5IHN1cGVyIGFuZCAKSSd2ZSBpbnN0YWxsZWQgYW5kIHNldCBs
aW51eCBvbiBteSBsYXB0b3AuIEJ1dCBVYnVudHUgMTEuMDQgaGFkIG1hbnkgCmJ1Z3MsIG1hbnkg
dGltZXMgT3JjYSBkaWRuJ3Qgc3BlYWssIHNvIEkndmUgc3dpdGNoZWQgdG8gVmludXggMy4yIGFu
ZCAKd2l0aG91dCBhbnkgYnVncy4gQnV0IGF0IHNjaG9vbCB0aGV5IHdhbnRlZCBtZSB0byBzd2l0
Y2ggYmFjayB0byBXaW5kb3dzIApkdWUgdG8gcHJvZ3JhbW1pbmcgaW4gVmlzdWFsc3R1ZGlvIDIw
MTIsIHdoaWNoIHdhc24ndCBvbiBsaW51eC4gU28gSSBoYWQgCnRvIGZvcm1hdCBteSBjb21wdXRl
ciBhbmQgaW5zdGFsbCBXaW5kb3dzIGJhY2suIEluIDIwMTIgb25lIG15IGZyaWVuZCAKY2FsbGVk
IG1lLCBoZSBib3VnaHQgTWFjYm9vayBBaXIgYW5kIGl0J3MgcmVhbGx5IGZpbmUuIEkndmUgYm91
Z2h0IApNYWNib29rIHBybyAxMyBhbmQgd2FzIGNvbWZvcnRhYmxlLiBCdXQgSSBoYWQgdG8gaGF2
ZSB2aXJ0dWFsIG1hY2hpbmUgCmZvciBwcm9ncmFtbWluZyBpbiBWaXN1YWxiYXNpYy4gV2hlbiBt
eSBNYWNib29rIHdhcyBicm9rZW4gLSBtb3RoZXJib2FyZCAKYW5kIEhERCwgSSd2ZSBzd2l0Y2hl
ZCBiYWNrIHRvIFdpbmRvd3MuIEJ1dCBXaW5kb3dzIHdhcyBzbHVnZ3lzaCwgaXQgCmNyYXNoZWQg
bWFueSB0aW1lcyBwZXIgbW9udGggYW5kIEkgaGFkIHRvIHJlaW5zdGFsbCBpdCB3aXRoIHNpZ2h0
ZWQgCmFzc2lzdGFuY2UuIFdoZW4gV2luZG93cyBjcmFzaGVkIG1lIHRocmVldGltZXMgZm9yIHRo
cmVlIGRheXMsIEkgd2FzIApyZWFsbHkgYW5ncnksIHdpdGggaGVscCBvZiBteSBmcmllbmQgZm9y
bWF0dGVkIGRpc2sgYW5kIGluc3RhbGxlZCBVYnVudHUgCjE0LjA0LCBidXQgbm90IGNvbWZvcnRh
YmxlLiBNeSBmcmllbmQgZm91bmQgVmludXggYW5kIGluc3RhbGxlZCBpdCB0byBteSAKbGFwdG9w
IGFuZCBJIHdhcyBjb21mb3J0YWJsZS4gTm93IEkgaGF2ZSBsaW51eCBmb3IgbWFueSB5ZWFycywg
c2luY2UgClNlcHRlbWJlciAyMDE1IGFuZCBJIGFtIGNvbWZvcnRhYmxlLiBTb21ldGltZXMgSSBh
bSB0aGlua2luZyB0byBidXkgTWFjIApkdWUgdG8gd3JpdGluZyBXb3JkIGRvY3VtZW50cyBvciB3
b3JraW5nIGJldHRlciB3aXRoIHNvbWUgd2ViIHNpdGVzLCBidXQgCk1hYyBpcyBleHBlbnNpdmUg
Zm9yIG1lLiBTbyBJJ3ZlIGluc3RhbGxlZCBDbG91ZCByZWFkeSB0byBteSBvbGQgbGFwdG9wIAph
bmQgSSBjYW4gd29yayBiZXR0ZXIgd2l0aCBsZXNzIGFjY2Vzc2libGUgd2ViIHNpdGVzLgoKU2lu
Y2Ugc3VtbWVyIDIwMjAgSSBoYXZlIFJhc3BiZXJyeSBQaSA0QiwgVWJ1bnR1IE1hdGUgMjAuMDQg
YW5kIEkgYW0gCmNvbWZvcnRhYmxlLiBJIGRvbid0IHVzZSBkZXNrdG9wIG9yIGxhcHRvcCwgb25s
eSBzb21ldGltZXMgSHlwcmEgbGFwdG9wLCAKd2hpY2ggSSBoYXZlIHNpbmNlIE1heSAyMDE5LiBJ
IGFtIG5vdCBwcm9ncmFtbWVyLCBvbmx5IHVzZXIgb2YgbGludXgsIApidXQgSSBhbSBjb21mb3J0
YWJsZSB3aXRoIHRoYXQuIEkga25vdyBsaW51eCBoYXMgYnVncywgYnV0IGV2ZXJ5dGhpbmcgCmhh
cyBidWdzLCBzb21ldGhpbmcgbW9yZSwgc29tZXRoaW5nIGxlc3MuCgpCZXN0IHJlZ2FyZHMKClZv
anRhLgoKRG5lIDI3LiAwMS4gMjIgdiAzOjU5IExpbnV4IGZvciBibGluZCBnZW5lcmFsIGRpc2N1
c3Npb24gbmFwc2FsKGEpOgo+IEhpIEthcmVuLWFuZC10aGFua3MgZm9yIGFuIGludHJvc3BlY3Rp
dmUgdG9waWMuIE15IHJvYWQgdG8gTGludXggd2FzIGEgCj4gc2xvdyB0cmFuc2l0aW9uLiBJIGhh
ZCBteSBmaXJzdCBQQyB3aXRoIERPUzYgZnJvbSAxOTk0LTk3LiBHb3Qgd2luZG93czk1IAo+IHNv
IEkgd291bGQgaGF2ZSBhbiBlYXNpZXIgdGltZSBwbGF5aW5nIG1wM3MsIHdoaWNoIHdlcmUgZmFp
cmx5IG5ldyBhdCAKPiB0aGF0IHRpbWUuIFRoZSBjb25jZXB0IG9mIGp1c3QgYmVpbmcgYWJsZSB0
byBtYXNoIGVudGVyIG9uIGEgaGlnaGxpZ2h0ZWQgCj4gZmlsZSB0byBwbGF5IHdhcyBhcHBlYWxp
bmcuIEJ1dCBhIG1ham9yaXR5IG9mIHRoZSB0aW1lIEkgd2FzIHN0aWxsaW5nIAo+IGdvaW5nIHRv
IGEgRE9TIHByb21wdCB0byBnZXQgaW4gdG8gYSBzaGVsbCBhY2NvdW50IHRvIHJlYWQgbWFpbCBp
biB3aGF0IAo+IHdhcyB0aGVuIHBpbmUuIEluIDIwMDMgb25jZSB0aGUgbGF0ZSBCaWxsIEFja2Vy
IGhlbHBlZCBzZXQgbWUgdXAgd2l0aCAKPiBEZWNQQyBkcml2ZXJzLCB3ZSB0cmllZCBhIGR1ZWwg
Ym9vdCBzeXN0ZW0sIGluY2x1ZGluZyBmaXJzdCBSZWRoYXQ5IGFuZCAKPiBsYXRlciBGZWRvcmEu
IEJlY2F1c2UgdGhlcmUgd2VyZSBzbyBtYW55IGFub3lpbmcgaXNzdWVzIHdpdGggdGhvc2UgCj4g
RGVjVGFsayBkcml2ZXJzLCBJIGZvdW5kIG15c2VsZiBnb2luZyBiYWNrIHRvIHdpbmRvd3Mgd2hl
cmUgRGVjVGFsayAKPiBzb3VuZGVkIGdyZWF0LiBNYXliZSBlYXJseSAyMDA1IGdvdCBlaXRoZXIg
YSBuZXdlciBwYyBhbmQgY2VydGFpbmx5IGEgCj4gVVNCIERlY1RhbGssIHdoaWNoIEkgc3RpbGwg
aGF2ZS4gMSBuaWdodCBpbiAyMDA2IGEgZnJpZW5kIGZyb20gCj4gSGlnaFNjaG9vbCB3YXMgaGVy
ZSwgSSB0cmllZCBwbGF5aW5nIGhpbSBhIFdlaXJkIEFsIHZpZGVvLCBidXQgZWFjaCB0aW1lIAo+
IFdpbmRvd3MgTWVkaWEgUGxheWVyIHdvdWxkIGxvY2t1cC4gSSBmaW5hbGx5IGp1c3Qgd2VudCBi
YWNrIGluIAo+IExpbnV4LWFuZC1wbGF5ZWQgaGltIGFuIGF1ZGlvIHZlcnNpb24uIE5leHQgdGlt
ZSB3ZSB3ZW50IGZyb20gRmVkb3JhIDYgCj4gdG8gOSB3ZSBwcmFjdGljbHkgaGFkIGEgY2VyZW1v
bnkgd2hlbiB3ZSBnb3QgcmlkIG9mIHdpbmRvd3MgZm9yZXZlci4gSW4gCj4gMjAxMCB3aXRoIG5l
ZWRpbmcgYSBuZXcgUEMsIEkgc3dpdGNoZWQgdG8gRGViaWFuLCBhcyB0aGV5IGhhdmUgbW9yZSBv
ZiAKPiB0aGUgbGF0ZXN0IHBhY2thZ2VzLgo+IEluIDIwMDYgSSBnb3QgaW52b2x2ZWQgd2l0aCBh
IGxvY2FsIExpbnV4IExVRywgd2hlcmUgSSBvY2Nhc2lvbmFsbHkgCj4gcmVjZWl2ZWQgbWFueSBo
b3VycyBvZiB2YWx1YWJsZSBhc2lzdGFuY2UtYW5kLWV2ZW4gc29tZXRpbWVzIEkgd2FzIGFibGUg
Cj4gdG8gaGVscC4KPiBFdmVuIHRob3VnaCBJIGhhdmUgbWFueSBzdHJ1Z2dsZXMgd2l0aCB3ZWIt
c2l0ZXMgd2hpY2ggSSBjYW5ub3QgYWNjZXNzIAo+IGJlY2F1c2Ugb2YgdGhlIGphdmFzY3JpcHQg
ZGlzZWFzZSwgSSBhbSBzdGlsbCB3aWxsaW5nIHRvIHN0aWNrIHdpdGggCj4gTGludXgsIGFzIG9u
Y2UgaXRzIHNldHVwLCBpdCBpcyBhIGNvbWZvcnRhYmxlIGVudmlyZW5tZW50Lgo+IEkgaGF2ZSBh
IENocm9tZWJvb2sgd2hpY2ggSSBhbG1vc3QgZXhjbHVzaXZlbHkgb25seSBhdHRlbmQgWm9vbSAK
PiBtZWV0aW5ncywgYXMgZmFyIGFzIEkga25vdywgbm8xIGhhc8KgIHdyaXR0ZW4gYW55IGNvbW1h
bmRsaW5lIHNjcmlwdHMgdG8gCj4gcnVuIFpvb20gaW4gYSBub24tZ3JhcGhpY2FsIHNldHRpbmcu
IEkgYWxzbyBoYXZlIGEgTWFjIGJ1dCBoYXZlIG5vdCAKPiByZWFsbHkgbG9va2VkIGluIHRvIGNs
YXNzZXMgYXQgYW4gQXBwbGUgc3RvcmUsIGJ1dCBhdCBsZWFzdCBhbGwgb2YgdGhlc2UgCj4gbWFj
aGluZXMgaGF2ZSBMaW51eCBJIGNhbiBydW4uCj4gSnVzdCBsYXN0IGV2ZW5pbmcgSSB3YXMgdHJ5
aW5nIHRvIGhlbHAgbXkgV2lmZSBpbiB3aW5kb3dzNyBidXQgaXRzIAo+IHByYWN0aWNseSBhIGZv
cmVpZ24gbGFuZ3VhZ2Ugbm93IGZyb20gd2luOTguCj4gQW5kIGxhc3RseSBLYXJlbiwgTGludXgg
cHJvdmlkZXMgbWUgc28gbXVjaCBjdXN0b21pemF0aW9uLiBJIGhhdmUgMjQgCj4gdGV4dCBjb25z
b2xlcy4gTXkgTGludXggZXhwZXJ0IHdyb3RlIG1lIHNvZnR3YXJlIHRvIHBsYXktYW5kLXJlY29y
ZCAKPiBzdHJlYW1zIHdpdGggNCBzb3VuZC1jYXJkcy4gSSB0aGluayBJIHJlY29yZGVkIG1heWJl
IDEwIHN0cmVhbXMgYXQgYSAKPiB0aW1lLWFuZC1sYXRlciBlZGl0ZWQgdGhlbSwgYXMgd2VsbCBh
cyBhanVzdGluZyBsZXZlbHMuIFNvIEkgaGF2ZSBgbXVjaCAKPiBmbGV4aWJpbGl0eSBpbiBMaW51
eC1hbmQtYW0gYHJlYWxseSBoYXBweSBoZXJlIGF0IG5lYXJseSA3MCBuZXh0IG1vbnRoLiAKPiBU
aGFua3Mgc28gbXVjaCBmb3IgbGlzdGVuaW5nCj4gQ2hpbWUKPiAKPiBfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+IEJsaW51eC1saXN0IG1haWxpbmcgbGlz
dAo+IEJsaW51eC1saXN0QHJlZGhhdC5jb20KPiBodHRwczovL2xpc3RtYW4ucmVkaGF0LmNvbS9t
YWlsbWFuL2xpc3RpbmZvL2JsaW51eC1saXN0Cj4gCgpfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwpCbGludXgtbGlzdCBtYWlsaW5nIGxpc3QKQmxpbnV4LWxp
c3RAcmVkaGF0LmNvbQpodHRwczovL2xpc3RtYW4ucmVkaGF0LmNvbS9tYWlsbWFuL2xpc3RpbmZv
L2JsaW51eC1saXN0

