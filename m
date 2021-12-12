Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id E3DA5471ED9
	for <lists+blinux-list@lfdr.de>; Mon, 13 Dec 2021 00:39:46 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1639352386;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=UgQ4sS0CeYdW9DNby53PirjWWq/Nnfs6Xd4dAeSbrp8=;
	b=agMkw/+pWdLec3acSbWqjA/T6HxCUrEWuCWi66To93x5PMdqF1ht7OctgYWOfGGvn6EXap
	C6AMmNQJVGwwN4xPkWtYHz+IQ7ix00lyY31ak/TwmJ3iVQhdt7zwpHltfw0oSUbVIOL1EX
	CMgjEnKgQivpk7Hp0TjehW9wLyIt82A=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-566-gTES-zuyN6Wa16Msb8daMw-1; Sun, 12 Dec 2021 18:39:42 -0500
X-MC-Unique: gTES-zuyN6Wa16Msb8daMw-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com [10.5.11.23])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 3A0AE344B3;
	Sun, 12 Dec 2021 23:39:37 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 71A541972E;
	Sun, 12 Dec 2021 23:39:29 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 75DFD4BB7C;
	Sun, 12 Dec 2021 23:39:16 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.rdu2.redhat.com
	[10.11.54.8])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 1BCNZPXo001401 for <blinux-list@listman.util.phx.redhat.com>;
	Sun, 12 Dec 2021 18:35:25 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id E0650C01784; Sun, 12 Dec 2021 23:35:24 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast01.extmail.prod.ext.rdu2.redhat.com [10.11.55.17])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id DA81DC0808C
	for <blinux-list@redhat.com>; Sun, 12 Dec 2021 23:35:24 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [205.139.110.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id C31B285A5A8
	for <blinux-list@redhat.com>; Sun, 12 Dec 2021 23:35:24 +0000 (UTC)
Received: from st43p00im-ztfb10071701.me.com (st43p00im-ztfb10071701.me.com
	[17.58.63.173]) by relay.mimecast.com with ESMTP with STARTTLS
	(version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-536-a3TZeRlkO_CmB9hIjeBOsA-1; Sun, 12 Dec 2021 18:35:23 -0500
X-MC-Unique: a3TZeRlkO_CmB9hIjeBOsA-1
Received: from [192.168.184.133] (c-73-237-149-120.hsd1.ga.comcast.net
	[73.237.149.120])
	by st43p00im-ztfb10071701.me.com (Postfix) with ESMTPSA id 6A3568A03B9
	for <blinux-list@redhat.com>; Sun, 12 Dec 2021 23:35:22 +0000 (UTC)
To: Blinux <blinux-list@redhat.com>
Subject: Auto Mount drive script help
Message-ID: <8d56ccd4-a8fb-11f3-3ce1-fbdf6d22e54d@icloud.com>
Date: Sun, 12 Dec 2021 18:35:21 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
	Thunderbird/78.14.0
MIME-Version: 1.0
X-Proofpoint-Virus-Version: =?UTF-8?Q?vendor=3Dfsecure_engine=3D1.1.170-22c6f66c430a71ce266a39bfe25bc?=
	=?UTF-8?Q?2903e8d5c8f:6.0.425, 18.0.790,
	17.11.62.513.0000000_definitions?=
	=?UTF-8?Q?=3D2021-12-12=5F09:2021-12-08=5F01, 2021-12-12=5F09,
	2021-12-02?= =?UTF-8?Q?=5F01_signatures=3D0?=
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 phishscore=0
	mlxscore=0 malwarescore=0
	clxscore=1031 spamscore=0 adultscore=0 bulkscore=0 suspectscore=0
	mlxlogscore=642 classifier=spam adjust=0 reason=mlx scancount=1
	engine=8.12.0-2009150000 definitions=main-2112120144
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.85 on 10.11.54.8
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

Hi,

Can someone help with this script?

How do I add the user name and password?

gio mount smb://192.168.1.1/USB_Drive


thanks,

Rob

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

