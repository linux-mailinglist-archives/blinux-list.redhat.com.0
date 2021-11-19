Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E35C45795B
	for <lists+blinux-list@lfdr.de>; Sat, 20 Nov 2021 00:11:22 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1637363481;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=zZ1J6mjAgqwzFc72ij7Au6MD43ezzB79H17FmrSQXtw=;
	b=KU0dWnS1eaq/n/8uyCXwwWhR9+bcSu52sUTluhZMyqYHc9uhe71RYDKM3OVCJ+N0tCi88C
	RtyWftMPiGOpyOCvbSAVov7jGTeeLaM2aywQ/pWKtV6NDGrck0+5Z+nLLD9v8Mz+LwoPym
	EsQMKNe/5A7UF5ayW0pr6a9yvbsKDyQ=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-436-2s9h1i8eMRSHGhsUIia9kg-1; Fri, 19 Nov 2021 18:11:17 -0500
X-MC-Unique: 2s9h1i8eMRSHGhsUIia9kg-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com [10.5.11.16])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 1AD6610B744C;
	Fri, 19 Nov 2021 23:11:14 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 04A265C3DF;
	Fri, 19 Nov 2021 23:11:14 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 8A8BB4A703;
	Fri, 19 Nov 2021 23:11:12 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.rdu2.redhat.com
	[10.11.54.3])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 1AJN6fPf026509 for <blinux-list@listman.util.phx.redhat.com>;
	Fri, 19 Nov 2021 18:06:41 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 0C3991121318; Fri, 19 Nov 2021 23:06:41 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast03.extmail.prod.ext.rdu2.redhat.com [10.11.55.19])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 06BD81121319
	for <blinux-list@redhat.com>; Fri, 19 Nov 2021 23:06:33 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[207.211.31.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id C7A69811E78
	for <blinux-list@redhat.com>; Fri, 19 Nov 2021 23:06:33 +0000 (UTC)
Received: from st43p00im-zteg10073501.me.com (st43p00im-zteg10073501.me.com
	[17.58.63.180]) by relay.mimecast.com with ESMTP with STARTTLS
	(version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-457-be4Kx2LKMGKH8bpKYnVMnw-1; Fri, 19 Nov 2021 18:06:32 -0500
X-MC-Unique: be4Kx2LKMGKH8bpKYnVMnw-1
Received: from [192.168.184.133] (c-73-237-149-120.hsd1.ga.comcast.net
	[73.237.149.120])
	by st43p00im-zteg10073501.me.com (Postfix) with ESMTPSA id 526F8AE0129
	for <blinux-list@redhat.com>; Fri, 19 Nov 2021 23:06:31 +0000 (UTC)
Subject: Re: Mint Mate folder options?
To: Linux for blind general discussion <blinux-list@redhat.com>
References: <0B4FABFE-C65D-4207-B145-A053DB7D16AB@icloud.com>
	<de59f420-7fb6-f076-8bbf-be96a1c040d8@gmail.com>
Message-ID: <f1c12178-0f15-cb7b-0483-41f23277bafd@icloud.com>
Date: Fri, 19 Nov 2021 18:06:30 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
	Thunderbird/78.14.0
MIME-Version: 1.0
In-Reply-To: <de59f420-7fb6-f076-8bbf-be96a1c040d8@gmail.com>
X-Proofpoint-Virus-Version: =?UTF-8?Q?vendor=3Dfsecure_engine=3D1.1.170-22c6f66c430a71ce266a39bfe25bc?=
	=?UTF-8?Q?2903e8d5c8f:6.0.425, 18.0.790,
	17.0.607.475.0000000_definitions?=
	=?UTF-8?Q?=3D2021-11-19=5F14:2021-11-16=5F01, 2021-11-19=5F14,
	2020-04-07?= =?UTF-8?Q?=5F01_signatures=3D0?=
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 clxscore=1015
	bulkscore=0 mlxscore=0
	spamscore=0 phishscore=0 malwarescore=0 mlxlogscore=999 adultscore=0
	suspectscore=0 classifier=spam adjust=0 reason=mlx scancount=1
	engine=8.12.0-2009150000 definitions=main-2111190122
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.3
X-MIME-Autoconverted: from quoted-printable to 8bit by
	lists01.pubmisc.prod.ext.phx2.redhat.com id 1AJN6fPf026509
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"

VGhlcmUgaXMgbm8gZmlsZSBtYW5hZ2VtZW50IGluIHRoZSBjb250cm9sIGNlbnRlciwgYW5kIGlm
IEkgcHJlc3MgZW50ZXIgCm9uIFBlcnNvbmFsLCBub3RoaW5nIGhhcHBlbmRzLgoKSSB1c2VkIGZp
bGUgbWFuYWdlbWVudCBvbiBDb2NvbnV0LCBidXQgaXQgc2VlbXMgdG8gYmUgbWlzc2luZyBvbiB0
aGlzIApNaW50IE1hdGUgc3lzdGVtLgoKVGhhbmtzLAoKUm9iCgoKT24gMTEvMTkvMjEgNTozOSBQ
TSwgTGludXggZm9yIGJsaW5kIGdlbmVyYWwgZGlzY3Vzc2lvbiB3cm90ZToKPiBJbiB0aGUgInBl
cnNvbmFsIiBzZWN0aW9uIG9mIE1hdGUgQ29udHJvbCBDZW50ZXIsIHRoZXJlIGlzIGEgZ3VpIGZv
cgo+IGZpbGUgbWFuYWdlbWVudC7CoCBPbmUgb2YgdGhlIHRhYnMgb2Ygd2hpY2ggaXMgImJlaGF2
aW9yIi7CoCBUaGVyZSwgeW91Cj4gY2FuIHNldCBvcHRpb25zIGxpa2UgaW5jbHVkaW5nIGEgZGVs
ZXRlIGNvbW1hbmQgdGhhdCBieXBhc3NlcyB0cmFzaCwKPiB3YXJuIHdoZW4gZW1wdHlpbmcgdHJh
c2gsIGFuZCB3YXJuIHdoZW4gZGVsZXRpbmcgZmlsZXMuCj4KPgo+Cj4gSFRILAo+Cj4KPgo+IERh
dmUKPgo+Cj4KPgo+IE9uIDExLzE5LzIxIDU6MDAgUE0sIExpbnV4IGZvciBibGluZCBnZW5lcmFs
IGRpc2N1c3Npb24gd3JvdGU6Cj4+IERlYXIgTGlzdCwKPj4gSSBoYXZlIHNlYXJjaGVkIHRoZSBj
b250cm9sIGNlbnRlciwgYnV0IGNhbnQgZmluZCBvdXQgaG93IHRvIGNoYW5nZSB0aGUgZGVmYXVs
dCBmb2xkZXIgdmlld3MsIG9yIGhvdyB0byBnZXQgYSBhcmUgeW91IHN1cmUgZGlhbG9nIHdoZW4g
ZGVsZXRpbmcgZmlsZXMuCj4+IEkgaGFkIGEgaGFyZCB0aW1lIHNlbGVjdGluZyB0aGUgaWNvbnMg
dG8gc2hvdyBvbiB0aGUgZGVza3RvcC4gSSBoYWQgdG8gdXNlIGZsYXQgcmV2aWV3IHRvIHNlbGVj
dCBteSBvcHRpb25zLgo+PiBCdXQgYXMgSSBzYWlkLCBJIGNhbnQgZmluZCBhbnl0aGluZyBhYm91
dCBmb2xkZXIgb3B0aW9ucy4KPj4KPj4gVGhhbmtzLAo+PiBSb2IKPj4KPj4KPj4gX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KPj4gQmxpbnV4LWxpc3QgbWFp
bGluZyBsaXN0Cj4+IEJsaW51eC1saXN0QHJlZGhhdC5jb20KPj4gaHR0cHM6Ly9saXN0bWFuLnJl
ZGhhdC5jb20vbWFpbG1hbi9saXN0aW5mby9ibGludXgtbGlzdAo+Pgo+IF9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCj4gQmxpbnV4LWxpc3QgbWFpbGluZyBs
aXN0Cj4gQmxpbnV4LWxpc3RAcmVkaGF0LmNvbQo+IGh0dHBzOi8vbGlzdG1hbi5yZWRoYXQuY29t
L21haWxtYW4vbGlzdGluZm8vYmxpbnV4LWxpc3QKCgpfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwpCbGludXgtbGlzdCBtYWlsaW5nIGxpc3QKQmxpbnV4LWxp
c3RAcmVkaGF0LmNvbQpodHRwczovL2xpc3RtYW4ucmVkaGF0LmNvbS9tYWlsbWFuL2xpc3RpbmZv
L2JsaW51eC1saXN0

