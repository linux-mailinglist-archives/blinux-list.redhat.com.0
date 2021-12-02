Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 0961F466D56
	for <lists+blinux-list@lfdr.de>; Thu,  2 Dec 2021 23:55:58 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1638485758;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=l9M81vqZnGdjXBRRWmVi0KJXlznsixMLxxfR2uSkbgk=;
	b=JdNiFBX9J0kVjtaEJCHv86O+6/2ntRHXifX5ph4bx6a35qfWWlqDr/2Eij0H+btos+/75U
	QmMSd/J5xUvIZYtCrEmRAA++NoFa0kRaVESB0IwdyUOzwzJ/mAYWHufOyknF2sH1oYkz/v
	ptE/aM2DhfhIasRQZySKiW1Hkj8wtlI=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-167-MCrNVxdbMyq17zThcB6lGQ-1; Thu, 02 Dec 2021 17:55:54 -0500
X-MC-Unique: MCrNVxdbMyq17zThcB6lGQ-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com [10.5.11.15])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 25AAD101872B;
	Thu,  2 Dec 2021 22:55:51 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 075985F4E7;
	Thu,  2 Dec 2021 22:55:50 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id E96CA1809C89;
	Thu,  2 Dec 2021 22:55:48 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.rdu2.redhat.com
	[10.11.54.7])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 1B2Mql2j015323 for <blinux-list@listman.util.phx.redhat.com>;
	Thu, 2 Dec 2021 17:52:47 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 8D9D3140240A; Thu,  2 Dec 2021 22:52:47 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast06.extmail.prod.ext.rdu2.redhat.com [10.11.55.22])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 890DE1402406
	for <blinux-list@redhat.com>; Thu,  2 Dec 2021 22:52:47 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[205.139.110.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 6FFDD185A79C
	for <blinux-list@redhat.com>; Thu,  2 Dec 2021 22:52:47 +0000 (UTC)
Received: from st43p00im-zteg10061901.me.com (st43p00im-zteg10061901.me.com
	[17.58.63.168]) by relay.mimecast.com with ESMTP with STARTTLS
	(version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-452-Q6pv1fQtPCWzuj5Cs7jN9A-1; Thu, 02 Dec 2021 17:52:45 -0500
X-MC-Unique: Q6pv1fQtPCWzuj5Cs7jN9A-1
Received: from smtpclient.apple (c-73-237-149-120.hsd1.ga.comcast.net
	[73.237.149.120])
	by st43p00im-zteg10061901.me.com (Postfix) with ESMTPSA id 5A68B860885
	for <blinux-list@redhat.com>; Thu,  2 Dec 2021 22:52:44 +0000 (UTC)
Mime-Version: 1.0 (Mac OS X Mail 14.0 \(3654.120.0.1.13\))
Subject: Re: Help booting live disk
Date: Thu, 2 Dec 2021 17:52:43 -0500
References: <8165B247-F098-4F16-8FFB-3F797D5153B0@icloud.com>
	<CAM+Q2c7ZodTV6ZbYN2tFsiQ_iG6NzfcdoC77VWytuN5sePmJMA@mail.gmail.com>
To: Linux for blind general discussion <blinux-list@redhat.com>
In-Reply-To: <CAM+Q2c7ZodTV6ZbYN2tFsiQ_iG6NzfcdoC77VWytuN5sePmJMA@mail.gmail.com>
Message-Id: <855B4BCD-E46E-4774-BE77-091C9BCABCC7@icloud.com>
X-Proofpoint-Virus-Version: =?UTF-8?Q?vendor=3Dfsecure_engine=3D1.1.170-22c6f66c430a71ce266a39bfe25bc?=
	=?UTF-8?Q?2903e8d5c8f:6.0.425, 18.0.790,
	17.11.62.513.0000000_definitions?=
	=?UTF-8?Q?=3D2021-12-02=5F14:2021-12-01=5F01, 2021-12-02=5F14,
	2021-12-02?= =?UTF-8?Q?=5F01_signatures=3D0?=
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 mlxlogscore=999
	spamscore=0
	malwarescore=0 phishscore=0 mlxscore=0 suspectscore=0 bulkscore=0
	clxscore=1015 adultscore=0 classifier=spam adjust=0 reason=mlx
	scancount=1
	engine=8.12.0-2009150000 definitions=main-2112020137
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.85 on 10.11.54.7
X-MIME-Autoconverted: from quoted-printable to 8bit by
	lists01.pubmisc.prod.ext.phx2.redhat.com id 1B2Mql2j015323
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

T0ssClRoYW5rcywKSeKAmWxsIHdhaXQgdW50aWwgSSBjYW4gZ2V0IGhlbHAuCgoKPiBPbiBEZWMg
MiwgMjAyMSwgYXQgNTo0NyBQTSwgTGludXggZm9yIGJsaW5kIGdlbmVyYWwgZGlzY3Vzc2lvbiA8
YmxpbnV4LWxpc3RAcmVkaGF0LmNvbT4gd3JvdGU6Cj4gCj4gUm9iLCB5b3UncmUgZWl0aGVyIGdv
aW5nIHRvIGhhdmUgdG8gZ28gaW50byBiaW9zIHRvIGNoYW5nZSBzb21lCj4gc2V0dGluZ3MgaW4g
b3JkZXIgdG8gYm9vdCBmcm9tIGEgVVNCIHN0aWNrIChmb3Igd2hpY2ggeW91J2xsIG5lZWQKPiBz
aWdodGVkIGFzc2lzdGFuY2UpLCBvciwgc29tZXRpbWVzLCBpZiB5b3UncmUgbHVja3ksIHlvdSBj
YW4gcHJlc3MgYQo+IGtleSBsaWtlIGVzY2FwZSBhcyB0aGUgbWFjaGluZSBpcyBzdGFydGluZyB0
byBnbyBpbnRvIGEgYm9vdCBtZW51Cj4gKHRoYXQgZG9lc24ndCBzcGVhaykgZnJvbSB3aGljaCB5
b3UgY2FuIHNlbGVjdCB5b3VyIGRlc2lyZWQgYm9vdAo+IGRyaXZlLiBZb3UnbGwgbmVlZCB0byBj
b25zdWx0IHlvdXIgY29tcHV0ZXIncyBtYW51YWwgdG8gc2VlIGlmIGluIGZhY3QKPiB0aGF0IGZh
Y2lsaXR5IGV4aXN0cy4gVGhhdCB0b28gaXMgcHJvYmxlbWF0aWMsIGJlY2F1c2Ugc29tZXRpbWVz
IHlvdQo+IGdldCBpdCByaWdodCBhbmQgb3RoZXJzIHlvdSBkb24ndC4gVGhpcyBpcyBub3Qgc3Rh
bmRhcmRpemVkIGF0IGFsbCwgc28KPiB5b3UnbGwgcmVhbGx5IG5lZWQgdG8gY29uc3VsdCB5b3Vy
IGNvbXB1dGVyJ3MgbWFudWFsIG9uIGhvdyB0bwo+IGFjY29tcGxpc2ggdGhpcy4KPiAKPiBPbiAx
Mi8yLzIxLCBMaW51eCBmb3IgYmxpbmQgZ2VuZXJhbCBkaXNjdXNzaW9uIDxibGludXgtbGlzdEBy
ZWRoYXQuY29tPiB3cm90ZToKPj4gSGksCj4+IEkgd2FzIHNvIGV4Y2l0ZWQgdG8gcmVjZWl2ZSBt
eSBuZXcgTGFwdG9wLgo+PiBCdXQgSSBjYW7igJl0IGdldCBpdCB0byBib290IGZyb20gVVNCLCBv
ciBmcm9tIHRoZSBleHRlcm5hbCBVU0IgRFZEIGRyaXZlLgo+PiBJdCBhbHdheXMgYm9vdCB0byBX
aW5kb3dzLgo+PiBJcyB0aGVyZSBhbnl0aGluZyBJIGNhbiBkbywgb3IgZG8gSSBuZWVkIHNpZ2h0
ZWQgaGVscD8KPj4gSGVyZSBhcmUgdGhlIHNwZWNzLgo+PiBHYXRld2F5IDE0LjEiIFVsdHJhIFNs
aW0gTm90ZWJvb2ssCj4+IEZIRCwgSW50ZWwgQ29yZSBpNS0xMTM1RzcsIFF1YWQgQ29yZSwKPj4g
MTZHQiBSQU0sIDUxMkdCIFNTRCwgVHVuZWQgYnkgVEhYIEF1ZGlvLAo+PiBGaW5nZXJwcmludCBT
Y2FubmVyLCAxLjBNUCBXZWJjYW0sIEhETUksIENvcnRhbmEsIFdpbmRvd3MgMTAgSG9tZQo+PiAK
Pj4gVGhhbmtzLAo+PiBSb2IKPj4gCj4+IAo+PiBfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwo+PiBCbGludXgtbGlzdCBtYWlsaW5nIGxpc3QKPj4gQmxpbnV4
LWxpc3RAcmVkaGF0LmNvbQo+PiBodHRwczovL2xpc3RtYW4ucmVkaGF0LmNvbS9tYWlsbWFuL2xp
c3RpbmZvL2JsaW51eC1saXN0Cj4gCj4gCj4gLS0gCj4gU3Vic2NyaWJlIHRvIGEgV29yZFByZXNz
IGZvciBOZXdiaWVzIE1haWxpbmcgTGlzdCBieSBzZW5kaW5nIGEgbWVzc2FnZSB0bzoKPiB3cDRu
ZXdicy1yZXF1ZXN0QGZyZWVsaXN0cy5vcmcgd2l0aCAnc3Vic2NyaWJlJyBpbiB0aGUgU3ViamVj
dCBmaWVsZCBPUiBieQo+IHZpc2l0aW5nIHRoZSBsaXN0IHBhZ2UgYXQgaHR0cDovL3d3dy5mcmVl
bGlzdHMub3JnL2xpc3Qvd3A0bmV3YnMKPiAmIGNoZWNrIG91dCBteSBzaXRlcyBhdCB3d3cuYnJp
Z2h0c3RhcnN3ZWIuY29tICYgd3d3Lm15c2l0ZXNiZWVuaGFja2VkLmNvbQo+IAo+IAo+IF9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCj4gQmxpbnV4LWxpc3Qg
bWFpbGluZyBsaXN0Cj4gQmxpbnV4LWxpc3RAcmVkaGF0LmNvbQo+IGh0dHBzOi8vbGlzdG1hbi5y
ZWRoYXQuY29tL21haWxtYW4vbGlzdGluZm8vYmxpbnV4LWxpc3QKCgpfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpCbGludXgtbGlzdCBtYWlsaW5nIGxpc3QK
QmxpbnV4LWxpc3RAcmVkaGF0LmNvbQpodHRwczovL2xpc3RtYW4ucmVkaGF0LmNvbS9tYWlsbWFu
L2xpc3RpbmZvL2JsaW51eC1saXN0

