Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id A1D9446F594
	for <lists+blinux-list@lfdr.de>; Thu,  9 Dec 2021 22:09:31 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1639084170;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=kvZLS5NaXYS/gejAlaSPkH52MixIjuj/UnEUFKdEMbs=;
	b=U/Y/P6kvu8CwM477TKHX7eNvjmF2hgzQMpaJOtyE6xXCfImP77xZqWKGUOXgj7kKPvBLFd
	fwatJmGXD28udagn2IgDV14pHVWlCcrKPovIFha9a+t05HuU6Te5PSfuuPCAWUvrn0kt1w
	VCSU/V3uuWG+30uczGRLIhQaZtSbfGA=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-321-F-dnyEteP2-jBjLmPEbwBg-1; Thu, 09 Dec 2021 16:09:27 -0500
X-MC-Unique: F-dnyEteP2-jBjLmPEbwBg-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com [10.5.11.13])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 397B7193F564;
	Thu,  9 Dec 2021 21:09:21 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id D6858694C0;
	Thu,  9 Dec 2021 21:09:19 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 817131809CB9;
	Thu,  9 Dec 2021 21:09:13 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.rdu2.redhat.com
	[10.11.54.5])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 1B9L957i008815 for <blinux-list@listman.util.phx.redhat.com>;
	Thu, 9 Dec 2021 16:09:05 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 6E013518D; Thu,  9 Dec 2021 21:09:05 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast10.extmail.prod.ext.rdu2.redhat.com [10.11.55.26])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 68D9953AA
	for <blinux-list@redhat.com>; Thu,  9 Dec 2021 21:09:02 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[207.211.31.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 51AC31C8C267
	for <blinux-list@redhat.com>; Thu,  9 Dec 2021 21:09:02 +0000 (UTC)
Received: from st43p00im-ztbu10073701.me.com (st43p00im-ztbu10073701.me.com
	[17.58.63.183]) by relay.mimecast.com with ESMTP with STARTTLS
	(version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-437-SFhke4cQMpGygg0jSmtT6A-1; Thu, 09 Dec 2021 16:09:00 -0500
X-MC-Unique: SFhke4cQMpGygg0jSmtT6A-1
Received: from smtpclient.apple (c-73-237-149-120.hsd1.ga.comcast.net
	[73.237.149.120])
	by st43p00im-ztbu10073701.me.com (Postfix) with ESMTPS id B14844C04FE
	for <blinux-list@redhat.com>; Thu,  9 Dec 2021 21:08:59 +0000 (UTC)
Mime-Version: 1.0 (Mac OS X Mail 14.0 \(3654.120.0.1.13\))
Subject: Enter Key not working on VM
Message-Id: <B0B5D1BB-FC68-4B37-823D-FA74FB114555@icloud.com>
Date: Thu, 9 Dec 2021 16:08:58 -0500
To: Linux for blind general discussion <blinux-list@redhat.com>
X-Proofpoint-Virus-Version: =?UTF-8?Q?vendor=3Dfsecure_engine=3D1.1.170-22c6f66c430a71ce266a39bfe25bc?=
	=?UTF-8?Q?2903e8d5c8f:6.0.425, 18.0.790,
	17.11.62.513.0000000_definitions?=
	=?UTF-8?Q?=3D2021-12-09=5F08:2021-12-06=5F02, 2021-12-09=5F08,
	2021-12-02?= =?UTF-8?Q?=5F01_signatures=3D0?=
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 malwarescore=0
	phishscore=0
	mlxlogscore=406 adultscore=0 suspectscore=0 bulkscore=0 clxscore=1015
	spamscore=0 mlxscore=0 classifier=spam adjust=0 reason=mlx scancount=1
	engine=8.12.0-2009150000 definitions=main-2112090110
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.79 on 10.11.54.5
X-MIME-Autoconverted: from quoted-printable to 8bit by
	lists01.pubmisc.prod.ext.phx2.redhat.com id 1B9L957i008815
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SGksCknigJltIGJhY2sgd2l0aCBhbm90aGVyIHByb2JsZW0uCkkgaW5zdGFsbGVkIEFjY2Vzc2li
bGUgQ29jb251dCBvbiBXaW5kb3dzIDEwIHVzaW5nIFZNV2FyZSBQbGF5ZXIuClRoZSBlbnRlciBr
ZXkgd2lsbCBub3Qgd29yay4KV2hpbGUgaW5zdGFsbGluZywgSSBjaGVja2VkIHRoZSBvcHRpb24g
dG8gZG93bmxvYWQgdXBkYXRlcyBhbmQgaGFyZHdhcmUgZHJpdmVycy4KVGhpcyBpcyBhIEdhdGVX
YXkgTGFwdG9wLgpJIGRvbuKAmXQga25vdyBpZiB0aGUgaXNzdWUgaXMgd2l0aCBMaW51eCwgb3Ig
dGhlIFZpcnR1YWwgTWFjaGluZS4KQW55IHN1Z2dlc3Rpb25zPwpUaGFua3MsClJvYgoKCl9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkJsaW51eC1saXN0IG1h
aWxpbmcgbGlzdApCbGludXgtbGlzdEByZWRoYXQuY29tCmh0dHBzOi8vbGlzdG1hbi5yZWRoYXQu
Y29tL21haWxtYW4vbGlzdGluZm8vYmxpbnV4LWxpc3Q=

