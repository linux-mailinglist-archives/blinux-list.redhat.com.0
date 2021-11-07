Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 96C4B447618
	for <lists+blinux-list@lfdr.de>; Sun,  7 Nov 2021 22:48:18 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1636321697;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=auuyrptzlfmbwDAVuiafgLndtJdCOitGlX4n/eiOJao=;
	b=QJsQARvdokB32eLknaIVOJ7QqvYBSpWfEdUZmoRJ8fEAaY7YDYw9F27fiXV5Q94eG0P8qD
	MelMQTG6cLQ/xU9eGC8rjRVZRBNykeGKBCZcNa5F3i0ppkP2uRAG8B20HfRVNsSHNQGF6f
	qcUdfPv29dO844JyfZzlcVkMhrkuU6k=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-109-YbgPH0CXMJWJXZDer2rKMA-1; Sun, 07 Nov 2021 16:48:14 -0500
X-MC-Unique: YbgPH0CXMJWJXZDer2rKMA-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com [10.5.11.16])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 3005D802C8A;
	Sun,  7 Nov 2021 21:48:09 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id A42485FC25;
	Sun,  7 Nov 2021 21:48:07 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 421644A702;
	Sun,  7 Nov 2021 21:47:59 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.rdu2.redhat.com
	[10.11.54.3])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 1A7LloDc008300 for <blinux-list@listman.util.phx.redhat.com>;
	Sun, 7 Nov 2021 16:47:50 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 76EC71121315; Sun,  7 Nov 2021 21:47:50 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast02.extmail.prod.ext.rdu2.redhat.com [10.11.55.18])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 726A91121314
	for <blinux-list@redhat.com>; Sun,  7 Nov 2021 21:47:47 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [205.139.110.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 936E3801212
	for <blinux-list@redhat.com>; Sun,  7 Nov 2021 21:47:47 +0000 (UTC)
Received: from st43p00im-ztbu10073601.me.com (st43p00im-ztbu10073601.me.com
	[17.58.63.184]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-256-JydgWZzGOquMTAHlBSqkog-1; Sun, 07 Nov 2021 16:47:45 -0500
X-MC-Unique: JydgWZzGOquMTAHlBSqkog-1
Received: from [192.168.184.131] (c-73-237-149-120.hsd1.ga.comcast.net
	[73.237.149.120])
	by st43p00im-ztbu10073601.me.com (Postfix) with ESMTPSA id DEA8882052A; 
	Sun,  7 Nov 2021 21:47:44 +0000 (UTC)
Subject: Trying to use SystemBack
To: blinux-list@redhat.com, blinux-list@redhat.com
Message-ID: <7a60c332-2542-52f1-5b51-20cafdb95f3c@icloud.com>
Date: Sun, 7 Nov 2021 16:47:38 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
	Thunderbird/78.13.0
MIME-Version: 1.0
X-Proofpoint-Virus-Version: =?UTF-8?Q?vendor=3Dfsecure_engine=3D1.1.170-22c6f66c430a71ce266a39bfe25bc?=
	=?UTF-8?Q?2903e8d5c8f:6.0.425, 18.0.790,
	17.0.607.475.0000000_definitions?=
	=?UTF-8?Q?=3D2021-11-07=5F11:2021-11-02=5F01, 2021-11-07=5F11,
	2020-04-07?= =?UTF-8?Q?=5F01_signatures=3D0?=
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 clxscore=1015
	bulkscore=0
	malwarescore=0 mlxlogscore=337 phishscore=0 spamscore=0 mlxscore=0
	suspectscore=0 adultscore=0 classifier=spam adjust=0 reason=mlx
	scancount=1 engine=8.12.0-2009150000 definitions=main-2111070145
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
	lists01.pubmisc.prod.ext.phx2.redhat.com id 1A7LloDc008300
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

SGksCgpJIGdvdCB0aGlzIGluZm8gb24gU3lzdGVtQmFjayBmcm9tCgpodHRwczovL3d3dy53aWtp
aG93LmNvbS9DcmVhdGUtYS1EaXNrLUltYWdlLWZyb20tYS1MaW51eC1TeXN0ZW0tVXNpbmctU3lz
dGVtYmFjawoKCkkgaW5zdGFsbGVkIGl0LCB2dXQgdGhlIHNjcmVlbiByZWFkZXIgZ29lcyBzaWxl
bnQgYW5kIHdhbnQgcmVhZCB0aGUgd2luZG93LgoKVGhpcyBoYXBwZW5kcyBhIGxvdCwgZm9yIGV4
YW1wbGUsIHdoZW4gaW5zdGFsbGluZyBEcm9wYm94LMKgIG9yIFBDbG91ZC4KCkkgd2FudGVkIHRv
IGNyZWF0ZSBhIGxpdmUgZGlzayBvZiBteSBpbnN0YWxsZWQgbGludXguCgogRnJvbSB0aGUgaW5z
dHJ1Y3Rpb25zLCBpdCBzZWVtZWQgc2ltcGxlLCBidXQgbm90IGFjY2Vzc2libGUgdG8gc2NyZWVu
IApyZWFkZXJzLgoKSSBjYW50IGZpbmQgYW55dGhpbmcgb24gaG93IHRvIGRvIGl0IGZyb20gdGhl
IHRlcm1pbmFsLgoKVGhhbmtzLAoKUm9iCgoKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwpCbGludXgtbGlzdCBtYWlsaW5nIGxpc3QKQmxpbnV4LWxpc3RA
cmVkaGF0LmNvbQpodHRwczovL2xpc3RtYW4ucmVkaGF0LmNvbS9tYWlsbWFuL2xpc3RpbmZvL2Js
aW51eC1saXN0

