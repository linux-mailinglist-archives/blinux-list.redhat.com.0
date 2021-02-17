Return-Path: <blinux-list-bounces@listman.redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-44.mimecast.com (us-smtp-delivery-44.mimecast.com [207.211.30.44])
	by mail.lfdr.de (Postfix) with ESMTP id 3E97131D45F
	for <lists+blinux-list@lfdr.de>; Wed, 17 Feb 2021 05:09:33 +0100 (CET)
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-153-9yBD3WuWPVuq7_szyO55Nw-1; Tue, 16 Feb 2021 23:09:28 -0500
X-MC-Unique: 9yBD3WuWPVuq7_szyO55Nw-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com [10.5.11.15])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id BE262801975;
	Wed, 17 Feb 2021 04:09:21 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 59756627DD;
	Wed, 17 Feb 2021 04:09:20 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id C81594E58E;
	Wed, 17 Feb 2021 04:09:14 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.rdu2.redhat.com
	[10.11.54.6])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 11H493SH024306 for <blinux-list@listman.util.phx.redhat.com>;
	Tue, 16 Feb 2021 23:09:04 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id A83612166B2F; Wed, 17 Feb 2021 04:09:03 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast03.extmail.prod.ext.rdu2.redhat.com [10.11.55.19])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 5447F20CA487
	for <blinux-list@redhat.com>; Wed, 17 Feb 2021 04:09:01 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[205.139.110.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 1104881DA23
	for <blinux-list@redhat.com>; Wed, 17 Feb 2021 04:09:01 +0000 (UTC)
Received: from mailbackend.panix.com (mailbackend.panix.com [166.84.1.89])
	(Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-38-XRyserv8P3qbd_xgNmCjLg-1; Tue, 16 Feb 2021 23:08:58 -0500
X-MC-Unique: XRyserv8P3qbd_xgNmCjLg-1
Received: from panix1.panix.com (panix1.panix.com [166.84.1.1])
	by mailbackend.panix.com (Postfix) with ESMTP id 4DgPV22k0YzMZb
	for <blinux-list@redhat.com>; Tue, 16 Feb 2021 23:08:58 -0500 (EST)
Received: by panix1.panix.com (Postfix, from userid 20712)
	id 4DgPV240XYzcbc; Tue, 16 Feb 2021 23:08:58 -0500 (EST)
Received: from localhost (localhost [127.0.0.1])
	by panix1.panix.com (Postfix) with ESMTP id 4DgPV23jYrzcbW
	for <blinux-list@redhat.com>; Tue, 16 Feb 2021 23:08:58 -0500 (EST)
Date: Tue, 16 Feb 2021 23:08:58 -0500
To: blinux-list@redhat.com
Subject: bash is hurling
Message-ID: <alpine.NEB.2.23.451.2102162306390.26855@panix1.panix.com>
MIME-Version: 1.0
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.6
X-loop: blinux-list@redhat.com
From: Linux for blind general discussion <blinux-list@listman.redhat.com>
X-BeenThere: blinux-list@listman.redhat.com
X-Mailman-Version: 2.1.12
Precedence: junk
Reply-To: blinux-list@listman.redhat.com
List-Id: Linux for blind general discussion <blinux-list.listman.redhat.com>
List-Unsubscribe: <https://listman.redhat.com/mailman/options/blinux-list>,
	<mailto:blinux-list-request@listman.redhat.com?subject=unsubscribe>
List-Archive: <https://listman.redhat.com/archives/blinux-list>
List-Post: <mailto:blinux-list@listman.redhat.com>
List-Help: <mailto:blinux-list-request@listman.redhat.com?subject=help>
List-Subscribe: <https://listman.redhat.com/mailman/listinfo/blinux-list>,
	<mailto:blinux-list-request@listman.redhat.com?subject=subscribe>
Sender: blinux-list-bounces@listman.redhat.com
Errors-To: blinux-list-bounces@listman.redhat.com
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@listman.redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: listman.redhat.com
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset=WINDOWS-1252; format=flowed

I think I need a better shell.
I wanted to get a line count into a variable and bash doesn't like what=20
I'm doing to make that happen.  The code is:
let "cj=3D`wc -l chk-jenux.log`"

_______________________________________________
Blinux-list mailing list
Blinux-list@listman.redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

