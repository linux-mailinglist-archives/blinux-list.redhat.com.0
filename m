Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTP id B4BC53935F9
	for <lists+blinux-list@lfdr.de>; Thu, 27 May 2021 21:10:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1622142613;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=P614cs1ftmhMz2X4WO+TQ++W+VlM2Fe64acsO19iN60=;
	b=S2uEICmjR7dRsI1dHtLQYROx2YRtp+idkPUHIODmJDDlx8sNd+YPAAgSva+5uZEUzQKrgG
	5/AKRJhB5DFWfZ5BQCsZrzYTiVQ4xiXF/t/dOyBAe6UooO8qs0Dt6d1bnnyAQhuy+8YLZV
	KL3pVqe6znqx7QnkUJjDIknZBqYuwtY=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-316-wultfkrMOCaBb8f05nPAxg-1; Thu, 27 May 2021 15:10:10 -0400
X-MC-Unique: wultfkrMOCaBb8f05nPAxg-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com [10.5.11.23])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 9E0C21936B60;
	Thu, 27 May 2021 19:10:06 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 4C5A19935;
	Thu, 27 May 2021 19:10:06 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id ED4901801029;
	Thu, 27 May 2021 19:10:03 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.rdu2.redhat.com
	[10.11.54.3])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 14RJ9tSm018738 for <blinux-list@listman.util.phx.redhat.com>;
	Thu, 27 May 2021 15:09:56 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id A1AC51054FD4; Thu, 27 May 2021 19:09:55 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast03.extmail.prod.ext.rdu2.redhat.com [10.11.55.19])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 9CA3B1065668
	for <blinux-list@redhat.com>; Thu, 27 May 2021 19:09:52 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[207.211.31.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 6AA8780D0E3
	for <blinux-list@redhat.com>; Thu, 27 May 2021 19:09:52 +0000 (UTC)
Received: from gateway12.unifiedlayer.com (gateway12.unifiedlayer.com
	[70.40.207.205]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-495-723uUmUJPJyiwMP7_a9tRQ-1; Thu, 27 May 2021 15:09:35 -0400
X-MC-Unique: 723uUmUJPJyiwMP7_a9tRQ-1
Received: from cm6.websitewelcome.com (unknown [108.167.139.19])
	by gateway12.unifiedlayer.com (Postfix) with ESMTP id A958E200A22C1
	for <blinux-list@redhat.com>; Thu, 27 May 2021 13:46:42 -0500 (CDT)
Received: from uscentral455.accountservergroup.com ([174.136.13.174])
	by cmsmtp with ESMTP
	id mL1mlDee8sMPvmL1mlnNeG; Thu, 27 May 2021 13:46:42 -0500
X-Authority-Reason: nr=8
Received: from 172-0-250-193.lightspeed.rcsntx.sbcglobal.net
	([172.0.250.193]:10582 helo=bigbox.attlocal.net)
	by uscentral455.accountservergroup.com with esmtpsa (TLS1.2) tls
	TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.93)
	(envelope-from <blinux.list@thechases.com>) id 1lmL1m-002osT-Ar
	for blinux-list@redhat.com; Thu, 27 May 2021 13:46:42 -0500
Date: Thu, 27 May 2021 13:46:40 -0500
To: blinux-list@redhat.com
Subject: Re: delay local file system mounting
Message-ID: <20210527134640.48a20862@bigbox.attlocal.net>
In-Reply-To: <20210527.182025.331.1@[192.168.1.100]>
References: <20210527.182025.331.1@[192.168.1.100]>
MIME-Version: 1.0
X-AntiAbuse: This header was added to track abuse,
	please include it with any abuse report
X-AntiAbuse: Primary Hostname - uscentral455.accountservergroup.com
X-AntiAbuse: Original Domain - redhat.com
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - thechases.com
X-BWhitelist: no
X-Source-IP: 172.0.250.193
X-Source-L: No
X-Exim-ID: 1lmL1m-002osT-Ar
X-Source: 
X-Source-Args: 
X-Source-Dir: 
X-Source-Sender: 172-0-250-193.lightspeed.rcsntx.sbcglobal.net
	(bigbox.attlocal.net) [172.0.250.193]:10582
X-Source-Auth: tim@thechases.com
X-Email-Count: 1
X-Source-Cap: dGhlY2hhc2U7dGhlY2hhc2U7dXNjZW50cmFsNDU1LmFjY291bnRzZXJ2ZXJncm91cC5jb20=
X-Local-Domain: yes
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Mimecast-Spam-Signature: yes
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
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Tim here.  The typical way I've heard of doing this is

1) edit your /etc/fstab so that your mount is set to "noauto" rather
than "auto".  This prevents it from automatically mounting and
causing the delay.  Then

2) create a crontab entry to mount it:

  $ sudo crontab -e

and add a line like

  @reboot mount /path/to/raid /mount/where/you/want/your/raid

This will mount the RAID device later in the boot process while still
allowing the rest of the system to boot.  This assumes that the RAID
is to be mounted by root for system-wide access.  If you're mounting
it as a user, you can do it in your ~/.xsession (or your
window-manager's startup script/file such as ~/.fluxbox/startup).

Note that (somewhat obviously) this only works if the boot process
doesn't require anything on that RAID device.

-tim


On May 27, 2021, Linux for blind general discussion wrote:
> I have a raid array that I use for storage, and it takes a while
> for it to be mounted. This causes a delay, sometimes quite
> significant, before the login prompt appears. Is there a way to
> cause a /etc/fstab entry to be delayed? I know I could always mount
> the array manually after login, but I'd rather not if I can avoid
> it.
> 
> 
> _______________________________________________
> Blinux-list mailing list
> Blinux-list@redhat.com
> https://listman.redhat.com/mailman/listinfo/blinux-list
> 

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

