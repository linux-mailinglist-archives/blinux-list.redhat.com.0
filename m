Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id E51E149006A
	for <lists+blinux-list@lfdr.de>; Mon, 17 Jan 2022 03:59:16 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1642388356;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=xumCK/gLiF9S7W1OlEtZDmjfk0jicJjddaD9KM/8mWI=;
	b=H45EmxSC8Nl7IVZNcTW+77dBSCiIBqjNIWmnKQdjJmIySQZF5Kmg5dZs2gAp1/iPkiAFrD
	H4mt/kiJotAF7YGLf2aDvCMMhUknB6JkaL9m8Mu4Y0g1r+RUzAiGa+AwEJsbucqzNOefxb
	pMyDiGSOdbbmfGS7YEcCTF2stFw62B4=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-576-RiKFi_UyNa63bdh_WE2U2A-1; Sun, 16 Jan 2022 21:59:12 -0500
X-MC-Unique: RiKFi_UyNa63bdh_WE2U2A-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com [10.5.11.14])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 0B3DA8143E5;
	Mon, 17 Jan 2022 02:59:08 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 470765DF37;
	Mon, 17 Jan 2022 02:59:06 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 1DEA41809CB8;
	Mon, 17 Jan 2022 02:58:58 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx10.intmail.prod.int.rdu2.redhat.com
	[10.11.54.10])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 20H2wpk3008669 for <blinux-list@listman.util.phx.redhat.com>;
	Sun, 16 Jan 2022 21:58:51 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 65CAF46D1ED; Mon, 17 Jan 2022 02:58:51 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast08.extmail.prod.ext.rdu2.redhat.com [10.11.55.24])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 6251E46D1E6
	for <blinux-list@redhat.com>; Mon, 17 Jan 2022 02:58:51 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [205.139.110.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 4B699381CA8C
	for <blinux-list@redhat.com>; Mon, 17 Jan 2022 02:58:51 +0000 (UTC)
Received: from st43p00im-ztdg10061801.me.com (st43p00im-ztdg10061801.me.com
	[17.58.63.170]) by relay.mimecast.com with ESMTP with STARTTLS
	(version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-190-IVA1fIYtO8Km6lwzn-xMAA-1; Sun, 16 Jan 2022 21:58:49 -0500
X-MC-Unique: IVA1fIYtO8Km6lwzn-xMAA-1
Received: from [192.168.27.129] (c-73-237-149-120.hsd1.ga.comcast.net
	[73.237.149.120])
	by st43p00im-ztdg10061801.me.com (Postfix) with ESMTPSA id 945D2C00E5
	for <blinux-list@redhat.com>; Mon, 17 Jan 2022 02:58:48 +0000 (UTC)
To: Blinux <blinux-list@redhat.com>
Subject: looking for accessible music library app
Message-ID: <7197b2a9-e23a-de3e-906f-9cd9cc2a65e0@icloud.com>
Date: Sun, 16 Jan 2022 21:58:47 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
	Thunderbird/78.14.0
MIME-Version: 1.0
X-Proofpoint-Virus-Version: =?UTF-8?Q?vendor=3Dfsecure_engine=3D1.1.170-22c6f66c430a71ce266a39bfe25bc?=
	=?UTF-8?Q?2903e8d5c8f:6.0.425, 18.0.816,
	17.0.607.475.0000000_definitions?=
	=?UTF-8?Q?=3D2022-01-16=5F10:2022-01-14=5F01, 2022-01-16=5F10,
	2020-04-07?= =?UTF-8?Q?=5F01_signatures=3D0?=
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 bulkscore=0
	malwarescore=0
	suspectscore=0 mlxscore=0 mlxlogscore=447 spamscore=0 phishscore=0
	clxscore=1015 adultscore=0 classifier=spam adjust=0 reason=mlx
	scancount=1
	engine=8.12.0-2009150000 definitions=main-2201170018
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.85 on 10.11.54.10
X-MIME-Autoconverted: from quoted-printable to 8bit by
	lists01.pubmisc.prod.ext.phx2.redhat.com id 20H2wpk3008669
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
Content-Language: en-US
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"

IMKgIEhpLAoKSXMgdGhlcmUgwqAgYSBhY2Nlc3NpYmxlIG11c2ljIGxpYnJhcnkgYXBwIGxpa2Ug
aVR1bmVzPwoKVGhhbmtzLAoKUm9iCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KQmxpbnV4LWxpc3QgbWFpbGluZyBsaXN0CkJsaW51eC1saXN0QHJlZGhh
dC5jb20KaHR0cHM6Ly9saXN0bWFuLnJlZGhhdC5jb20vbWFpbG1hbi9saXN0aW5mby9ibGludXgt
bGlzdA==

