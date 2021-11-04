Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [216.205.24.124])
	by mail.lfdr.de (Postfix) with ESMTPS id CBF0D445440
	for <lists+blinux-list@lfdr.de>; Thu,  4 Nov 2021 14:50:33 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1636033831;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=MXjkVPgfCl/njKtr56OBFnzcM0nw0XMxdY1Q+5ewq7s=;
	b=FonT6QHoinAFa+6YoPZY+cBQtEFCEv8a4AkcPtn7QScLrjTNvjVXrzuRgTGU0fbvmojTfv
	BkVnSfSx9wCayqqZ8uLBpuy9QdhK3KzJV0v1JkYp3TzcELXebVM3QrXnOLbRn1JhKcGJtb
	YdgugloyEOEUcWmq1MJOjpLWTtAWOM0=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-425-QaJ_EawuOri1tmPr-mLGBQ-1; Thu, 04 Nov 2021 09:50:24 -0400
X-MC-Unique: QaJ_EawuOri1tmPr-mLGBQ-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.11])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 7A6641018F79;
	Thu,  4 Nov 2021 13:50:19 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 6EEB519EF9;
	Thu,  4 Nov 2021 13:50:14 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 3A5474E58E;
	Thu,  4 Nov 2021 13:50:09 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.rdu2.redhat.com
	[10.11.54.6])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 1A4Do2I6012561 for <blinux-list@listman.util.phx.redhat.com>;
	Thu, 4 Nov 2021 09:50:02 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id EB7FF2166B25; Thu,  4 Nov 2021 13:50:01 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast01.extmail.prod.ext.rdu2.redhat.com [10.11.55.17])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id E391B2166B2F
	for <blinux-list@redhat.com>; Thu,  4 Nov 2021 13:49:56 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[207.211.31.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id EE18F899ECD
	for <blinux-list@redhat.com>; Thu,  4 Nov 2021 13:49:55 +0000 (UTC)
Received: from st43p00im-zteg10073501.me.com (st43p00im-zteg10073501.me.com
	[17.58.63.180]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-537-5RmUBnieOWqsJ7cen7TKFw-1; Thu, 04 Nov 2021 09:49:54 -0400
X-MC-Unique: 5RmUBnieOWqsJ7cen7TKFw-1
Received: from smtpclient.apple (c-73-237-149-120.hsd1.ga.comcast.net
	[73.237.149.120])
	by st43p00im-zteg10073501.me.com (Postfix) with ESMTPSA id A53EFAE0705
	for <blinux-list@redhat.com>; Thu,  4 Nov 2021 13:49:53 +0000 (UTC)
Mime-Version: 1.0 (Mac OS X Mail 14.0 \(3654.120.0.1.13\))
Subject: Re: FYI - The Yggdrasil Screen Reader Project
Date: Thu, 4 Nov 2021 09:49:52 -0400
References: <E5949DF0-363D-4D79-9E4A-5CB468223B5C@icloud.com>
	<1f2e65f8-3d25-a02f-39d3-59e80f4270af@gmail.com>
	<C4D8F75A-ADC8-4F6F-8F4C-9AE2BB8B0792@cfcl.com>
To: Linux for blind general discussion <blinux-list@redhat.com>
In-Reply-To: <C4D8F75A-ADC8-4F6F-8F4C-9AE2BB8B0792@cfcl.com>
Message-Id: <0156E832-953A-4EE3-BBC7-8ACB8FBE5DE3@icloud.com>
X-Proofpoint-Virus-Version: =?UTF-8?Q?vendor=3Dfsecure_engine=3D1.1.170-22c6f66c430a71ce266a39bfe25bc?=
	=?UTF-8?Q?2903e8d5c8f:6.0.425, 18.0.790,
	17.0.607.475.0000000_definitions?=
	=?UTF-8?Q?=3D2021-11-04=5F04:2021-11-03=5F01, 2021-11-04=5F04,
	2020-04-07?= =?UTF-8?Q?=5F01_signatures=3D0?=
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 malwarescore=0
	suspectscore=0
	bulkscore=0 mlxscore=0 adultscore=0 phishscore=0 mlxlogscore=896
	spamscore=0 clxscore=1015 classifier=spam adjust=0 reason=mlx
	scancount=1
	engine=8.12.0-2009150000 definitions=main-2111040058
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
	lists01.pubmisc.prod.ext.phx2.redhat.com id 1A4Do2I6012561
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SGksCkhhdmUgYW55IG9mIHlvdSB0cmllZCB0aGlzIG5ldyBzY3JlZW4gcmVhZGVyPwpJcyBpdCB1
c2luZyBTcGVhaz8KClRoYW5rcywKUm9iCgoKPiBPbiBOb3YgMSwgMjAyMSwgYXQgOToyNiBQTSwg
TGludXggZm9yIGJsaW5kIGdlbmVyYWwgZGlzY3Vzc2lvbiA8YmxpbnV4LWxpc3RAcmVkaGF0LmNv
bT4gd3JvdGU6Cj4gCj4gRldJVywgSSBqdXN0IHJhbiBhY3Jvc3MgdGhpcyBpbiBIYWNrZXIgTmV3
cy4uLgo+IAo+PiBBY2Nlc3NpYmlsaXR5IG9uIExpbnV4IGhhcyBoaXN0b3JpY2FsbHkgYmVlbiB1
bmRlci1kZXZlbG9wZWQsIHVuZGVyLW1haW50YWluZWQsIGFuZCwgdGhlcmVmb3JlLCBnYWluZWQg
YSByZXB1dGF0aW9uIG9mIGJlaW5nIHF1aXRlIHBhaW5mdWwgdG8gdXNlIGFzIGEgZGFpbHkgZHJp
dmVyIGFtb25nIGRpc2FibGVkIHBlb3BsZS4gV2Ugd2FudCB0byBjaGFuZ2UgdGhhdC4KPj4gCj4+
IFlnZ2RyYXNpbCBpcyBhIG5ldyBwcm9qZWN0IHRoYXQgYWltcyB0byBjcmVhdGUgYSBiZXR0ZXIg
TGludXggc2NyZWVuIHJlYWRlciwgd3JpdHRlbiBpbiBSdXN0LiBUaHJvdWdoIHRoaXMgcHJvamVj
dCwgd2UgYWltIHRvIHByb3ZpZGUgYSBiZXR0ZXIgc2NyZWVuIHJlYWRpbmcgZXhwZXJpZW5jZSB0
aGFuIHRoZSBvbmUgd2UgY3VycmVudGx5IGhhdmUgaW4gT3JjYS4gQSBzY3JlZW4gcmVhZGVyIHdp
dGggYWxsIHRoZSBtb2Rlcm4gZmVhdHVyZXMgYSBXaW5kb3dzIG9yIE1hY09TIHVzZXIgd291bGQg
ZXhwZWN0IGZyb20gdGhlaXIgY29tcHV0ZXJzLCBzb21lIG9mIHdoaWNoIGFyZSBvdXRsaW5lZCBi
ZWxvdy4KPj4gCj4+IAnigKIgT2JqZWN0IG5hdmlnYXRpb24KPj4gCeKAoiBPQ1IKPj4gCeKAoiBj
dXN0b21pc2FibGUgbmF2aWdhdGlvbiBjb21tYW5kcwo+PiAJ4oCiIGEgcG93ZXJmdWwgYWRkLW9u
IG1lY2hhbmlzbQo+PiAJ4oCiIGFuZCBtb3JlLgo+IAo+IFRoZSBZZ2dkcmFzaWwgU2NyZWVuIFJl
YWRlciBQcm9qZWN0Cj4gaHR0cHM6Ly95Z2dkcmFzaWwtc3IuZ2l0aHViLmlvLwo+IGh0dHBzOi8v
bmV3cy55Y29tYmluYXRvci5jb20vaXRlbT9pZD0yOTA1NjE2OAo+IAo+IC0gUmljaCBNb3Jpbgo+
IAo+IAo+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCj4g
QmxpbnV4LWxpc3QgbWFpbGluZyBsaXN0Cj4gQmxpbnV4LWxpc3RAcmVkaGF0LmNvbQo+IGh0dHBz
Oi8vbGlzdG1hbi5yZWRoYXQuY29tL21haWxtYW4vbGlzdGluZm8vYmxpbnV4LWxpc3QKCgpfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpCbGludXgtbGlzdCBt
YWlsaW5nIGxpc3QKQmxpbnV4LWxpc3RAcmVkaGF0LmNvbQpodHRwczovL2xpc3RtYW4ucmVkaGF0
LmNvbS9tYWlsbWFuL2xpc3RpbmZvL2JsaW51eC1saXN0

