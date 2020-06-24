Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [207.211.31.81])
	by mail.lfdr.de (Postfix) with ESMTP id 28026207193
	for <lists+blinux-list@lfdr.de>; Wed, 24 Jun 2020 12:54:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1592996089;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=PvDQmr6QGXB9p8IEkBlkxVWSXZYjz+YI1ekCp3ulqSo=;
	b=O3i4Gb5/sKMy9Gfoqy45jBUEFhIKpdf5rDkVEuw2YiDmMrTKiXxVRRm7WwjffbL24ywL3M
	F/+C3VL2dM7hs/RSHlB7CS8QkzkGfXzI0GOyxsEE5I03HDOUpWXRD2PYvMpS762ebOu10O
	PnzQgS3cXZd2KtbzioaPRiNEj7KjN/E=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-329-aNLoAQpqM2e8jKD7QYiwcw-1; Wed, 24 Jun 2020 06:54:47 -0400
X-MC-Unique: aNLoAQpqM2e8jKD7QYiwcw-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com [10.5.11.22])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 30A8CA0BD7;
	Wed, 24 Jun 2020 10:54:43 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 5FA6710013D7;
	Wed, 24 Jun 2020 10:54:42 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 7FE67104915;
	Wed, 24 Jun 2020 10:54:40 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.rdu2.redhat.com
	[10.11.54.6])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 05OAsZRc023624 for <blinux-list@listman.util.phx.redhat.com>;
	Wed, 24 Jun 2020 06:54:35 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 9FBC9217B438; Wed, 24 Jun 2020 10:54:35 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast05.extmail.prod.ext.rdu2.redhat.com [10.11.55.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 9AF32217B43A
	for <blinux-list@redhat.com>; Wed, 24 Jun 2020 10:54:33 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [205.139.110.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 0A9E280029D
	for <blinux-list@redhat.com>; Wed, 24 Jun 2020 10:54:33 +0000 (UTC)
Received: from gateway24.websitewelcome.com (gateway24.websitewelcome.com
	[192.185.51.35]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-488-F1Qf0kp5OGSLL7Rm-38JnA-1; Wed, 24 Jun 2020 06:54:30 -0400
X-MC-Unique: F1Qf0kp5OGSLL7Rm-38JnA-1
Received: from cm16.websitewelcome.com (cm16.websitewelcome.com [100.42.49.19])
	by gateway24.websitewelcome.com (Postfix) with ESMTP id 77B1034EB8
	for <blinux-list@redhat.com>; Wed, 24 Jun 2020 05:30:32 -0500 (CDT)
Received: from gator4065.hostgator.com ([192.185.4.76]) by cmsmtp with SMTP
	id o2fojKVZrQyTQo2fojWv8e; Wed, 24 Jun 2020 05:30:32 -0500
X-Authority-Reason: nr=8
Received: from igld-84-229-97-173.inter.net.il ([84.229.97.173]:41794
	helo=telaviv1.shlomifish.org)
	by gator4065.hostgator.com with esmtpsa (TLS1.2) tls
	TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.93)
	(envelope-from <shlomif@shlomifish.org>) id 1jo2fo-003o58-4W
	for blinux-list@redhat.com; Wed, 24 Jun 2020 05:30:32 -0500
Received: from telaviv1.shlomifish.org (telaviv1.shlomifish.org [127.0.0.1])
	by telaviv1.shlomifish.org (Postfix) with ESMTP id C685E26004B
	for <blinux-list@redhat.com>; Wed, 24 Jun 2020 13:30:29 +0300 (IDT)
Date: Wed, 24 Jun 2020 13:30:29 +0300
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: vlc bookmarks
Message-ID: <20200624133029.711a19a0@telaviv1.shlomifish.org>
In-Reply-To: <alpine.NEB.2.22.394.2006240601570.7968@panix1.panix.com>
References: <alpine.NEB.2.22.394.2006232114040.7776@panix1.panix.com>
	<20200624122324.7900c7e8@telaviv1.shlomifish.org>
	<alpine.NEB.2.22.394.2006240601570.7968@panix1.panix.com>
MIME-Version: 1.0
X-AntiAbuse: This header was added to track abuse,
	please include it with any abuse report
X-AntiAbuse: Primary Hostname - gator4065.hostgator.com
X-AntiAbuse: Original Domain - redhat.com
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - shlomifish.org
X-BWhitelist: no
X-Source-IP: 84.229.97.173
X-Source-L: No
X-Exim-ID: 1jo2fo-003o58-4W
X-Source: 
X-Source-Args: 
X-Source-Dir: 
X-Source-Sender: igld-84-229-97-173.inter.net.il (telaviv1.shlomifish.org)
	[84.229.97.173]:41794
X-Source-Auth: shlomif@shlomifish.org
X-Email-Count: 1
X-Source-Cap: c2hsb21pZjtzaGxvbWlmO2dhdG9yNDA2NS5ob3N0Z2F0b3IuY29t
X-Local-Domain: yes
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.6
X-MIME-Autoconverted: from quoted-printable to 8bit by
	lists01.pubmisc.prod.ext.phx2.redhat.com id 05OAsZRc023624
X-loop: blinux-list@redhat.com
From: Linux for blind general discussion <blinux-list@redhat.com>
X-BeenThere: blinux-list@redhat.com
X-Mailman-Version: 2.1.12
Precedence: junk
Reply-To: blinux-list@redhat.com
List-Id: Linux for blind general discussion <blinux-list.redhat.com>
List-Unsubscribe: <https://www.redhat.com/mailman/options/blinux-list>,
	<mailto:blinux-list-request@redhat.com?subject=unsubscribe>
List-Archive: <https://www.redhat.com/archives/blinux-list>
List-Post: <mailto:blinux-list@redhat.com>
List-Help: <mailto:blinux-list-request@redhat.com?subject=help>
List-Subscribe: <https://www.redhat.com/mailman/listinfo/blinux-list>,
	<mailto:blinux-list-request@redhat.com?subject=subscribe>
Sender: blinux-list-bounces@redhat.com
Errors-To: blinux-list-bounces@redhat.com
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SGksCgpPbiBXZWQsIDI0IEp1biAyMDIwIDA2OjAzOjQ0IC0wNDAwCkxpbnV4IGZvciBibGluZCBn
ZW5lcmFsIGRpc2N1c3Npb24gPGJsaW51eC1saXN0QHJlZGhhdC5jb20+IHdyb3RlOgoKPiBJIHNl
YXJjaGVkIHdpdGhvdXQgcXVvdGVzIGFuZCBzZWFyY2hlZCBmb3IgYm9va21hcmsuICBXaGF0IEkg
Zm91bmQgSSdtCj4gZ29pbmcgdG8gZ3Vlc3MgYWxsIGhhcyB0byBiZSBlbnRlcmVkIGZyb20gdGhl
IGNvbW1hbmQgbGluZSBhcyB2bGMgaXMKPiBzdGFydGVkLiAtLWJvb2ttYXJrcz08c3RyaW5nPiBC
b29rbWFya3MgbGlzdCBmb3IgYSBzdHJlYW1PbiBXZWQsIDI0IEp1bgo+IDIwMjAsIExpbnV4IGZv
ciBibGluZCBnZW5lcmFsIGRpc2N1c3Npb24gd3JvdGU6Cj4gICAgICAgICAgIFlvdSBjYW4gbWFu
dWFsbHkgZ2l2ZSBhIGxpc3Qgb2YgYm9va21hcmtzIGZvciBhIHN0cmVhbSBpbiB0aGUKPiBmb3Jt
Cj4gCgpUaGVyZSBhcmUgc2V2ZXJhbCByZWxldmFudCBvY2N1cnJlbmNlcyBvZiAiYm9va21hcmsi
IHRoZXJlIHNvIHByZXNzICJGMyIKImN0cmwrZyIgb3IgZXF1aXZhbGVudCBmb3IgIm5leHQgbWF0
Y2giLgoKPiAie25hbWU9Ym9va21hcmstbmFtZSx0aW1lPW9wdGlvbmFsLXRpbWUtb2Zmc2V0LGJ5
dGVzPW9wdGlvbmFsLWJ5dGUtb2Y+Cj4gRGF0ZTogV2VkLCAyNCBKdW4gMjAyMCAwNToyMzoyNAo+
ICAgICAgICAgICBmc2V0fSx7Li4ufSIKPiAKPiA+IEZyb206IExpbnV4IGZvciBibGluZCBnZW5l
cmFsIGRpc2N1c3Npb24gIAo+IDxibGludXgtbGlzdEByZWRoYXQuY29tPgo+ID4gVG86IExpbnV4
IGZvciBibGluZCBnZW5lcmFsIGRpc2N1c3Npb24gPGJsaW51eC1saXN0QHJlZGhhdC5jb20+Cj4g
PiBTdWJqZWN0OiBSZTogdmxjIGJvb2ttYXJrcwo+ID4KPiA+IE9uIFR1ZSwgMjMgSnVuIDIwMjAg
MjE6MTY6MDUgLTA0MDAKPiA+IExpbnV4IGZvciBibGluZCBnZW5lcmFsIGRpc2N1c3Npb24gPGJs
aW51eC1saXN0QHJlZGhhdC5jb20+IHdyb3RlOgo+ID4gIAo+ID4gPiBGb3IgY29tbWFuZCBsaW5l
IHVzZXJzIG9mIHZsYyB3aWxsIGl0IGJlIHBvc3NpYmxlIHRvIHBhdXNlIGluIGEgcmF0aGVyCj4g
PiA+IGxvbmcgbXAzIGZpbGUgYW5kIHNhdmUgYSBib29rbWFyayBhdCB0aGF0IHNwb3QgdGhlbiBs
YXRlciByZXR1cm4gdG8gdGhhdAo+ID4gPiBib29rbWFyaz8KPiA+ID4gIAo+ID4KPiA+IEhpIQo+
ID4KPiA+IFRyeSBzZWFyY2hpbmcgZm9yICJib29rbWFyayIgKHdpdGhvdXQgdGhlIHF1b3RlcyBh
bmQgd2l0aG91dCB3aG9sZSB3b3Jkcwo+ID4gc2VhcmNoKSBvbiB0aGlzIHBhZ2U6Cj4gPgo+ID4g
aHR0cHM6Ly93aWtpLnZpZGVvbGFuLm9yZy9WTENfY29tbWFuZC1saW5lX2hlbHAvCj4gPgo+ID4g
KCBVbnRlc3RlZC4gKQo+ID4gIAo+ID4gPgo+ID4gPgo+ID4gPiAtLQo+ID4gPgo+ID4gPiBfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+ID4gPiBCbGludXgt
bGlzdCBtYWlsaW5nIGxpc3QKPiA+ID4gQmxpbnV4LWxpc3RAcmVkaGF0LmNvbQo+ID4gPiBodHRw
czovL3d3dy5yZWRoYXQuY29tL21haWxtYW4vbGlzdGluZm8vYmxpbnV4LWxpc3QKPiA+ID4gIAo+
ID4KPiA+Cj4gPgo+ID4gLS0KPiA+Cj4gPiBTaGxvbWkgRmlzaCAgICAgICBodHRwczovL3d3dy5z
aGxvbWlmaXNoLm9yZy8KPiA+IE15IFBob3RvcyAtIGh0dHBzOi8vd3d3LmZsaWNrci5jb20vcGhv
dG9zL3NobG9taWYvCj4gPgo+ID4gSSB1bmRlcnN0b29kIHdoYXQgTW9uYWRzIGFyZSBmb3IgNSBt
aW51dGVzLiBUaGVuIEkgaGFkIHRvIGxldCBnbyBvZiB0aGUKPiA+IHVuZGVyc3RhbmRpbmcuIEl0
IHdhcyB0b28gaW50ZW5zZSB0byBiZSBrZXB0IGluc2lkZSBteSBoZWFkLgo+ID4gICAgID8gQW4g
SXNyYWVsaSBPcGVuIFNvdXJjZSBTb2Z0d2FyZSBFbnRodXNpYXN0Lgo+ID4KPiA+IFBsZWFzZSBy
ZXBseSB0byBsaXN0IGlmIGl0J3MgYSBtYWlsaW5nIGxpc3QgcG9zdCAtIGh0dHBzOi8vc2hsb20u
aW4vcmVwbHkgLgo+ID4KPiA+Cj4gPiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwo+ID4gQmxpbnV4LWxpc3QgbWFpbGluZyBsaXN0Cj4gPiBCbGludXgtbGlz
dEByZWRoYXQuY29tCj4gPiBodHRwczovL3d3dy5yZWRoYXQuY29tL21haWxtYW4vbGlzdGluZm8v
YmxpbnV4LWxpc3QgIAo+IAoKCgotLSAKClNobG9taSBGaXNoICAgICAgIGh0dHBzOi8vd3d3LnNo
bG9taWZpc2gub3JnLwpIdW1hbml0eSAtIFBhcm9keSBvZiBNb2Rlcm4gTGlmZSAtIGh0dHBzOi8v
c2hsb20uaW4vaHVtYW5pdHkKClRvIGhhdmUgYnVncyBpcyBodW1hbjsgdG8gZmluZCB0aGVtIOKA
lCBkaXZpbmUuCiAgICDigJQgaHR0cHM6Ly93d3cuc2hsb21pZmlzaC5vcmcvaHVtb3VyLmh0bWwK
ClBsZWFzZSByZXBseSB0byBsaXN0IGlmIGl0J3MgYSBtYWlsaW5nIGxpc3QgcG9zdCAtIGh0dHBz
Oi8vc2hsb20uaW4vcmVwbHkgLgoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fCkJsaW51eC1saXN0IG1haWxpbmcgbGlzdApCbGludXgtbGlzdEByZWRoYXQu
Y29tCmh0dHBzOi8vd3d3LnJlZGhhdC5jb20vbWFpbG1hbi9saXN0aW5mby9ibGludXgtbGlzdA==

