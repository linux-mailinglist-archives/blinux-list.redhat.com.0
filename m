Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id DD5D14AA317
	for <lists+blinux-list@lfdr.de>; Fri,  4 Feb 2022 23:22:47 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1644013366;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=oxjgx6ysv7ZtFBBjTyrxVxMMOV6TpFq3uBu+YJG3u3k=;
	b=dFJixjyzm5P1SMmSw1BiPfqqIhgWO20tgadBgVph7r6ARZATQPWYjOYaFjeUP66SGh27Bk
	6yETGHqH9FI5wA7X7xw+6my5qqJ20UNwhwtnPP9uAodT2CHa67W633ZotPC26bRdkVb2Hv
	I1Owz3HJWyZAcA+rsfOYQxlQhxOIviY=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-264-2eD5tUlZOjmRgc6QF55k_w-1; Fri, 04 Feb 2022 17:22:45 -0500
X-MC-Unique: 2eD5tUlZOjmRgc6QF55k_w-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com [10.5.11.23])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id A48FA814245;
	Fri,  4 Feb 2022 22:22:41 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id B71CAD0E5C;
	Fri,  4 Feb 2022 22:22:40 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 796DC4CA9B;
	Fri,  4 Feb 2022 22:22:39 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.rdu2.redhat.com
	[10.11.54.1])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 214MJS4U018414 for <blinux-list@listman.util.phx.redhat.com>;
	Fri, 4 Feb 2022 17:19:28 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 5F05540F9D7C; Fri,  4 Feb 2022 22:19:28 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast10.extmail.prod.ext.rdu2.redhat.com [10.11.55.26])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 5ACC240F9D6D
	for <blinux-list@redhat.com>; Fri,  4 Feb 2022 22:19:28 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [205.139.110.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 43DA31C07CD6
	for <blinux-list@redhat.com>; Fri,  4 Feb 2022 22:19:28 +0000 (UTC)
Received: from st43p00im-zteg10061901.me.com (st43p00im-zteg10061901.me.com
	[17.58.63.168]) by relay.mimecast.com with ESMTP with STARTTLS
	(version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-622-nkcm3icfPrWKwTot2uiYwg-1; Fri, 04 Feb 2022 17:19:26 -0500
X-MC-Unique: nkcm3icfPrWKwTot2uiYwg-1
Received: from [192.168.0.39] (c-73-237-149-120.hsd1.ga.comcast.net
	[73.237.149.120])
	by st43p00im-zteg10061901.me.com (Postfix) with ESMTPSA id EFB6B54024A
	for <blinux-list@redhat.com>; Fri,  4 Feb 2022 22:19:25 +0000 (UTC)
Message-ID: <b6b3ae87-95f6-9e92-0d91-51da13c97572@icloud.com>
Date: Fri, 4 Feb 2022 17:19:23 -0500
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
	Thunderbird/91.5.0
Subject: Re: Help with YT-DLP
To: Linux for blind general discussion <blinux-list@redhat.com>
References: <d3189fce-4aee-cb12-9498-2e19f7692ae0@icloud.com>
	<87F1D5DF-B674-4C23-8D16-FA6F8E345415@linux-a11y.org>
In-Reply-To: <87F1D5DF-B674-4C23-8D16-FA6F8E345415@linux-a11y.org>
X-Proofpoint-Virus-Version: =?UTF-8?Q?vendor=3Dfsecure_engine=3D1.1.170-22c6f66c430a71ce266a39bfe25bc?=
	=?UTF-8?Q?2903e8d5c8f:6.0.425, 18.0.572,
	17.0.605.474.0000000_definitions?=
	=?UTF-8?Q?=3D2022-01-14=5F01:2022-01-14=5F01, 2020-02-14=5F11,
	2020-01-23?= =?UTF-8?Q?=5F02_signatures=3D0?=
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 spamscore=0
	malwarescore=0
	clxscore=1015 mlxlogscore=999 adultscore=0 mlxscore=0 suspectscore=0
	bulkscore=0 phishscore=0 classifier=spam adjust=0 reason=mlx
	scancount=1
	engine=8.12.0-2009150000 definitions=main-2202040124
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.84 on 10.11.54.1
X-MIME-Autoconverted: from quoted-printable to 8bit by
	lists01.pubmisc.prod.ext.phx2.redhat.com id 214MJS4U018414
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
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"

VGhhbmsgeW91IENocnlzLAoKVGhhdCBmaXhlZCBpdC4KCk5vdyBJIG5lZWQgdG8gZmluZCBvdXQg
aG93IHRvIGhhdmUgdGhlIHZpZGVvIG5hbWVkLCBpbnN0ZWFkIG9mIGp1c3QgCmxldHRlcnMgYW5k
IG51bWJlcnMuCgpUaGFua3MsCgpSb2IKCgpPbiAyLzQvMjIgMTY6NTcsIExpbnV4IGZvciBibGlu
ZCBnZW5lcmFsIGRpc2N1c3Npb24gd3JvdGU6Cj4gSG93ZHkgUm9iLAo+Cj4gV2VsbCB0aGVyZSBp
cyBhbiBvcGVuIHNpbmdsZSB0aWNrIGJ1dCBtaXNzaW5nIHRoZSBjbG9zaW5nIG9uZSBpbiAtbyBw
YXJhbWV0ZXIuIFNvIHRoZSBzdHJpbmcgaXMgbm90IHRlcm1pbmF0ZWQuCj4KPiBDaGVlcnMgY2hy
eXMKPgo+PiBBbSAwNC4wMi4yMDIyIHVtIDIyOjQwIHNjaHJpZWIgTGludXggZm9yIGJsaW5kIGdl
bmVyYWwgZGlzY3Vzc2lvbiA8YmxpbnV4LWxpc3RAcmVkaGF0LmNvbT46Cj4+Cj4+IO+7v0hpLAo+
Pgo+PiBJIGFtIHRyeWluZyB0byB1c2UgeXQtZGxwIHRvIGNvbnZlcnQgWW91VHViZSB2aWRlbyB0
byBtcDMuCj4+Cj4+IEkgaW5zdGFsbGVkIHRoZSBsYXRlc3QgdmVyc2lvbiBvZiB5dC1kbHAgdXNp
bmcgdGhlIGluZm8gYmVsb3cuCj4+Cj4+IHN1ZG8gd2dldCBodHRwczovL2dpdGh1Yi5jb20veXQt
ZGxwL3l0LWRscC9yZWxlYXNlcy9sYXRlc3QvZG93bmxvYWQveXQtZGxwIC1PIC91c3IvbG9jYWwv
YmluL3l0LWRscAo+Pgo+PiBzdWRvIGNobW9kIGErcnggL3Vzci9sb2NhbC9iaW4veXQtZGxwCj4+
Cj4+IHVwZGF0ZSBjb21tYW5kCj4+IHl0LWRscCAtVQo+Pgo+PiBXaGVuIEkgdXNlIHRoZSBiZWxv
dyBjb21tYW5kLCBJIGdldCBub3RoaW5nIGJ1dCBhIGdyZWF0ZXIgdGhhbiBzaWduLgo+Pgo+PiB5
dC1kbHAgLWYgJ2JhJyAteCAtLWF1ZGlvLWZvcm1hdCBtcDMgaHR0cHM6Ly93d3cueW91dHViZS5j
b20vd2F0Y2g/dj1kUXc0dzlXZ1hjUSAtbyAnJShpZClzLm1wMwo+Pgo+Pgo+PiBUaGFua3MsCj4+
Cj4+IFJvYgo+Pgo+Pgo+PiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwo+PiBCbGludXgtbGlzdCBtYWlsaW5nIGxpc3QKPj4gQmxpbnV4LWxpc3RAcmVkaGF0
LmNvbQo+PiBodHRwczovL2xpc3RtYW4ucmVkaGF0LmNvbS9tYWlsbWFuL2xpc3RpbmZvL2JsaW51
eC1saXN0Cj4+Cj4KPiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwo+IEJsaW51eC1saXN0IG1haWxpbmcgbGlzdAo+IEJsaW51eC1saXN0QHJlZGhhdC5jb20K
PiBodHRwczovL2xpc3RtYW4ucmVkaGF0LmNvbS9tYWlsbWFuL2xpc3RpbmZvL2JsaW51eC1saXN0
CgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KQmxpbnV4
LWxpc3QgbWFpbGluZyBsaXN0CkJsaW51eC1saXN0QHJlZGhhdC5jb20KaHR0cHM6Ly9saXN0bWFu
LnJlZGhhdC5jb20vbWFpbG1hbi9saXN0aW5mby9ibGludXgtbGlzdA==

