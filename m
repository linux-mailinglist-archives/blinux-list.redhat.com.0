Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [63.128.21.124])
	by mail.lfdr.de (Postfix) with ESMTP id ABAAE330477
	for <lists+blinux-list@lfdr.de>; Sun,  7 Mar 2021 21:23:59 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1615148638;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:list-id:list-help:list-unsubscribe:
	 list-subscribe:list-post; bh=qCes3VWNqn2w9o/CnltVCpfhZB/hUeKcCnSGIM5sOuE=;
	b=hbt+h/NqK12MXWnFPOoIe4hdVXBUXZJ9QLJGEFevp37vG28VtbLAOdbjt0w4efi69vypd3
	/UWdBg8eM2IILEecpa0eZD8sHtzF0vz+akW2Gpkl4PteKi+pWFniAkGfWNBGEaa+WzgZxx
	JfROAU0QAMg/+RaCLSQ3jrFjJCwBGAc=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-282-vl1Ej-AJPVC1Iqcx9MvjCA-1; Sun, 07 Mar 2021 15:23:56 -0500
X-MC-Unique: vl1Ej-AJPVC1Iqcx9MvjCA-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com [10.5.11.15])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 351D018D6A2A;
	Sun,  7 Mar 2021 20:23:52 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 79BBC5D6AD;
	Sun,  7 Mar 2021 20:23:50 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id D84B34BB40;
	Sun,  7 Mar 2021 20:23:46 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.rdu2.redhat.com
	[10.11.54.6])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 127KNaSb025182 for <blinux-list@listman.util.phx.redhat.com>;
	Sun, 7 Mar 2021 15:23:36 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 467C02166BA2; Sun,  7 Mar 2021 20:23:36 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast04.extmail.prod.ext.rdu2.redhat.com [10.11.55.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 405AA2166B2D
	for <blinux-list@redhat.com>; Sun,  7 Mar 2021 20:23:33 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[205.139.110.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id E0503101A52C
	for <blinux-list@redhat.com>; Sun,  7 Mar 2021 20:23:33 +0000 (UTC)
Received: from server2.shellworld.net (server2.shellworld.net
	[66.172.12.120]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-384-Y4O8O4-8PRqVnzfP3AqAEg-1; Sun, 07 Mar 2021 15:23:31 -0500
X-MC-Unique: Y4O8O4-8PRqVnzfP3AqAEg-1
Received: by server2.shellworld.net (Postfix, from userid 1005)
	id E9F6F621D3F; Sun,  7 Mar 2021 20:23:29 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
	by server2.shellworld.net (Postfix) with ESMTP id E6C78620219
	for <blinux-list@redhat.com>; Sun,  7 Mar 2021 15:23:29 -0500 (EST)
Date: Sun, 7 Mar 2021 15:23:29 -0500 (EST)
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Linux Foundation and RISC-V International launch free RISC-V training
	classes | ZDNet (fwd)
Message-ID: <Pine.LNX.4.64.2103071521090.46976@server2.shellworld.net>
MIME-Version: 1.0
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Mimecast-Bulk-Signature: yes
X-Mimecast-Spam-Signature: bulk
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.6
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: MULTIPART/Mixed; BOUNDARY="===============2108718233291442764=="

  This message is in MIME format.  The first part should be readable text,
  while the remaining parts are likely unreadable without MIME-aware tools.
--===============2108718233291442764==
Content-Type: TEXT/PLAIN; charset=US-ASCII; format=flowed

Perhaps of interest to some here.



---------- Forwarded message ----------

https://www.zdnet.com/article/linux-foundation-risc-v-international-launch-free-risc-v-training-classes/

Ivan.
--===============2108718233291442764==
Content-Type: TEXT/PLAIN; CHARSET=utf-8
Content-Transfer-Encoding: BASE64
Content-ID: <Pine.LNX.4.64.2103071521091.46976@server2.shellworld.net>
Content-Description: 
Content-Disposition: INLINE

LS0tClBvc3QgdG8gdGhpcyBtYWlsaW5nIGxpc3QgdGFsa0BndGFsdWcub3JnClVuc3Vic2NyaWJl
IGZyb20gdGhpcyBtYWlsaW5nIGxpc3QgaHR0cHM6Ly9ndGFsdWcub3JnL21haWxtYW4vbGlzdGlu
Zm8vdGFsawo=
--===============2108718233291442764==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list
--===============2108718233291442764==--

