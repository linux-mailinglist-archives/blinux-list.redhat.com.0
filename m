Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 2DF9949F043
	for <lists+blinux-list@lfdr.de>; Fri, 28 Jan 2022 01:59:55 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1643331594;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=dWHC89pK72k1etk8IHIpsKcvcUBV50hcidhCDDdgAyk=;
	b=B5+PA3XkBWqknrHQTAY6BTA3kZ+RH4olGCLIj94LuMLlTtmP78TEWzvmAEu1FFP8oMCIU6
	aZkXtf1Y6KlNVuAwTlcxP1yV4KqQ3f72EHMz1IrV3vrnQJzje2lit2AH0nI5G5qDoyNhmP
	LSyStl4AfVEgASrrtTr1+0VHVaN/hpE=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-675-Elp91R2uOXa_mgdqty5cRw-1; Thu, 27 Jan 2022 19:59:50 -0500
X-MC-Unique: Elp91R2uOXa_mgdqty5cRw-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com [10.5.11.14])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id AFC391083F62;
	Fri, 28 Jan 2022 00:59:46 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 2F56B5F90A;
	Fri, 28 Jan 2022 00:59:44 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id F280A4BB7C;
	Fri, 28 Jan 2022 00:59:43 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.rdu2.redhat.com
	[10.11.54.8])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 20S0xeVu028404 for <blinux-list@listman.util.phx.redhat.com>;
	Thu, 27 Jan 2022 19:59:40 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 977C8C07F3F; Fri, 28 Jan 2022 00:59:40 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast01.extmail.prod.ext.rdu2.redhat.com [10.11.55.17])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 93E63C080B3
	for <blinux-list@redhat.com>; Fri, 28 Jan 2022 00:59:40 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [205.139.110.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 7A5D285A5A8
	for <blinux-list@redhat.com>; Fri, 28 Jan 2022 00:59:40 +0000 (UTC)
Received: from st43p00im-ztfb10073301.me.com (st43p00im-ztfb10073301.me.com
	[17.58.63.186]) by relay.mimecast.com with ESMTP with STARTTLS
	(version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-124-DmgUlH69M5OPhpSkW9vz8A-1; Thu, 27 Jan 2022 19:59:29 -0500
X-MC-Unique: DmgUlH69M5OPhpSkW9vz8A-1
Received: from smtpclient.apple (c-73-237-149-120.hsd1.ga.comcast.net
	[73.237.149.120])
	by st43p00im-ztfb10073301.me.com (Postfix) with ESMTPS id 9CEFD800B63
	for <blinux-list@redhat.com>; Fri, 28 Jan 2022 00:59:28 +0000 (UTC)
Mime-Version: 1.0 (Mac OS X Mail 14.0 \(3654.120.0.1.13\))
Subject: Re: Fedora-MATE_Compiz-Live-x86_64-35-1.2.iso
Date: Thu, 27 Jan 2022 19:59:27 -0500
References: <2930A22F-EA6A-4939-A70A-6C92AF95E4CC@icloud.com>
	<55be71e1-747d-412b-148-3b1ba95fdfa@panix.com>
To: Linux for blind general discussion <blinux-list@redhat.com>
In-Reply-To: <55be71e1-747d-412b-148-3b1ba95fdfa@panix.com>
Message-Id: <CE83BCD7-7C6C-46B8-A6C3-B5022E8A8576@icloud.com>
X-Proofpoint-Virus-Version: =?UTF-8?Q?vendor=3Dfsecure_engine=3D1.1.170-22c6f66c430a71ce266a39bfe25bc?=
	=?UTF-8?Q?2903e8d5c8f:6.0.138, 18.0.816,
	17.11.62.513.0000000_definitions?=
	=?UTF-8?Q?=3D2022-01-17=5F04:2020-02-14=5F02, 2022-01-17=5F04,
	2021-12-02?= =?UTF-8?Q?=5F01_signatures=3D0?=
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 phishscore=0
	clxscore=1015
	suspectscore=0 mlxscore=0 bulkscore=0 mlxlogscore=999 malwarescore=0
	adultscore=0 spamscore=0 classifier=spam adjust=0 reason=mlx
	scancount=1
	engine=8.12.0-2009150000 definitions=main-2201280003
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.85 on 10.11.54.8
X-MIME-Autoconverted: from quoted-printable to 8bit by
	lists01.pubmisc.prod.ext.phx2.redhat.com id 20S0xeVu028404
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

QXQgb25lIHBvaW50LCBJIHVzZWQgbXkgcGhvbmUgdG8gcmVhZCB0aGUgc2NyZWVuIGFmdGVyIHBy
ZXNzaW5nIGluc2VydCtTcGFjZS4KVGhlIG9yY2Egc2V0dGluZ3Mgd2FzIG9wZW4uCkkgYWxzbyB0
eXBlZCBmaXJlZm94IGluIHRoZSBydW4gYm94LCB0aGVuIGFsdCtEIHRoZW4gdHlwZWQgd3d3Lnlv
dXR1YmUuY29tCkkgaGl0IHRoZSBIIGtleSBmb3IgaGVhZGluZ3MgYSBmZXcgdGltZXMgdG8gbW92
ZSB0byBhIHZpZGVvIGxpbmsgYW5kIGhpdCBlbnRlci4gSSBjb3VsZCBoZWFyIGEgZmFpbnQgIApD
bGlja2luZyBldmVyeSBub3cgJiB0aGVuLiBUaGF0IG1ha2VzIG1lIHRoaW5rIGl0cyBhIHByb2Js
ZW0gd2l0aCB0aGUgc291bmQuClRoZSBmNCBkaWRu4oCZdCBoZWxwLgpUaGFua3MsClJvYgoKPiBP
biBKYW4gMjcsIDIwMjIsIGF0IDc6MTggUE0sIExpbnV4IGZvciBibGluZCBnZW5lcmFsIGRpc2N1
c3Npb24gPGJsaW51eC1saXN0QHJlZGhhdC5jb20+IHdyb3RlOgo+IAo+IENvdWxkIGl0IGJlIGFj
Y2Vzc2liaWxpdHkgbmVlZHMgdG8gYmUgZW5hYmxlZCBmaXJzdCBiZWZvcmUgeW91IGNhbiBydW4K
PiBvcmNhPyAgSWYgc28sIGhpdCBmNCBvbmNlIHRvIHRvZ2dsZSBhY2Nlc3NpYmlsaXR5IG9uIHRo
ZW4gdHJ5IGFsdCtmMiBvcmNhCj4gb3IgYWx0K2YyIG9yY2EgLS1yZXBsYWNlIG9yIGFsdC1zdXBl
ci1zLgo+IE9uZSBvZiB0aG9zZSB0aHJlZSBtYXkgd29yay4gIEl0IHdvdWxkIGJlIG5pY2UgaWYg
ZjQgd291bGQgbWFrZSBhIHJpc2luZwo+IG9yIGZhbGxpbmcgc2V0IG9mIHRvbmVzIHRvIGxldCB1
c2VycyBrbm93IGlmIHRoZXkgdG9nZ2xlZCBhY2Nlc3NpYmlsaXR5IG9uCj4gb3Igb2ZmIG9yIGlm
IGY0IG1hZGUgbm8gc291bmQsIGFjY2Vzc2liaWxpdHkgd2Fzbid0IGVmZmVjdGVkLgo+IEkgY291
bGQgbm90IGdldCBFbmRlYXZvdXJvcyB0YWxraW5nIGF0IGFsbCBvbiBiYXJlIG1ldGFsIHNvIGNh
biB1bmRlcnN0YW5kCj4geW91ciBmcnVzdHJhdGlvbi4KPiBUaGF0IGlmIGl0IGV2ZXIgd29ya3Mg
d2lsbCBuZWVkIGEgZmV3IG1pbnV0ZXMgd2l0aCBzaWdodGVkIGFzc2lzdGFuY2UuCj4gT24gVGh1
LCAyNyBKYW4gMjAyMiwgTGludXggZm9yIGJsaW5kIGdlbmVyYWwgZGlzY3Vzc2lvbiB3cm90ZToK
PiAKPj4gRGVhciBMaXN0LAo+PiBUaGlzIGlzIG15IHRoaXJkIGF0dGVtcHQgYXQgRmVkb3JhLgo+
PiBJIHNldHVwIGEgVk0gb24gbXkgTWFjIHRvIHRyeQo+PiBGZWRvcmEtTUFURV9Db21waXotTGl2
ZS14ODZfNjQtMzUtMS4yLmlzby4KPj4gSSBwcmVzc2VkIGFsdCtGMiwgdHlwZWQgb3JjYSBhbmQg
ZW50ZXIuCj4+IEkgZ2V0IG5vIHNwZWVjaC4KPj4gV2hhdCBjYW4gYmUgd3Jvbmc/Cj4+IFRoZSBz
YW1lIHRoaW5nIGhhcHBlbmVkIHdpdGggRmVkb3JhIFdvcmtzdGF0aW9uIDM1Lgo+PiBJP20gYWJv
dXQgdG8gZ2l2ZSB1cCBhbmQgc3RpY2sgd2l0aCBBY2Nlc3NpYmxlIENvY29udXQgYW5kIExpbnV4
IE1pbnQgMjAuMDMuCj4+IFRoZXkgYm90aCB3b3JrIG91dCBvZiB0aGUgYm94IHdpdGggbm8gcHJv
YmxlbXMuCj4+IFRoYW5rcywKPj4gUm9iCj4+IAo+PiAKPj4gX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KPj4gQmxpbnV4LWxpc3QgbWFpbGluZyBsaXN0Cj4+
IEJsaW51eC1saXN0QHJlZGhhdC5jb20KPj4gaHR0cHM6Ly9saXN0bWFuLnJlZGhhdC5jb20vbWFp
bG1hbi9saXN0aW5mby9ibGludXgtbGlzdAo+IAo+IF9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCj4gQmxpbnV4LWxpc3QgbWFpbGluZyBsaXN0Cj4gQmxpbnV4
LWxpc3RAcmVkaGF0LmNvbQo+IGh0dHBzOi8vbGlzdG1hbi5yZWRoYXQuY29tL21haWxtYW4vbGlz
dGluZm8vYmxpbnV4LWxpc3QKPiAKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwpCbGludXgtbGlzdCBtYWlsaW5nIGxpc3QKQmxpbnV4LWxpc3RAcmVkaGF0
LmNvbQpodHRwczovL2xpc3RtYW4ucmVkaGF0LmNvbS9tYWlsbWFuL2xpc3RpbmZvL2JsaW51eC1s
aXN0

