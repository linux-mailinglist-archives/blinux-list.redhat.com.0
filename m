Return-Path: <blinux-list-bounces@listman.redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-44.mimecast.com (us-smtp-delivery-44.mimecast.com [207.211.30.44])
	by mail.lfdr.de (Postfix) with ESMTP id 0DB6331D584
	for <lists+blinux-list@lfdr.de>; Wed, 17 Feb 2021 07:50:33 +0100 (CET)
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-95-pPQx_aP7Ot-wi6UqvKZRgw-1; Wed, 17 Feb 2021 01:50:27 -0500
X-MC-Unique: pPQx_aP7Ot-wi6UqvKZRgw-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com [10.5.11.23])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id A3D5480196C;
	Wed, 17 Feb 2021 06:50:21 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 1F76D19D6C;
	Wed, 17 Feb 2021 06:50:20 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 01BC84EE0B;
	Wed, 17 Feb 2021 06:50:16 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.rdu2.redhat.com
	[10.11.54.3])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 11H6o7sQ007238 for <blinux-list@listman.util.phx.redhat.com>;
	Wed, 17 Feb 2021 01:50:07 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 4828D1016D80; Wed, 17 Feb 2021 06:50:07 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast06.extmail.prod.ext.rdu2.redhat.com [10.11.55.22])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 43AFF101F0B5
	for <blinux-list@redhat.com>; Wed, 17 Feb 2021 06:50:05 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[207.211.31.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 177FF186E120
	for <blinux-list@redhat.com>; Wed, 17 Feb 2021 06:50:05 +0000 (UTC)
Received: from server2.shellworld.net (server2.shellworld.net
	[66.172.12.120]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-493-FIPM8IxKPZa89eICtv4onA-1; Wed, 17 Feb 2021 01:50:02 -0500
X-MC-Unique: FIPM8IxKPZa89eICtv4onA-1
Received: by server2.shellworld.net (Postfix, from userid 1005)
	id 36362621C3D; Wed, 17 Feb 2021 06:50:01 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
	by server2.shellworld.net (Postfix) with ESMTP id 3577C620227
	for <blinux-list@redhat.com>; Wed, 17 Feb 2021 01:50:01 -0500 (EST)
Date: Wed, 17 Feb 2021 01:50:01 -0500 (EST)
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Is this possible?
Message-ID: <Pine.LNX.4.64.2102170148140.1176343@server2.shellworld.net>
MIME-Version: 1.0
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.3
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
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@listman.redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: listman.redhat.com
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset=WINDOWS-1252; format=flowed

Hi folks,
Is it possible to ssh into a graphical desktop edition of Linux, Ubuntu=20
for example?
Karen


_______________________________________________
Blinux-list mailing list
Blinux-list@listman.redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

