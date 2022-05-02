Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id BFB2E516E02
	for <lists+blinux-list@lfdr.de>; Mon,  2 May 2022 12:15:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1651486549;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=XgEDazo01l4Ulu08IYGiQoffUAlqT6C43Hp491pRRAM=;
	b=Z2ZZneJCDs75+T8drQESbt1tp+70/4Bu8K/udK7BBvk8xMWhRMAkY5oiJhTBsaQH/rgnM8
	YD5p7ujuimK0eBMy2h2/XLglzMHdukEu0kF3fAaw1mbo8fUN6PGKSiqknxY+v+T/sX/eVd
	hE6nXa8eCF2/l7uj3wiTKEbX0KjDJzI=
Received: from mimecast-mx02.redhat.com (mx3-rdu2.redhat.com
 [66.187.233.73]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-321-D6lW2pKaMh2XxNPO8pLCZA-1; Mon, 02 May 2022 06:15:46 -0400
X-MC-Unique: D6lW2pKaMh2XxNPO8pLCZA-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.rdu2.redhat.com [10.11.54.2])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 046C21C05148;
	Mon,  2 May 2022 10:15:45 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (unknown [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 9A92A40D2821;
	Mon,  2 May 2022 10:15:40 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id DBBF51947062;
	Mon,  2 May 2022 10:15:38 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Mime-Version: 1.0 (1.0)
Subject: Re: Does anyone know of any accessible SQL programs for Slint?
Date: Mon, 2 May 2022 06:15:31 -0400
References: <mailman.12405.1651438054.111208.blinux-list@redhat.com>
In-Reply-To: <mailman.12405.1651438054.111208.blinux-list@redhat.com>
To: blinux-list@redhat.com
Message-ID: <mailman.12366.1651486538.111210.blinux-list@redhat.com>
From: Linux for blind general discussion <blinux-list@redhat.com>
X-BeenThere: blinux-list@redhat.com
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: Linux for blind general discussion <blinux-list.redhat.com>
List-Unsubscribe: <https://listman.redhat.com/mailman/options/blinux-list>,
 <mailto:blinux-list-request@redhat.com?subject=unsubscribe>
List-Archive: <http://listman.redhat.com/archives/blinux-list/>
List-Post: <mailto:blinux-list@redhat.com>
List-Help: <mailto:blinux-list-request@redhat.com?subject=help>
List-Subscribe: <https://listman.redhat.com/mailman/listinfo/blinux-list>,
 <mailto:blinux-list-request@redhat.com?subject=subscribe>
Reply-To: blinux-list@redhat.com
Errors-To: blinux-list-bounces@redhat.com
Sender: "Blinux-list" <blinux-list-bounces@redhat.com>
X-Scanned-By: MIMEDefang 2.84 on 10.11.54.2
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

Rm9yIHRoZSBIVE1MIG91dHB1dCwgYW0gSSBjb3JyZWN0IHRoYXQgc2hlIGNvdWxkIGhhdmUgdGhh
dCBIVE1MIG91dHB1dCB0byBhIGZpbGU/ICBUaGF0IHdheSwgc2hlIGNvdWxkIG9wZW4gdGhlIGZp
bGUgaW4gYSBicm93c2VyIGxpa2UgRmlyZWZveD8gIFRoYXQgd2F5LCBJIHdvdWxkIHRoaW5rIHNo
ZSB3b3VsZCBiZSBhYmxlIHRvIHJlYWQgdGhlIEhUTUwgdGFibGVzIHdpdGggT3JjYS4KUnlhbgoK
ClNlbnQgZnJvbSBteSBpUGhvbmUKCj4gT24gTWF5IDEsIDIwMjIsIGF0IDQ6NDcgUE0sIExpbnV4
IGZvciBibGluZCBnZW5lcmFsIGRpc2N1c3Npb24gPGJsaW51eC1saXN0QHJlZGhhdC5jb20+IHdy
b3RlOgo+IAo+IO+7v1RpbSBoZXJlLiAgSSBrbm93IHRoYXQgYXQgbGVhc3Qgc3FsaXRlJ3MgQ0xJ
IGludGVyZmFjZSBsZXRzIHlvdSB1c2UKPiAKPiAgLm1vZGUgbGluZQo+IAo+IHdoaWNoIHR1cm5z
IGRhdGEgaW50byBhIGxpbmVhciBmb3JtYXQgdGhhdCdzIG11Y2ggbW9yZSB1bmRlcnN0YW5kYWJs
ZQo+IHdoZW4gcmVhZCBhbG91ZCwgZGF0YSBsaWtlCj4gCj4gIHNxbGl0ZT4gLm1vZGUgbGluZQo+
ICBzcWxpdGU+IHNlbGVjdCBpZCwgbmFtZSBmcm9tIHVzZXJzOwo+IAo+ICBJZCA9IDEKPiAgTmFt
ZSA9IFRpbQo+IAo+ICBJZCA9IDIKPiAgTmFtZSA9IFJpY2gKPiAKPiAgSWQgPSAzCj4gIE5hbWUg
PSBFbGxlbgo+IAo+IFBvc3RncmVTUUwgaGFzIGEgc2ltaWxhciAiZXhwYW5kZWQiIGZvcm1hdC4K
PiAKPiBJIGZpbmQgaXQgcGFydGljdWxhcmx5IHVzZWZ1bCB3aGVuIHRoZXJlIGFyZSBsb3RzIG9m
IGNvbHVtbnMgYW5kCj4gdGhpbmdzIHN0YXJ0IHdyYXBwaW5nIHdlaXJkbHksIG1ha2luZyBpdCBo
YXJkIHRvIHRyYWNlIHdoaWNoIGNvbHVtbgo+IGlzIHdoaWNoLgo+IAo+IElmIHlvdSByZWFsbHkg
KmRvKiB3YW50IEhUTUwgb3V0cHV0LCB0aGUgc3FsaXRlICIubW9kZSIgY29tbWFuZCBkb2VzCj4g
YWxzbyBvZmZlciBIVE1MIG91dHB1dCBhcyBhbiBvcHRpb246Cj4gCj4gIHNxbGl0ZT4gLm1vZGUg
aHRtbAo+IAo+IHdoaWNoIHlvdSBjYW4gdGhlbiBwaXBlIHRvIHlvdXIgZmF2b3JpdGUgSFRNTCB2
aWV3ZXIuICBTaW1pbGFybHksCj4gUG9zdGdyZVNRTCdzICJwc3FsIiBjbGllbnQgaGFzIGFuIEhU
TUwgb3V0cHV0IG1vZGUgd2hpY2ggeW91IGNhbgo+IGludm9rZSBlaXRoZXIgYXMgYSBDTEkgb3B0
aW9uCj4gCj4gICQgcHNxbCAtLWh0bWwKPiAKPiBvciBieSBlbmFibGluZyB0aGUgb3B0aW9uIGlu
dGVyYWN0aXZlbHkKPiAKPiAgKHBzcWwpIFxwc2V0IGZvcm1hdCBodG1sCj4gCj4gSG9wZWZ1bGx5
IHRoaXMgZ2l2ZXMgeW91IHNvbWUgb3B0aW9ucyBmb3IgZ2V0dGluZyBtb3JlIHVzZWZ1bCBvdXRw
dXQKPiBmcm9tIHNxbGl0ZSBvciBwb3N0Z3Jlc3FsLiAgSSBkb24ndCB1c2UgbXlzcWwvbWFyaWFk
YiBtdWNoLCBzbyBJIGNhbid0Cj4gc3BlYWsgYXMgdG8gd2hldGhlciBpdCBvZmZlcnMgc2ltaWxh
ciBmZWF0dXJlcy4KPiAKPiAtVGltCj4gCj4gCj4+IE9uZSB0aG91Z2h0IEkgaGF2ZSBoYWQsIGZy
b20gdGltZSB0byB0aW1lLCBpcyB0aGF0IGl0IHdvdWxkIGJlIG5pY2UKPj4gdG8gaGF2ZSB0b29s
aW5nIHRoYXQgdHJhbnNmb3JtcyB2YXJpb3VzIHRhYnVsYXIgb3V0cHV0IGZvcm1hdHMgaW50bwo+
PiBIVE1MIHRhYmxlcy4gIFRoaXMgY291bGQgbGV0IHRoZSB1c2VyIGVtcGxveSBzY3JlZW4gcmVh
ZGVyCj4+IG5hdmlnYXRpb24gdG8gY3Jhd2wgYXJvdW5kIHRoZSB0YWJsZS4gIEhvd2V2ZXIsIEkg
aGF2ZSBubyBpZGVhIGlmCj4+IGFueXRoaW5nIG9mIHRoaXMgc29ydCBleGlzdHMuCj4gCj4gX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KPiBCbGludXgtbGlz
dCBtYWlsaW5nIGxpc3QKPiBCbGludXgtbGlzdEByZWRoYXQuY29tCj4gaHR0cHM6Ly9saXN0bWFu
LnJlZGhhdC5jb20vbWFpbG1hbi9saXN0aW5mby9ibGludXgtbGlzdAo+IAoKX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KQmxpbnV4LWxpc3QgbWFpbGluZyBs
aXN0CkJsaW51eC1saXN0QHJlZGhhdC5jb20KaHR0cHM6Ly9saXN0bWFuLnJlZGhhdC5jb20vbWFp
bG1hbi9saXN0aW5mby9ibGludXgtbGlzdAo=

