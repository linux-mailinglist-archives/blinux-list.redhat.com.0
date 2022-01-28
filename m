Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id D459A49F051
	for <lists+blinux-list@lfdr.de>; Fri, 28 Jan 2022 02:05:42 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1643331941;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=TTX+YHtUWhgLRqipplPg/4r035b87VHkcgWPhW9myzs=;
	b=E5UGkA4yQkLKA3BsYGOskntvwOHLBOVtTDZrZthVf6Mh2QWEn14sz+MjBYXYTNMBgGrUwk
	1Yt5+bYBPIkzPexp1nuO3BLCTqKcz6FBMK+KnP0zoLYwzsK4/lcyvW8d+zFhpdDYQhhQGu
	GhnFmy53zhosmu2qvsGEi1UgvuMiCbE=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-142-721MVNrpNAKtHuGgRBS93A-1; Thu, 27 Jan 2022 20:05:38 -0500
X-MC-Unique: 721MVNrpNAKtHuGgRBS93A-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.11])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id BBEF11853028;
	Fri, 28 Jan 2022 01:05:34 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 9C5E05DB82;
	Fri, 28 Jan 2022 01:05:34 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 7BDA31809CB8;
	Fri, 28 Jan 2022 01:05:34 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx09.intmail.prod.int.rdu2.redhat.com
	[10.11.54.9])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 20S15VAg028767 for <blinux-list@listman.util.phx.redhat.com>;
	Thu, 27 Jan 2022 20:05:32 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id C653348FB04; Fri, 28 Jan 2022 01:05:31 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast06.extmail.prod.ext.rdu2.redhat.com [10.11.55.22])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id C2B084021B2
	for <blinux-list@redhat.com>; Fri, 28 Jan 2022 01:05:31 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [205.139.110.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id A954A185A794
	for <blinux-list@redhat.com>; Fri, 28 Jan 2022 01:05:31 +0000 (UTC)
Received: from st43p00im-ztfb10073301.me.com (st43p00im-ztfb10073301.me.com
	[17.58.63.186]) by relay.mimecast.com with ESMTP with STARTTLS
	(version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-624-6Y0Y62gaN6WfYCKp_B1nBg-1; Thu, 27 Jan 2022 20:05:30 -0500
X-MC-Unique: 6Y0Y62gaN6WfYCKp_B1nBg-1
Received: from smtpclient.apple (c-73-237-149-120.hsd1.ga.comcast.net
	[73.237.149.120])
	by st43p00im-ztfb10073301.me.com (Postfix) with ESMTPS id 75D6680073F
	for <blinux-list@redhat.com>; Fri, 28 Jan 2022 01:05:29 +0000 (UTC)
Mime-Version: 1.0 (Mac OS X Mail 14.0 \(3654.120.0.1.13\))
Subject: Re: Fedora-MATE_Compiz-Live-x86_64-35-1.2.iso
Date: Thu, 27 Jan 2022 20:05:28 -0500
References: <2930A22F-EA6A-4939-A70A-6C92AF95E4CC@icloud.com>
	<f37c70b7-56fb-5104-f60a-636740db29cf@slint.fr>
To: blinux-list@redhat.com
In-Reply-To: <f37c70b7-56fb-5104-f60a-636740db29cf@slint.fr>
Message-Id: <2B6D227E-CAFB-42F3-926D-2728E4D7139D@icloud.com>
X-Proofpoint-Virus-Version: =?UTF-8?Q?vendor=3Dfsecure_engine=3D1.1.170-22c6f66c430a71ce266a39bfe25bc?=
	=?UTF-8?Q?2903e8d5c8f:6.0.425, 18.0.572,
	17.11.62.513.0000000_definitions?=
	=?UTF-8?Q?=3D2022-01-14=5F01:2022-01-14=5F01, 2020-02-14=5F11,
	2021-12-02?= =?UTF-8?Q?=5F01_signatures=3D0?=
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0
	malwarescore=0
	adultscore=0 clxscore=1015 spamscore=0 mlxlogscore=913 phishscore=0
	mlxscore=0 bulkscore=0 classifier=spam adjust=0 reason=mlx scancount=1
	engine=8.12.0-2009150000 definitions=main-2201280003
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.85 on 10.11.54.9
X-MIME-Autoconverted: from quoted-printable to 8bit by
	lists01.pubmisc.prod.ext.phx2.redhat.com id 20S15VAg028767
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

SGkgRGlkaWVyLApJIHJlYWQgdGhlIGluc3RydWN0aW9ucyBidXQgSSB3YXMgc3RpbGwgY29uZnVz
ZWQuCklmIEkgcnVuIFNsaW50IGxpdmUgSVNPICBpbiBhIFZNLCBob3cgZG8gSSBnZXQgc3BlZWNo
PwpUaGFua3MsClJvYgoKCj4gT24gSmFuIDI3LCAyMDIyLCBhdCA2OjQ0IFBNLCBMaW51eCBmb3Ig
YmxpbmQgZ2VuZXJhbCBkaXNjdXNzaW9uIDxibGludXgtbGlzdEByZWRoYXQuY29tPiB3cm90ZToK
PiAKPiBIaSBSb2IsCj4gCj4gZGlkIHlvdSB0cnkgU2xpbnQ/Cj4gaHR0cHM6Ly9zbGludC5mci9k
b2MvSGFuZEJvb2suaHRtbAo+IAo+IENoZWVycywKPiBEaWRpZXIKPiAKPiBMZSAyOC8wMS8yMDIy
IMOgIDAwOjIyLCBMaW51eCBmb3IgYmxpbmQgZ2VuZXJhbCBkaXNjdXNzaW9uIGEgw6ljcml0IDoK
Pj4gRGVhciBMaXN0LAo+PiBUaGlzIGlzIG15IHRoaXJkIGF0dGVtcHQgYXQgRmVkb3JhLgo+PiBJ
IHNldHVwIGEgVk0gb24gbXkgTWFjIHRvIHRyeSAKPj4gRmVkb3JhLU1BVEVfQ29tcGl6LUxpdmUt
eDg2XzY0LTM1LTEuMi5pc28uCj4+IEkgcHJlc3NlZCBhbHQrRjIsIHR5cGVkIG9yY2EgYW5kIGVu
dGVyLgo+PiBJIGdldCBubyBzcGVlY2guCj4+IFdoYXQgY2FuIGJlIHdyb25nPwo+PiBUaGUgc2Ft
ZSB0aGluZyBoYXBwZW5lZCB3aXRoIEZlZG9yYSBXb3Jrc3RhdGlvbiAzNS4KPj4gSeKAmW0gYWJv
dXQgdG8gZ2l2ZSB1cCBhbmQgc3RpY2sgd2l0aCBBY2Nlc3NpYmxlIENvY29udXQgYW5kIExpbnV4
IE1pbnQgMjAuMDMuCj4+IFRoZXkgYm90aCB3b3JrIG91dCBvZiB0aGUgYm94IHdpdGggbm8gcHJv
YmxlbXMuCj4+IFRoYW5rcywKPj4gUm9iCj4gCj4gCj4gX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KPiBCbGludXgtbGlzdCBtYWlsaW5nIGxpc3QKPiBCbGlu
dXgtbGlzdEByZWRoYXQuY29tCj4gaHR0cHM6Ly9saXN0bWFuLnJlZGhhdC5jb20vbWFpbG1hbi9s
aXN0aW5mby9ibGludXgtbGlzdAoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fCkJsaW51eC1saXN0IG1haWxpbmcgbGlzdApCbGludXgtbGlzdEByZWRoYXQu
Y29tCmh0dHBzOi8vbGlzdG1hbi5yZWRoYXQuY29tL21haWxtYW4vbGlzdGluZm8vYmxpbnV4LWxp
c3Q=

