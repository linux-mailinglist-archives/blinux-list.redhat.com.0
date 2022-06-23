Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 1CD07557E6D
	for <lists+blinux-list@lfdr.de>; Thu, 23 Jun 2022 17:04:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1655996692;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=MAJsgYB/EXvSd/ehDfmbAjaAqA+e90tLM5tOvVbA0h0=;
	b=gBHEjTJ9mPfi97JyR1yTknCwI3MbeAddj9MEBADNZ1wlu07/+1YaW3Wi7njA+ZB90Xs0sc
	OxGxG2ZU34gUnZUnyvX5J6WACo8eFDhyIVN+aBRMiQbm+5uhQgmj7+r4bsjRDTN2reJRNW
	QTNrZnZL5GsTpkm4ykjYbDyY/OSmvQo=
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-523-qcnnOnWhN3ej2Cbbbu3-Yw-1; Thu, 23 Jun 2022 11:04:50 -0400
X-MC-Unique: qcnnOnWhN3ej2Cbbbu3-Yw-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.rdu2.redhat.com [10.11.54.8])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 05D4D1035A5C;
	Thu, 23 Jun 2022 15:04:48 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (unknown [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id E0B20C08087;
	Thu, 23 Jun 2022 15:04:47 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id 40C9C194B958;
	Thu, 23 Jun 2022 15:04:47 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Date: Thu, 23 Jun 2022 17:04:38 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.10.0
Subject: Re: Thoughts on KDE Plasma as of right now
To: blinux-list@redhat.com
References: <mailman.28324.1655979483.111202.blinux-list@redhat.com>
 <mailman.28082.1655981624.111205.blinux-list@redhat.com>
In-Reply-To: <mailman.28082.1655981624.111205.blinux-list@redhat.com>
Message-ID: <mailman.28517.1655996686.111209.blinux-list@redhat.com>
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
X-Scanned-By: MIMEDefang 2.85 on 10.11.54.8
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"

SG93ZHkgRGV2aW4sCgp0aGFua3MgZm9yIHN1cHBvcnRpbmcgdXMhIHNvcnJ5IGJlaW5nIGluYWN0
aXZlIGZvciBhIGxvbmcgdGltZS4gaXQgd2FzIApmb3Igam9iIHJlYXNvbnMuIEkgd2FzIHZlcnkg
YnVzeSBpbiBhbiBodWdlIEVSUCBwcm9qZWN0ICg1IHllYXJzIApkZXZlbG9wbWVudCwgfjMgTWls
bGlvbiBkb2xsYXIgYnVkZ2V0cywgYSBhcm15IG9mIGRldmVsb3BlcnMganVzdCB0byAKbmFtZSBz
b21lIG51bWJlcnMgaW4gc2l6ZSA6RCkgLSBhbmQgdGhpcyBwYXlzIG15IGJpbGxzLCBzbyBpIGhh
dmUgdG8gCnNldHRsZSBwcmlvcml0eSdzLsKgIEJ1dCB0aGUgcHJvamVjdCBhbG1vc3QgY29tcGxl
dGVkIGFuZCBpIGhhdmUgbW9yZSBhbmQgCm1vcmUgc3BhcmUgdGltZSB0byB3b3JrIG9uIGFjY2Vz
c2liaWxpdHkgYWdhaW4gKGFzIHlvdSBtaWdodCBhbHJlYWR5IApub3RlZCA6KSwganVzdCBzYXkg
T0NSZGVza3RvcCA0LjAsIGRyYWdvbkZNIDEuMCAsIGNvbnRpbnVlIGVmZm9ydHMgZm9yIApwbHVn
aW4gZHJpdmVuIG9yY2EgYW5kIHRoZSBsYXRlc3QgS0RFIGFjY2Vzc2liaWxpdHkgd29yay4KSSBk
byBteSBiZXN0IHRvIGtlZXAgb24gOikuIEFuZCBpbXByb3ZlIHRoZSBzaXR1YXRpb24uIHN1cHBv
cnQgYWx3YXlzIAptb3RpdmF0ZXMuIHRoaXMgaXMgYSBzaWduIHRoYXQgc29tZWJvZHkgbGlrZSBt
eSB3b3JrLgoKY2hlZXJzIGNocnlzCgpBbSAyMy4wNi4yMiB1bSAxMjo1MyBzY2hyaWViIExpbnV4
IGZvciBibGluZCBnZW5lcmFsIGRpc2N1c3Npb246Cj4gWWVhaCwgSSd2ZSBub3QgdHJpZWQgaXQg
aW4gbGlrZSBoYWxmIGEgeWVhciwgYnV0IHRoaXMgaGFzIHByb21wdGVkIG1lIHRvCj4gYmVnaW4g
YXMgYSBQYXRyb24gdG8gbGludXgtYWNjZXNzaWJpbGl0eSBhZ2Fpbi4gSnVzdCAkMTkgcGVyIG1v
bnRoLCBidXQgSQo+IGhvcGUgaXQgaGVscHMgZW50aHVzaWFzbSBhbmQgdG8ga2VlcCB1cCB0aGlz
IHJlYWxseSBncmVhdCB3b3JrIQo+IERldmluIFByYXRlcgo+IHIuZC50LnByYXRlckBnbWFpbC5j
b20KPgo+Cj4KPgo+IE9uIFRodSwgSnVuIDIzLCAyMDIyIGF0IDU6MTggQU0gTGludXggZm9yIGJs
aW5kIGdlbmVyYWwgZGlzY3Vzc2lvbiA8Cj4gYmxpbnV4LWxpc3RAcmVkaGF0LmNvbT4gd3JvdGU6
Cj4KPj4gU28gZ2l2ZW4gdGhlIG5ld3MgYWJvdXQgS0RFIGFjY2Vzc2liaWxpdHkgZ2V0dGluZyB3
b3JrZWQgb24sIEkgZmlndXJlZAo+PiBJJ2QgZ2l2ZSBLREUgYSBzaG90LiBJIHdhc24ndCB0aGF0
IGltcHJlc3NlZCBsYXN0IHRpbWUuCj4+Cj4+IEhvd2V2ZXIuIEl0J3MgaW1wcm92ZWQgYSBsb3Qs
IEkgY2FuIGRvIGJhc2ljIHRoaW5ncywgd2hpY2ggaXMgYSBiaWcgc3RlcAo+PiB1cCwgYW5kIEkg
Z2V0IHRhbGtpbmcgYXBwIGxhdW5jaGVycywgYW5kIGNhbiBkbyBlbWFpbCwgd2ViIGJyb3dzaW5n
IGFuZAo+PiB0ZXh0IGVkaXRpbmcgd2hpY2ggaXMgYSBiaWcsIGJpZyBwbHVzLgo+Pgo+Pgo+PiBU
aGF0IGJlaW5nIHNhaWQsIEkgc3RpbGwgY2Fubm90IGNoYW5nZSBzeXN0ZW0gc2V0dGluZ3Mgb3Ig
ZGVmYXVsdCBhcHBzCj4+IGxpa2UgSSBjYW4gb24sIHNheSwgTWF0ZSBidXQsIGFuZCBoZXJlJ3Mg
dGhlIHRoaW5nIEkgbGlrZSBhYm91dCBLREUKPj4gUGxhc21hIGFzIG9mIHdyaXRpbmcgdGhpcy4u
Lgo+Pgo+Pgo+PiBJdCBpcyBmYXN0LCBpdCwgb24gbXkgQXJjaCBib3gsIHNvIFlNTVYgb24gb3Ro
ZXIgT1NlcywgYnV0IEknbSBydW5uaW5nCj4+IHRoaXMgb24gbXkgQXJjaCBib3gsIHRoZSB0aGlu
ZyBJIGxpa2UgYWJvdXQgaXQgaXMgdGhlIGtleWJvYXJkIGNvbW1hbmRzCj4+IG1ha2Ugc2Vuc2Uu
Cj4+Cj4+IE5vdywgaWYgSSBjYW4ganVzdCB3b3JrIG9uIGFkZGluZyBhIHNob3J0Y3V0IHRoYXQg
ZG9lc24ndCByZXF1aXJlIG1lIHRvCj4+IGdvIGFuZCBmaWdodCB3aXRoIGEgd2luZG93IHRoYXQg
d29uJ3QgcmVhZCwgdGhhdCdkIGJlIGdvb2QuIFBsYXNtYSBpcwo+PiBwbGVhc2VudGx5IHN1cnBy
aXNpbmcgYW5kIHdvcnRoIGNoZWNraW5nIGluIG9uLgo+Pgo+PiBfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+PiBCbGludXgtbGlzdCBtYWlsaW5nIGxpc3QK
Pj4gQmxpbnV4LWxpc3RAcmVkaGF0LmNvbQo+PiBodHRwczovL2xpc3RtYW4ucmVkaGF0LmNvbS9t
YWlsbWFuL2xpc3RpbmZvL2JsaW51eC1saXN0Cj4+Cj4+Cj4gX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KPiBCbGludXgtbGlzdCBtYWlsaW5nIGxpc3QKPiBC
bGludXgtbGlzdEByZWRoYXQuY29tCj4gaHR0cHM6Ly9saXN0bWFuLnJlZGhhdC5jb20vbWFpbG1h
bi9saXN0aW5mby9ibGludXgtbGlzdAo+CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwpCbGludXgtbGlzdCBtYWlsaW5nIGxpc3QKQmxpbnV4LWxpc3RAcmVk
aGF0LmNvbQpodHRwczovL2xpc3RtYW4ucmVkaGF0LmNvbS9tYWlsbWFuL2xpc3RpbmZvL2JsaW51
eC1saXN0Cg==

