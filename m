Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [216.205.24.124])
	by mail.lfdr.de (Postfix) with ESMTP id EF8EE3ACCDA
	for <lists+blinux-list@lfdr.de>; Fri, 18 Jun 2021 15:55:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1624024546;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=ksFjzFlNyLL4wAGqE+puSLiE1wMYZS2KPd3l6/dgteM=;
	b=ZsAcEfDAffej6ljULLx0c7oXOgxZqWA33W9b2ozZQH9L99h37nR+Nux5oDATSX2PdksQl6
	p552BDyQoQt3s0iNgOaNNYFDauZxNbORlL0BPJDZyBUWpV0cXlxkNEp47b9xjhw3S1/Ufa
	fq/bhP3QoIVDxQt1VgmdBZltEmWegQY=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-427-Zp3DBU4XNsS_VyB9z3_5Dg-1; Fri, 18 Jun 2021 09:55:44 -0400
X-MC-Unique: Zp3DBU4XNsS_VyB9z3_5Dg-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com [10.5.11.16])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 8D5AA1084F53;
	Fri, 18 Jun 2021 13:55:38 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id A987E5C225;
	Fri, 18 Jun 2021 13:55:34 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id C9C8D46F59;
	Fri, 18 Jun 2021 13:55:20 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.rdu2.redhat.com
	[10.11.54.3])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 15IDt9P6005951 for <blinux-list@listman.util.phx.redhat.com>;
	Fri, 18 Jun 2021 09:55:09 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 4612410130F4; Fri, 18 Jun 2021 13:55:09 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast06.extmail.prod.ext.rdu2.redhat.com [10.11.55.22])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 422E611301EC
	for <blinux-list@redhat.com>; Fri, 18 Jun 2021 13:55:05 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [205.139.110.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id C2FC51825068
	for <blinux-list@redhat.com>; Fri, 18 Jun 2021 13:55:05 +0000 (UTC)
Received: from v.cs-x.de (v.cs-x.de [193.30.121.81]) by relay.mimecast.com
	with ESMTP id us-mta-530-jc_OaprWMaONs07BZP1TiA-1; Fri, 18 Jun 2021
	09:55:02 -0400
X-MC-Unique: jc_OaprWMaONs07BZP1TiA-1
Received: from v.cs-x.de (unknown [172.19.7.1])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	key-exchange ECDHE (P-256) server-signature RSA-PSS (4096 bits)
	server-digest SHA256) (Client did not present a certificate)
	by v.cs-x.de (Postfix) with ESMTPS id 6589A1EA507F;
	Fri, 18 Jun 2021 15:47:00 +0200 (CEST)
Date: Fri, 18 Jun 2021 15:46:59 +0200
To: orca-list@gnome.org, blinux-list@redhat.com, brltty@brltty.app,
	debian-accessibility@lists.debian.org
Subject: Bootable linux cd iso image with ssh daemon activated
Message-ID: <YMyj0/v0v3wR0Etb@v.cs-x.de>
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
Content-Disposition: inline
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Hello,

I've created a bootable linux cd ISO image which has ssh enabled and alows 
login as root. I thought this might be also usefull for you, because I was 
searching around the net for such a cd and did not find anything which was 
working out of the box. The ISO can also be written to a USB stick and used 
as bootmedia, but this I have not tested yet.

The ISO is based on the well known SystemRescue CD:

https://www.system-rescue.org

The cd contains many usefull tools for different administrative tasks, see 
here for more infos about the included tools, but the programms which need a 
grafical environment will not be useable:

https://www.system-rescue.org/System-tools/

If a package is missing it can be installed after booting the cd, the whole 
system is based on Arch linux. So it should be possible to also install and 
run brltty for example....

You can download the ISO file with ssh deamon enabled here:

https://download.schoeppi.net/systemrescuecd-custom/

After booting the cd your computer will get a dynamic ip address in your 
network. You can get this address e.g. by scanning your network or via your 
routers webinterface. If you know the address you can connect via ssh with 
the following userdata:

Username: root
Password: geheim

I am using the cd to install new linux machines or as a rescue system for my 
home server or VServers which I am administrating and which are running at a 
provider.

If new versions of the SystemRescue CD will be available I'll update the ISO 
with the enabled ssh daemon on my server to always have the actual versions 
of the tools included on the cd.

If you have questions or ideas regarding the cd just let me know!

Have fun with the ISO, I hope you find the cd also that usefull and 
helpfull as I do ;-).

Ciao,

  Schoepp

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

