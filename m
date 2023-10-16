Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C05F7CB338
	for <lists+blinux-list@lfdr.de>; Mon, 16 Oct 2023 21:15:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1697483739;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=zwCuJs5aCYs/HzICEEspM3gBXZt5IdadwsAyS1bB2oY=;
	b=E2SVX8YwEwhZe1L3O/2P0XLmSCHx8bQBOY77rXBDL2TECj5waq3cEuU28eBgrW3SALE7Ro
	nI7hmUv6LKpnnnXxaeaCcWoVe5Tgism+EvB3U0t7WMahS5zinQUwhR4uLzOA4Zf44jv2GX
	gwwK5JKY1B32/1y4UgOiEUmsFkJurJg=
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-220-5wrQX5rkN3-VSsYYqOxGHA-1; Mon, 16 Oct 2023 15:15:31 -0400
X-MC-Unique: 5wrQX5rkN3-VSsYYqOxGHA-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.rdu2.redhat.com [10.11.54.5])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 9DB65185A7A7;
	Mon, 16 Oct 2023 19:15:28 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id B2A6F63F48;
	Mon, 16 Oct 2023 19:15:27 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id 2988119465BA;
	Mon, 16 Oct 2023 19:15:27 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Date: Mon, 16 Oct 2023 15:15:21 -0400 (EDT)
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: command line tool for this task?
In-Reply-To: <mailman.397.1697482540.843859.blinux-list@redhat.com>
References: <mailman.428.1697481936.843860.blinux-list@redhat.com>
 <mailman.397.1697482540.843859.blinux-list@redhat.com>
MIME-Version: 1.0
X-Content-Filtered-By: Mailman/MimeDel 2.1.29
Message-ID: <mailman.433.1697483726.843860.blinux-list@redhat.com>
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
X-Scanned-By: MIMEDefang 3.1 on 10.11.54.5
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"

SXMgdGhpcyBwcm9ncmFtIGEgcGFydCBvZiB0aGUgc3RhbmRhcmQgTGludXggc2hlbGwgdGhlcmVm
b3JlIGxpa2VseSB0byBiZSAKYSBwYXJ0IG9mICBTaGVsbHdvcmxkIHVzaW5nIFVidW50dT8KS2Fy
ZQoKCgpPbiBNb24sIDE2IE9jdCAyMDIzLCBMaW51eCBmb3IgYmxpbmQgZ2VuZXJhbCBkaXNjdXNz
aW9uIHdyb3RlOgoKPiBIYXZlIHlvdSBjb25zaWRlcmVkIHVzaW5nIGEgaGVyZSBkb2N1bWVudCBp
biBhIHNoZWxsIHNjcmlwdCwgd2l0aCB2YXJpYWJsZXMgCj4gdGhhdCBjYW4gYmUgc3VwcGxpZWQg
Zm9yIHRob3NlIHBhcnRzIG9mIHRoZSB0ZXh0IHRoYXQgY2hhbmdlPwo+Cj4gaHR0cHM6Ly93d3cu
YmFlbGR1bmcuY29tL2xpbnV4L2hlcmVkb2MtaGVyZXN0cmluZwo+Cj4gT24gMTYvMTAvMjMgMTQ6
NDUsIExpbnV4IGZvciBibGluZCBnZW5lcmFsIGRpc2N1c3Npb24gd3JvdGU6Cj4+ICBIaSBmb2xr
cywKPj4gIExldCBtZSBiZWdpbiBieSBzdGF0aW5nIHRoYXQgbXkgYWNjZXNzIHRvIExpbnV4IGlz
IGEgc2hlbGwgc2VydmljZSwKPj4gIHNwZWNpZmljYWxseSBzaGVsbHdvcmxkLm5ldAo+Pgo+PiAg
d2hhdCBJIGFtIHNlZWtpbmcgaXMgYSB0b29sIGxpa2VseSB0byBiZSBpbmNsdWRlZCB0aGF0IGxl
dHMgbWUgY3JlYXRlIGEKPj4gIGZpbGUgSSB3aWxsIHRoZW4gdXNlIGFzIGEgZ2lmdCBhY2tub3ds
ZWRnbWVudCBsZXR0ZXIgc2VudCB2aWEgZW1haWwuCj4+ICBXaGF0IEkgbWVhbiBpcyB0aGlzLgo+
PiAgSSBoYXZlIHRoZSBuYW1lIGFuZCBlbWFpbCBvZiBhIGNvbnRyaWJ1dG9yLsKgIEkgY3JlYXRl
IHRoZSBib2R5LCBidXQgd2lzaAo+PiAgdG8gY2hhbmdlIHNsaWdodCBkZXRhaWxzLCB0aGVpciBu
YW1lLCB0aGUgYW1vdW50IHRoZWlyIGVtYWlsIGV0Yy4KPj4gIElzIHRoZXJlIGEgdG9vbCBpbiBj
b21tYW5kIGxpbmUgTGludXggdGhhdCB3aWxsIHByb3ZpZGUgdGhpcyBzb3J0IG9mCj4+ICBzb2x1
dGlvbj8KPj4gIHRoYW5rcywKPj4gIEthcmVuCj4+IAo+Pgo+PiAgX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KPj4gIEJsaW51eC1saXN0IG1haWxpbmcgbGlz
dAo+PiAgQmxpbnV4LWxpc3RAcmVkaGF0LmNvbQo+PiAgaHR0cHM6Ly9saXN0bWFuLnJlZGhhdC5j
b20vbWFpbG1hbi9saXN0aW5mby9ibGludXgtbGlzdAo+PiAKPgo+IF9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCj4gQmxpbnV4LWxpc3QgbWFpbGluZyBsaXN0
Cj4gQmxpbnV4LWxpc3RAcmVkaGF0LmNvbQo+IGh0dHBzOi8vbGlzdG1hbi5yZWRoYXQuY29tL21h
aWxtYW4vbGlzdGluZm8vYmxpbnV4LWxpc3QKPgo+Cl9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCkJsaW51eC1saXN0IG1haWxpbmcgbGlzdApCbGludXgtbGlz
dEByZWRoYXQuY29tCmh0dHBzOi8vbGlzdG1hbi5yZWRoYXQuY29tL21haWxtYW4vbGlzdGluZm8v
YmxpbnV4LWxpc3QK

