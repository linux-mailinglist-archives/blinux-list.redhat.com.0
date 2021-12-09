Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id BD10B46EC84
	for <lists+blinux-list@lfdr.de>; Thu,  9 Dec 2021 17:04:37 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1639065876;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=63LnEEwy7XOC3XL1it78mSby1q+fJieJVPV1+NL7xWY=;
	b=Gxr13Tp06Gk7vmRs2mraa5l0dOK7SAN3++tz1MwxAbVQp2Tyu2HSkXhe3cBzTsOARvor4e
	fTfcHyLvVeoLTXG0JE3/uyNduGlQjTuGJEgsrctQ6DbZ9dCzemFX9Xs/+3Dl2NrztMD8o1
	zx9gaqZOo/XmHHlq9C10r3dBxuHKBD8=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-269-FJnUyxj2O4-Qctx83njgMQ-1; Thu, 09 Dec 2021 11:04:33 -0500
X-MC-Unique: FJnUyxj2O4-Qctx83njgMQ-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com [10.5.11.22])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 1F19519251A0;
	Thu,  9 Dec 2021 16:04:28 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 4BEE910016F5;
	Thu,  9 Dec 2021 16:04:24 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id C6E7B1809CBA;
	Thu,  9 Dec 2021 16:04:15 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.rdu2.redhat.com
	[10.11.54.1])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 1B9G3Q7P013633 for <blinux-list@listman.util.phx.redhat.com>;
	Thu, 9 Dec 2021 11:03:26 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 0CDFB40CFD11; Thu,  9 Dec 2021 16:03:26 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast06.extmail.prod.ext.rdu2.redhat.com [10.11.55.22])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 0822F40CFD07
	for <blinux-list@redhat.com>; Thu,  9 Dec 2021 16:03:26 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [207.211.31.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
	bits)) (No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id E6AD0185A7B2
	for <blinux-list@redhat.com>; Thu,  9 Dec 2021 16:03:25 +0000 (UTC)
Received: from st43p00im-zteg10061901.me.com (st43p00im-zteg10061901.me.com
	[17.58.63.168]) by relay.mimecast.com with ESMTP with STARTTLS
	(version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-121-B7lcxKjQMQCbQMr4ADmgCg-1; Thu, 09 Dec 2021 11:03:24 -0500
X-MC-Unique: B7lcxKjQMQCbQMr4ADmgCg-1
Received: from [192.168.0.74] (c-73-237-149-120.hsd1.ga.comcast.net
	[73.237.149.120])
	by st43p00im-zteg10061901.me.com (Postfix) with ESMTPSA id 7A21A8607FD
	for <blinux-list@redhat.com>; Thu,  9 Dec 2021 16:03:23 +0000 (UTC)
To: Blinux-list@redhat.com
Subject: .sh files not opening in terminal
Message-ID: <f342b0c4-5ca4-0f8d-3e04-60c3631c8976@icloud.com>
Date: Thu, 9 Dec 2021 11:03:22 -0500
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
	Thunderbird/78.7.0
MIME-Version: 1.0
X-Proofpoint-Virus-Version: =?UTF-8?Q?vendor=3Dfsecure_engine=3D1.1.170-22c6f66c430a71ce266a39bfe25bc?=
	=?UTF-8?Q?2903e8d5c8f:6.0.425, 18.0.790,
	17.0.607.475.0000000_definitions?=
	=?UTF-8?Q?=3D2021-12-09=5F06:2021-12-08=5F01, 2021-12-09=5F06,
	2020-04-07?= =?UTF-8?Q?=5F01_signatures=3D0?=
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 malwarescore=0
	clxscore=1015
	phishscore=0 adultscore=0 mlxscore=0 mlxlogscore=563 suspectscore=0
	bulkscore=0 spamscore=0 classifier=spam adjust=0 reason=mlx scancount=1
	engine=8.12.0-2009150000 definitions=main-2112090087
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
	lists01.pubmisc.prod.ext.phx2.redhat.com id 1B9G3Q7P013633
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
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"

IMKgwqDCoCDCoMKgwqAgwqDCoMKgIEhpLAoKV2hhdCBjYW4gSSBkbyB0byBydW4gLnNoIGZpbGVz
PwoKVGhleSBhcmUgb3BlbmluZyB3aXRoIHRleHQgZWRpdG9yIGluc3RlYWQgb2YgdGVybWluYWwu
CgoKdGhhbmtzLAoKUm9iCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KQmxpbnV4LWxpc3QgbWFpbGluZyBsaXN0CkJsaW51eC1saXN0QHJlZGhhdC5jb20K
aHR0cHM6Ly9saXN0bWFuLnJlZGhhdC5jb20vbWFpbG1hbi9saXN0aW5mby9ibGludXgtbGlzdA==

