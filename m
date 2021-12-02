Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id A9B5D466C03
	for <lists+blinux-list@lfdr.de>; Thu,  2 Dec 2021 23:19:34 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1638483573;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=Q2OJErQwL2VbPCSP5pnTi7HWcqX4rJZuHk6RSA3Wxe8=;
	b=FD+CNh+7dklGH+E7swdKHxXI7axVgEQCUdXe/+WAra9nafRvRX/8NayHew1P2Nv9gmY93X
	CrVLWvOef5hPud3xbBoiF9nF6OVfZz2UqTHVhzNVMBM8gAlb8uuT25Yoqj1dezbOtFVu9S
	LSeBByEwIoi9vZqrnzp47a6u5L4/oT4=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-303-36nxm8EnP-ib65fQNaStRg-1; Thu, 02 Dec 2021 17:19:30 -0500
X-MC-Unique: 36nxm8EnP-ib65fQNaStRg-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com [10.5.11.23])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id C0704192FDA0;
	Thu,  2 Dec 2021 22:19:24 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 45C5219724;
	Thu,  2 Dec 2021 22:19:23 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 420F01809C8A;
	Thu,  2 Dec 2021 22:19:14 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.rdu2.redhat.com
	[10.11.54.1])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 1B2MJ6AH012458 for <blinux-list@listman.util.phx.redhat.com>;
	Thu, 2 Dec 2021 17:19:06 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 90FB640CFD0C; Thu,  2 Dec 2021 22:19:06 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast05.extmail.prod.ext.rdu2.redhat.com [10.11.55.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 8C1CE4010E8A
	for <blinux-list@redhat.com>; Thu,  2 Dec 2021 22:19:06 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[205.139.110.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 55EA080A0AB
	for <blinux-list@redhat.com>; Thu,  2 Dec 2021 22:19:06 +0000 (UTC)
Received: from st43p00im-zteg10072001.me.com (st43p00im-zteg10072001.me.com
	[17.58.63.167]) by relay.mimecast.com with ESMTP with STARTTLS
	(version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-298-EwiOYuE1P0qj0nzGIxJBiQ-1; Thu, 02 Dec 2021 17:19:04 -0500
X-MC-Unique: EwiOYuE1P0qj0nzGIxJBiQ-1
Received: from smtpclient.apple (c-73-237-149-120.hsd1.ga.comcast.net
	[73.237.149.120])
	by st43p00im-zteg10072001.me.com (Postfix) with ESMTPSA id EEAADC0306
	for <blinux-list@redhat.com>; Thu,  2 Dec 2021 22:19:03 +0000 (UTC)
Mime-Version: 1.0 (Mac OS X Mail 14.0 \(3654.120.0.1.13\))
Subject: Help booting live disk
Message-Id: <8165B247-F098-4F16-8FFB-3F797D5153B0@icloud.com>
Date: Thu, 2 Dec 2021 17:19:02 -0500
To: Linux for blind general discussion <blinux-list@redhat.com>
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.425, 18.0.790
	definitions=2021-12-02_15:2021-12-02,
	2021-12-02 signatures=0
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0
	malwarescore=0
	phishscore=0 bulkscore=0 spamscore=0 clxscore=1015 mlxscore=0
	mlxlogscore=483 adultscore=0 classifier=spam adjust=0 reason=mlx
	scancount=1 engine=8.0.1-2009150000 definitions=main-2112020136
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
	lists01.pubmisc.prod.ext.phx2.redhat.com id 1B2MJ6AH012458
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SGksCkkgd2FzIHNvIGV4Y2l0ZWQgdG8gcmVjZWl2ZSBteSBuZXcgTGFwdG9wLgpCdXQgSSBjYW7i
gJl0IGdldCBpdCB0byBib290IGZyb20gVVNCLCBvciBmcm9tIHRoZSBleHRlcm5hbCBVU0IgRFZE
IGRyaXZlLgpJdCBhbHdheXMgYm9vdCB0byBXaW5kb3dzLgpJcyB0aGVyZSBhbnl0aGluZyBJIGNh
biBkbywgb3IgZG8gSSBuZWVkIHNpZ2h0ZWQgaGVscD8KSGVyZSBhcmUgdGhlIHNwZWNzLgpHYXRl
d2F5IDE0LjEiIFVsdHJhIFNsaW0gTm90ZWJvb2ssIApGSEQsIEludGVsIENvcmUgaTUtMTEzNUc3
LCBRdWFkIENvcmUsIAoxNkdCIFJBTSwgNTEyR0IgU1NELCBUdW5lZCBieSBUSFggQXVkaW8sCiBG
aW5nZXJwcmludCBTY2FubmVyLCAxLjBNUCBXZWJjYW0sIEhETUksIENvcnRhbmEsIFdpbmRvd3Mg
MTAgSG9tZSAKClRoYW5rcywKUm9iCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KQmxpbnV4LWxpc3QgbWFpbGluZyBsaXN0CkJsaW51eC1saXN0QHJlZGhh
dC5jb20KaHR0cHM6Ly9saXN0bWFuLnJlZGhhdC5jb20vbWFpbG1hbi9saXN0aW5mby9ibGludXgt
bGlzdA==

